(function() {
  "use strict";

  angular.module("app").controller("anatomyUsersCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/v1/anatomyUsers.json').then(function(response) {
        $scope.anatomyUsers = response.data;
        console.log($scope.anatomyUsers);
      });
    };

    $scope.addAnatomyUsers = function(inputAnatomyID) {
      var params = {
        anatomy_id: inputAnatomyID
      };
      
      $http.post('/api/v1/anatomyUsers', params).then(function(response) {
        $scope.anatomyUsers.push(response.data);
        console.log("success");
      }, function(error) {
        $scope.errors = error.data.errors;
      });
    };

  });
})();