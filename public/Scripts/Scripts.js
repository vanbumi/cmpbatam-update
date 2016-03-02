// Create Module
var myApp = angular.module("myModule", []);

// Create Controller
myApp.controller("myController", function($scope, $http) {
	$scope.message = "Angular is ON!";

	$http.get('/admin/properties.json')
		.then(function(response) {
			$scope.properties = response.data;
		});

	$scope.myDataSource = {
		chart: {
			caption: "Age profile of website visitors",
			subcaption: "Last Year",
			startingangle: "120",
			showlabels: "0",
			showlegend: "1",
			enablemultislicing: "0",
			slicingdistance: "15",
			showpercentvalues: "1",
			showpercentintooltip: "0",
			plottooltext: "Age group : $label Total visit : $datavalue",
			theme: "fint"
		},
		data: [
			{
				label: "Teenage",
				value: "1250400"
			},
			{
				label: "Adult",
				value: "1463300"
			},
			{
				label: "Mid-age",
				value: "1050700"
			},
			{
				label: "Senior",
				value: "491000"
			}
		]
	}

}); 