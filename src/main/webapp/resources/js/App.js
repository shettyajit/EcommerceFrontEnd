//search for products 

var app = angular
		.module("prodapp", [])
		.controller(
				'myprodController',
				function($scope, $http) {
					alert('Yash');
					$scope.listProduct = function() {
						alert('before contol call');
						$http.get('http://localhost:8080/EcommereceFrontEnd/listproductsjson').success(function(data) {
									alert('after contol call');
									$scope.products = data;
									console.log(data);
									alert('after contol call1');
								})

					}

				})