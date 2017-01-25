/* global angular */
(function() {
  angular.module('app').controller('pagesCtrl', function($scope) {
    $scope.message = "hello";
    $scope.anatomies = [
      {anatomy_name: "Shoulders"},
      {anatomy_name: "Abs"},
      {anatomy_name: "Ankles"},
      {anatomy_name: "Arms"},
      {anatomy_name: "Back"},
      {anatomy_name: "Belly"},
      {anatomy_name: "Bladder"},
      {anatomy_name: "Chest"},
      {anatomy_name: "Feet"},
      {anatomy_name: "Glutes"},
      {anatomy_name: "Hamstrings"},
      {anatomy_name: "Hands"},
      {anatomy_name: "Heart"},
      {anatomy_name: "Hip Flexors"},
      {anatomy_name: "Hips"},
      {anatomy_name: "Knees"},
      {anatomy_name: "Legs"},
      {anatomy_name: "Lower Back"},
      {anatomy_name: "Lungs"},
      {anatomy_name: "Neck"},
      {anatomy_name: "Spine"},
      {anatomy_name: "Thighs"}
    ];

    $scope.select = function($event, name) {
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
  });
})();
