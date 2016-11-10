var app = angular.module('diveinapp', ['ui.bootstrap']);
app.controller('diveinappc', ["$scope", "$filter", "$http", function($scope, $filter, $http) {

	eventKey = new URI().search(true).eventId;
	$scope.eventId = undefined;
	$scope.attending = false;
	$scope.changeText = "Join";
	$scope.changeDisabled = true;
	$scope.authToken = undefined;
	$scope.event = {};
	$scope.event.eventDescription = 'Loading...';
	$scope.isMobile = (/iPad|iPhone|iPod/.test(navigator.userAgent) && !window.MSStream);
	$scope.attendPending = false;
	$scope.messageIsOpen = false;
	
	// date picker initialization
    $scope.dateOptions = {
        maxDate: new Date(),
        minDate: new Date(1900,1,1),
        startingDay: 0,  // US standard
	    datepickerMode: 'year',
        yearRows: 6,
	    initDate: new Date(),
	    showWeeks: false
    };
    $scope.datePicker = {
        opened: false
    };
    $scope.openDatePicker = function() {
        $scope.datePicker.opened = true;
    };
    $scope.inputDOB = undefined;
  
    // event state table
	$scope.states = {
		"IS":  // Invitation Sent by host (the person who is conducting event), for public / discoverable / private events (End Action (EA): Host)
				{desc: "You've been invited", attending: false, changeEnabled: true,  changeText: "Join", newState: "RJ" },
		"IR":  // Invitation Rejected by guest (the person to whom invitation was sent), for public / discoverable / private events (EA: Guest)
				{desc: "You've declined", attending: false, changeEnabled: true,  changeText: "Join", newState: "RJ" },
		"IC":  // Invitation Cancelled by host, for public / discoverable / private events (EA: Host)
				{desc: "You've been cancelled", attending: false, changeEnabled: false,  changeText: "Join", newState: "RJ" },
		"RJ":  // Request made by guest (the person who requested to join), for discoverable events (EA: Guest)
				{desc: "You've requested to join", attending: true, changeEnabled: true,  changeText: "Cancel", newState: "RC" },
		"RR":  // Rejected by host, for discoverable events (EA: Host)
				{desc: "Your request has been declined", attending: false, changeEnabled: false,  changeText: "Request to Join", newState: "RR" },
		"RC":  // Cancelled by guest, for discoverable events (EA: Guest)
				{desc: "You already declined.", attending: false, changeEnabled: true,  changeText: "Request to Join", newState: "RJ" },
		"GJ":  // Guest Joined, for public / discoverable / private event (EA: Guest)
				{desc: "You already joined", attending: true, changeEnabled: true,  changeText: "Cancel", newState: "GC" },
		"GR":  // Rejected by host after joining, for public / discoverable / private event (EA: Host)
				{desc: "Your request was declined by the host", attending: false, changeEnabled: false,  changeText: "Join", newState: "GR" },
		"GC":  // Cancelled by guest after joining event, for public / discoverable / private (EA: Guest)
				{desc: "You declined", changeEnabled: true,  attending: false, changeText: "Join", newState: "GJ" },
		"GA":  // Guest attended the event, for public / discoverable / private event (EA: Host)
				{desc: "You attended", changeEnabled: false,  attending: false, changeText: "Join", newState: "GA" },
		"GN":  // Guest did not attend the event, for public / discoverable / private event (EA: Host)
				{desc: "You did not attend", attending: false, changeEnabled: false,  changeText: "Join", newState: "GN" },
		"WL":  // Guest on wait list, for public / discoverable / private event (EA: Guest)
				{desc: "You're on the waitlist", attending: true, changeEnabled: true,  changeText: "Cancel", newState: "GC" },
		"other":  // other unknown state
				{desc: "", attending: false, changeEnabled: true,  changeText: "Request to Join", newState: "RJ" },
		"public":  // public, not joined state
				{desc: "", attending: false, changeEnabled: true,  changeText: "Join", newState: "GJ" }				
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
	
	$scope.showMessage = function(msg) {
		$scope.message = msg;
		$scope.messageIsOpen = (msg != '');
		$('#messageBar').show();
		setTimeout(function () {
			$scope.hideMessage();
		}, 2000);
	}
	$scope.hideMessage = function() {
		$scope.message = '';
		$scope.messageIsOpen = false;
		$('#messageBar').hide();
	}
	
	// toggle whether we will attend
	$scope.attend = function() {
		$scope.attendPending = false;
		var state = $scope.event.userEventStatus;
		if (state=="" || $scope.states[state]===undefined) {
			if ($scope.event.privacyLevel == "Public")
				state = "public"; // anyone can join
			else
				state = "other";  // must request to join
		}
		var newState = $scope.states[state].newState;
		if (!$scope.states[state].changeEnabled) {
			$scope.showMessage("Can't change the event status.");
			return;
		}
		
		$scope.showMessage('Requesting...');
		
		$http.post('https://demo.dive-in.co/api/v1/event/guest', 
				{eventId: $scope.eventId, opr: "Guest", eventUserStatus: newState },
				{headers:{"X-AUTH-TOKEN": $scope.authToken}}).then(
            function (response) { 
				if (response.data.status === 'success') {
					var newState = response.data.data.guestEventStatus;
					if ($scope.states[state]===undefined)
						newState = "other";
					$scope.event.userEventStatus = newState;
					$scope.attending = $scope.states[newState].attending;
					$scope.showMessage(response.data.message);
					$scope.changeDisabled = !$scope.states[newState].changeEnabled;
					$scope.attendPending = false;
				}
				else {
					$scope.handleLoginFailure(response);
				}
			},
            function (failure) { 
				if (failure.status == 401) {
					$scope.hideMessage();
					$scope.attendPending = true;
					// need to register or login
					$scope.showRegister();
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
	$scope.loadDetails = function(next, tryLogin) {
		$http.get('https://demo.dive-in.co/api/v1/event/details?eventId='+$scope.event.eventId,
				{headers:{"X-AUTH-TOKEN": $scope.authToken}}).then(
            function (response) { 
				if (response.data.status === 'success') {
					var newState = response.data.data.userEventStatus;
					if (newState == "" || newState == undefined) {
						newState = "other";
					}
//					$scope.event.userEventStatus = newState;
					$scope.attending = $scope.states[newState].attending;
					$scope.showMessage($scope.states[newState].desc);
					$scope.changeDisabled = !$scope.states[newState].changeEnabled;
					$scope.changeText = $scope.states[newState].changeText;
					
					if (next) {
						next();
					}
				}
				else {
					$scope.handleLoginFailure(response);
				}
			},
            function (failure) { 
				if (failure.status == 401) {
					if (tryLogin) {
						$scope.hideMessage();

						// need to log in
						$scope.showLogin();
					}
				}
				else {
					$scope.handleLoginFailure(failure);
				}
			});
	}
	$scope.login = function(username,password) {
		$http.post('https://demo.dive-in.co/api/v1/user/login', {"login_type":"APP",username: username, password: password}).then(
            function (response) { 
				$scope.authToken = response.data.authToken;
				$('#loginModal').modal('hide');
				
				// clear error messages if there were any
				$scope.loginErrorMessage = "";
				$scope.message = "";
				$scope.errorMessage = "";					
				
				// reload the user's event details, then re-execute the attend() if necessary
				$scope.loadDetails(function() {
					if ($scope.attendPending)
						$scope.attend();
				}, true);
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
	$scope.register = function(firstname,lastname,dob,username,password) {					
		// clear error messages if there were any
		$scope.loginErrorMessage = "";
		$scope.message = "";
		$scope.errorMessage = "";
		
		$http.post('https://demo.dive-in.co/api/v1/user/signup', {username: username, password: password}).then(
            function (response) { 
				if (response.data.status == 'success') {
					$scope.authToken = response.data.authToken;
					$('#registerModal').modal('hide');
					
					$http.post('https://demo.dive-in.co/api/v1/user/update', 
						{
							firstName: firstname, 
							lastName: lastname, 
							zip: response.data.data.zip,
							sex: response.data.data.sex,
							dob: $filter('date')(dob, 'dd-MM-yyyy'),   // API requires dd-MM-yyyy format
							email: response.data.data.email,
							aboutMe: response.data.data.aboutMe
						},
						{headers:{"X-AUTH-TOKEN": $scope.authToken}}
					).then(function (response) {
						if (response.data.status == 'success') {
							// re-execute the attend() if necessary
							if ($scope.attendPending) {
								$scope.attend();
							}
						}
						else {
							var m = response.data.message;
							$scope.loginErrorMessage = m;
							$scope.showMessage(m);
							$scope.errorMessage = m;
						}
					},
					function (failure) { 
						$scope.handleLoginFailure(failure);
					});
				}
				else {
					var m = response.data.message;
					$scope.loginErrorMessage = m;
					$scope.showMessage(m);
					$scope.errorMessage = m;
				}
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
					
					$http.post('https://demo.dive-in.co/api/v1/user/login', info).then(
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
		$scope.showMessage(m);
		$scope.errorMessage = m;
	}
	
	// attempt to load the page contents.
	// execute next if it works
	$scope.loadEvent = function(eventKey, next) {
		$http.get('https://demo.dive-in.co/api/v1/event/invite/'+eventKey).then(function(response) {
			if (response.status == 200) {
				$scope.eventId = response.data.data.eventId;
				$scope.event = response.data.data;
				
				// fix date formatting from '1999-10-10 12:00:00' to '1999-10-10T12:00:00Z' if necessary
				var evDate = $scope.event.eventDate;
				if (evDate.includes(' ')) {
					evDate = evDate.replace(' ','T');
				}
				// parse the date as if it's UTC, not local time.  The server sends us UTC dates.  
				// In the HTML, we format the date for display based on browser local time.
				if (!evDate.endsWith('Z')) {
					evDate = evDate+'Z';
				}
				$scope.event.eventDate = evDate;
				
				var state = response.data.data.userEventStatus;
				if (state=="" || $scope.states[state]===undefined) {
					if (response.data.data.privacyLevel == "Public")
						state = "public"; // anyone can join
					else
						state = "other";  // must request to join
				}
				$scope.attending = $scope.states[state].attending;
				$scope.showMessage($scope.states[state].desc);
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
				
				if (next) {
					next();
				}
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
	}
	
	// try to load the event.  then load the user info (if user is logged in), but don't fail if can't load details because the user isn't logged in.
	$scope.loadEvent(eventKey, function() { 
//		$scope.loadDetails(undefined, false); 
		});
}]);