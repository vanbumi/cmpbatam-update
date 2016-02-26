// Create Module
var myApp = angular.module("myModule", []);

// Create Controller
myApp.controller("myController", function($scope, $http) {
	$scope.message = "Angular is ON!";

	$http.get('/admin/properties.json')
		.then(function(response) {
			$scope.properties = response.data;
		});
}); 