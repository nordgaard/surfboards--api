(function () {
  "use strict";
  angular.module("app").controller("surfboardCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get('/api/v1/surfboards.json').then(function(response) {
        $scope.surfboards = response.data;
      });
    }

    $scope.addSurfboard = function(name, feet, inches, color) {
      var surfboard = {name: name, feet: feet, inches: inches, color: color}
      $http.post('api/v1/surfboards.json', surfboard).then(function(response) {
        $scope.surfboards.push(response.data);
      }, function(error) {
       $scope.errors = error.data.errors;
     });
    }

    $scope.deleteSurfboard = function(surfboard) {
      $http.delete('api/v1/surfboards/' + surfboard.id + '.json').then(function(response) {
        var index = $scope.surfboards.indexOf(surfboard);
        $scope.surfboards.splice(index, 1);
     });
    }
    window.$scope = $scope;
  });
})();