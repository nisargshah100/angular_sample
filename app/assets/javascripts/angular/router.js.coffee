angular_template_path = (page) -> "/assets/angular/templates/#{page}.html"

app.config ($stateProvider) ->
  $stateProvider
    .state('home', {
      url: '/'
      templateUrl: angular_template_path('foo')
    })
    .state('second', {
      url: '/second'
      templateUrl: angular_template_path('foo2')
    })