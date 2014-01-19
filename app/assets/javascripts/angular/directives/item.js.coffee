app.directive 'item', ->
  {
    restrict: 'E'
    scope: {
      value: '='
    }
    transclude: true
    template: "
      <li ng-show='!isEdit' ng-dblclick='edit()'>{{value.name}} <span ng-transclude></span></li>
      <li ng-show='isEdit'><input type='text' ng-model='value.name' autofocus='true' ng-enter='save()' /> <span ng-transclude></span></li>
    "
    controller: ($scope) ->
      $scope.isEdit = false
      
      $scope.edit = ->
        $scope.isEdit = true

      $scope.save = ->
        $scope.isEdit = false
  }