app.config ($stateProvider) ->
  $stateProvider
    .state('home', {
      url: '/'
      templateUrl: '/assets/home.html'
    })
    .state('second', {
      url: '/second'
      templateUrl: '/assets/second.html'
    })