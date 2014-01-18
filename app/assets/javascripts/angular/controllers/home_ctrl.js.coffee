app.controller 'HomeCtrl', ($scope, localStorageService) ->
  $scope.items = localStorageService.get('items') || []
  $scope.newItem = ''

  $scope.$watch 'items', (->
    localStorageService.set('items', $scope.items)
  ), true

  $scope.add = ->
    $scope.items.push($scope.newItem) if $scope.items.indexOf($scope.newItem) == -1
    $scope.newItem = ''

  $scope.remove = (item) ->
    $scope.items.splice($scope.items.indexOf(item), 1)