(function() {
  "use strict";

  angular.module("app").controller("anatomiesCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/v1/anatomies.json').then(function(response) {
        $scope.anatomies = response.data;
        console.log($scope.anatomies);
      });


      $scope.class = "red";
      $scope.changeClass = function() {
        if ($scope.class === "red") {
          $scope.class = "blue";
        } else {
          $scope.class = "red";
        }
      };
    };

    $scope.addAnatomyUsers = function() {
      var selectedAnatomies = $scope.anatomies.filter(function(anatomy) {
        return anatomy.selected;
      });
      console.log(selectedAnatomies);

      var params = {
        anatomy_ids: selectedAnatomies.map(function(anatomy) {
          return anatomy.id;
        })
      };
      console.log('params', params);
      $http.post('/api/v1/anatomy_users', params).then(function(response) {
        // $scope.anatomyUsers.push(response.data);
        console.log("success");
        window.location = "/sequences";
      }, function(error) {
        $scope.errors = error.data.errors;
      });

      // for (var i = 0; i < selectedAnatomies.length; i++) {
      //   var params = {
      //     anatomy_id: selectedAnatomies[i].id
      //   };
        
      //   $http.post('/api/v1/anatomy_users', params).then(function(response) {
      //     // $scope.anatomyUsers.push(response.data);
      //     console.log("success");
      //   }, function(error) {
      //     $scope.errors = error.data.errors;
      //   });
      // }
    };

  });
})();