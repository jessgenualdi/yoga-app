(function() {
  "use strict";

  angular.module("app").controller("anatomiesCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get('/api/v1/anatomies.json').then(function(response) {
        $scope.anatomies = response.data;
        console.log($scope.anatomies);
      });
    };


    $scope.select = function($event, name) {
      console.log(name);
      var selectedAnatomy = $scope.anatomies.filter(function(anatomy) {
        return anatomy.anatomy_name === name;
      })[0];
      if (selectedAnatomy) {
        console.log(selectedAnatomy);
        if (selectedAnatomy.selected) {
          selectedAnatomy.selected = false;
          $(event.currentTarget).removeClass('selected');
        } else {
          selectedAnatomy.selected = true;
          $(event.currentTarget).addClass('selected');
        }
      }
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