app.controller 'HomeCtrl', ($scope) ->
  $scope.items = ['first', 'second', 'third']

  $scope.add = ->
    $scope.items.push($scope.newItem)
    $scope.newItem = ''

  $scope.remove = (item) ->
    $scope.items.splice($scope.items.indexOf(item), 1)