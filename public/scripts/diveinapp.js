var app = angular.module('diveinapp', []);
app.controller('diveinappc', function($scope, $http) {
	var params = window.location.search;
	if (params.startsWith("?"))
		sp = params.substring(1);
	else
		sp = params;
	var searchParams = new URLSearchParams(sp);
	var eventKey = searchParams.get("eventId");
	$scope.eventId = undefined;
	$scope.attending = false;
	$scope.changeDisabled = true;
	$scope.authToken = undefined;
	$scope.event = {};
	$scope.event.eventDescription = 'Loading...';
	
	$scope.states = {
		"IS":  // Invitation Sent by host (the person who is conducting event), for public / discoverable / private events (End Action (EA): Host)
				{desc: "You've been invited", attending: false, changeEnabled: true,  changeText: "I'm in", newState: "RJ" },
		"IR":  // Invitation Rejected by guest (the person to whom invitation was sent), for public / discoverable / private events (EA: Guest)
				{desc: "You've declined", attending: false, changeEnabled: true,  changeText: "I'm back in", newState: "RJ" },
		"IC":  // Invitation Cancelled by host, for public / discoverable / private events (EA: Host)
				{desc: "You've been cancelled", attending: false, changeEnabled: false,  changeText: "I'm in", newState: "RJ" },
		"RJ":  // Request made by guest (the person who requested to join), for discoverable events (EA: Guest)
				{desc: "You've requested to join", attending: true, changeEnabled: true,  changeText: "I'm out", newState: "RC" },
		"RR":  // Rejected by host, for discoverable events (EA: Host)
				{desc: "Your request has been declined", attending: false, changeEnabled: false,  changeText: "I'm in", newState: "RR" },
		"RC":  // Cancelled by guest, for discoverable events (EA: Guest)
				{desc: "You already declined.", attending: false, changeEnabled: true,  changeText: "I'm back in", newState: "RJ" },
		"GJ":  // Guest Joined, for public / discoverable / private event (EA: Guest)
				{desc: "You already joined", attending: true, changeEnabled: true,  changeText: "I'm out", newState: "GR" },
		"GR":  // Rejected by host after joining, for public / discoverable / private event (EA: Host)
				{desc: "Your request was declined by the host", attending: false, changeEnabled: false,  changeText: "I'm in", newState: "GR" },
		"GC":  // Cancelled by guest after joining event, for public / discoverable / private (EA: Guest)
				{desc: "You declined", changeEnabled: true,  attending: false, changeText: "I'm back in", newState: "GJ" },
		"GA":  // Guest attended the event, for public / discoverable / private event (EA: Host)
				{desc: "You attended", changeEnabled: false,  attending: false, changeText: "I'm in", newState: "GA" },
		"GN":  // Guest did not attend the event, for public / discoverable / private event (EA: Host)
				{desc: "You did not attend", attending: false, changeEnabled: false,  changeText: "I'm in", newState: "GN" },
		"WL":  // Guest on wait list, for public / discoverable / private event (EA: Guest)
				{desc: "You're on the waitlist", attending: true, changeEnabled: true,  changeText: "I'm out", newState: "GC" },
		"other":  // other unknown state
				{desc: "", attending: false, changeEnabled: true,  changeText: "I'm in", newState: "RJ" }
	}
	
	// define how to handle loading failures before we actually load.
	$scope.handleLoadingFailure = function(failure) {
		var data = failure["data"];
		var m;
		if (data) {
			var msg = data["message"];
			if (msg)
				m = msg;
			else
				m = failure["statusText"];
		}
		else {
			m = failure["statusText"];
		}
		$scope.errorMessage = "There was an error while loading this screen.  Please try again shortly.  "+m;
		var imageUrl = '../img/errorbanner.jpg';

		$("#pageHeader").css({
			"background-image": "linear-gradient(to bottom, rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)), url("+imageUrl+")"
		});
	}
	
	// now attempt to load the page contents.
    $http.get('https://testapi.dive-in.co/api/v1/event/invite/'+eventKey).then(
		function(response) {
			if (response.status == 200) {
				$scope.eventId = response.data.data.eventId;
				$scope.event = response.data.data;
				
				// fix date formatting from '1999-10-10 12:00:00' to '1999-10-10T12:00:00' if necessary
				var evDate = $scope.event.eventDate;
				if (evDate.includes(' ')) {
					evDate = evDate.replace(' ','T');
				}
				$scope.event.eventDate = evDate;
				
				var state = response.data.data.userEventStatus;
				if ($scope.states[state]===undefined)
					state = "other";
				$scope.attending = $scope.states[state].attending;
				$scope.message = $scope.states[state].desc;
				$scope.changeDisabled = !$scope.states[state].changeEnabled;
				
				var imageUrl;
				var thumbnailUrl;
				if (response.data.data.eventType == 'ORGANIZATION') {
					imageUrl = response.data.data.venueImageURL;
					$scope.hostName = response.data.data.orgName;
					thumbnailUrl = response.data.data.orgLogoUrl;
				}
				else {
					imageUrl = response.data.data.venueImageURL;
					$scope.hostName = response.data.data.hostName;
					thumbnailUrl = response.data.data.hostDisplayPic;
				}
				$("#pageHeader").css({
					"background-image": "linear-gradient(to bottom, rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)), url("+imageUrl+")"
				});
				if (thumbnailUrl !== '')
					$("#hostThumbnail").attr("src", thumbnailUrl);
			}
			else {
				$scope.event = {};
				$scope.handleLoadingFailure(response.data);
			}
        },
		function(failure) {
			$scope.event = {};
			$scope.handleLoadingFailure(failure);
		});
	// toggle whether we will attend
	$scope.attend = function() {
		var state = $scope.event.userEventStatus;
		if ($scope.states[state]===undefined)
			state = "other";
		var newState = $scope.states[state].newState;
		if (!$scope.states[state].changeEnabled) {
			$scope.errorMessage = "Can't change the event status."
			return;
		}
		
		$scope.message = 'Requesting...';
		
		$http.post('https://testapi.dive-in.co/api/v1/event/guest', 
				{eventId: $scope.eventId, opr: "Guest", eventUserStatus: newState },
				{headers:{"X-AUTH-TOKEN": $scope.authToken}}).then(
            function (response) { 
				if (response.data.status === 'success') {
					var newState = response.data.data.guestEventStatus;
					if ($scope.states[state]===undefined)
						newState = "other";
					$scope.event.userEventStatus = newState;
					$scope.attending = $scope.states[newState].attending;
					$scope.message = response.data.message;
					$scope.changeDisabled = !$scope.states[newState].changeEnabled;
				}
				else {
					$scope.handleLoginFailure(response);
				}
			},
            function (failure) { 
				if (failure.status == 401) {
					$scope.message = '';
					//  need to register
					$scope.showRegister();

					// need to log in
//					$scope.showLogin();
				}
				else {
					$scope.handleLoginFailure(failure);
				}
			});
	};
	$scope.showRegister = function() {
		$('#loginModal').modal('hide');
		$('#registerModal').modal('show');
	};
	$scope.showLogin = function() {
		$('#registerModal').modal('hide');
		$('#loginModal').modal('show');
	};
	$scope.login = function(username,password) {
		$http.post('https://testapi.dive-in.co/api/v1/user/login', {"login_type":"APP",username: username, password: password}).then(
            function (response) { 
				$scope.authToken = response.data.authToken;
				$('#loginModal').modal('hide');
				$scope.attend();
			},
            function (failure) { 
				if (failure.status == 401) {
					// login failed
					$scope.loginErrorMessage = failure;
					$scope.showLogin();
				}
				else {
					$scope.handleLoginFailure(failure);
				}
			});
	};
	$scope.register = function(username,password) {
		$http.post('https://testapi.dive-in.co/api/v1/user/signup', {username: username, password: password}).then(
            function (response) { 
				$scope.authToken = response.data.authToken;
				$('#registerModal').modal('hide');
				$scope.attend();
			},
            function (failure) { 
				$scope.handleLoginFailure(failure);
			});
	}
	$scope.loginfb = function() {
		$scope.dofblogin(true);
	}
	$scope.registerfb = function() {
		$scope.dofblogin(false);
	}
	$scope.dofblogin = function(willAttend) {
		FB.login(function(response){
			var fbToken = response.authResponse.accessToken;
		    if (response.authResponse) {
				FB.api('/me', {fields: "id, gender, picture, last_name, birthday, first_name"},
					function(response) {
					var info = {
						 "gender": response.gender,
						 "fb_id": response.id,
						 "login_type":"FB",
						 "profile_photo": response.picture.data.url,
						 "fb_token": fbToken,
						 "last_name": response.last_name,
						 "birthday": response.birthday,
						 "first_name": response.first_name
					};
					
					$http.post('https://testapi.dive-in.co/api/v1/user/login', info).then(
						function (response) { 
							$scope.authToken = response.data.authToken;
							$('#loginModal').modal('hide');
							$('#registerModal').modal('hide');
							if (willAttend) {
								$scope.attend();
							}
						},
						function (failure) { 
							$scope.handleLoginFailure(failure);
						});
					 });
			} else {
				 $scope.loginErrorMessage = 'User cancelled login or did not fully authorize.';
			}
		});
	}
	$scope.handleLoginFailure = function(failure) {
		var data = failure["data"];
		var m;
		if (data) {
			var msg = data["message"];
			if (msg)
				m = msg;
			else
				m = failure["statusText"];
		}
		else {
			m = 'There was a problem logging in.  '+failure["statusText"];
		}
		$scope.loginErrorMessage = m;
		$scope.message = m;
		$scope.errorMessage = m;
	}
});