app.controller 'HomeCtrl', ($scope, localStorageService) ->
  $scope.items = localStorageService.get('items') || []
  $scope.newItem = ''

  $scope.$watch 'items', (->
    localStorageService.set('items', $scope.items)
  ), true

  $scope.add = ->
    $scope.items.push($scope.newItem)
    $scope.newItem = ''

  $scope.remove = (item) ->
    $scope.items.splice($scope.items.indexOf(item), 1)