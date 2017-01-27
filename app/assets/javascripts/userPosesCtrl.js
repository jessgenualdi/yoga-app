(function() {
  "use strict";

  angular.module("app").controller("userPosesCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get('userPoses.all').then(function(response) {
        $scope.userPoses = response.data;
        console.log($scope.userPoses);
      });
    };

    // $scope.addUserPoses = function(inputPoseID) {
    //   var params = {
    //     pose_id: inputPoseID
    //   };
      
    //   $http.post('/user_poses', params).then(function(response) {
    //     $scope.userPoses.push(response.data);
    //     console.log("success");
    //   }, function(error) {
    //     $scope.errors = error.data.errors;
    //   });
    // };

  });
})();