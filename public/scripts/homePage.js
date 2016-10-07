var app = angular.module('diveinapp', []);
app.controller('diveinappc', function($scope, $http) {
	var params = window.location.search;
	if (params.startsWith("?"))
		sp = params.substring(1);
	else
		sp = params;
	var searchParams = new URLSearchParams(sp);
	$scope.authToken = "eyJhbGciOiJBMTI4S1ciLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0.dY4q2h3o4QVybTe5ergjKGHx5WSLgqghFCC-1wPQ0kppw5OmC1iPdQ.n7Cxg5OXhW7UiWivxhR3_w.KzDX9A6I8_gOkWQ9geWwAQ.B4G1GU9ej4kpSkucdTIu2A";
	
    $http.get('https://testapi.dive-in.co/api/v1/event/homePage',
				{headers:{"X-AUTH-TOKEN": $scope.authToken}}).then(
		function(response) {
			if (response.status == 200) {
				$scope.events = response.data;
			}
			else {
				$scope.errorMessage = "error";
			}
        },
		function(failure) {
			$scope.errorMessage = "error";
			$scope.events = JSON.parse("{blah blah}");
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
					$scope.handleFailure(response);
				}
			},
            function (failure) { 
				if (failure.status == 401) {
					// need to log in
					$('#loginModal').modal('show');
				}
				else {
					$scope.handleFailure(failure);
				}
			});
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
					$('#loginModal').modal('show');
				}
				else {
					$scope.handleFailure(failure);
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
				$scope.handleFailure(failure);
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
							$scope.handleFailure(failure);
						});
					 });
			} else {
				 $scope.loginErrorMessage = 'User cancelled login or did not fully authorize.';
			}
		});
	}
	$scope.handleFailure = function(failure) {
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
	}
});