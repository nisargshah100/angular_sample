app.controller 'HomeCtrl', ($scope, localStorageService) ->
  $scope.items = localStorageService.get('items') || []
  $scope.newItem = { name: '' }

  $scope.$watch 'items', (->
    localStorageService.set('items', $scope.items)
  ), true

  $scope.add = ->
    $scope.items.push($scope.newItem) if $scope.items.indexOf($scope.newItem) == -1 && $scope.newItem.name != ''
    $scope.newItem = { name: '' }

  $scope.sortAlpha = ->
    $scope.items = _.sortBy($scope.items, (x) -> x.name)

  $scope.sortAlphaDesc = ->
    $scope.items = _.sortBy($scope.items, (x) -> x.name).reverse()

  $scope.remove = (item) ->
    $scope.items.splice($scope.items.indexOf(item), 1)

  $scope.logItems = ->
    console.log $scope.items