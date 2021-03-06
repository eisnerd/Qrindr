var app = angular.module('MyQrindr', ['ngRoute', 'ngAnimate', 'ngCookies', 'toastr', 'angular-md5']);

app.config(function ($routeProvider) {
    $routeProvider
        .when('/', {
            controller: 'HomeController', 
            templateUrl: 'views/home.html'
        })
        .when('/play', {
            controller: 'PlayController', 
            templateUrl: 'views/play.html'
        })
        .when('/match/:id/:pwd/:player', {
            controller: 'MatchController', 
            templateUrl: 'views/match.html'
        })
        .when('/match/:id', {
            controller: 'MatchController', 
            templateUrl: 'views/match.html'
        })
        .otherwise({
            redirectTo: '/'
        });
});

app.run(['$rootScope', '$http', '$cookieStore', function($rootScope, $http, $cookieStore) {

    $rootScope.config = {
        'name':       'Qrindr',
        'year':       '2019',
    };

    $rootScope.fuckNavigation = false;
    $rootScope.news = false;

    $rootScope.getSession = function() {
        $http.get('api/session.php')
            .then(function(response) {
                $rootScope.session = response.data;
            }).catch(function(response) {
                console.log('err');
            }
        );
    };
    $rootScope.getSession();

    if ($cookieStore.get('Speakers') == undefined)
        $cookieStore.put('Speakers', true);

    $rootScope.getSpeaker = $cookieStore.get('Speakers');

    $rootScope.setSpeakers = function(theVal) {
        $cookieStore.put('Speakers', theVal);
        $rootScope.getSpeaker = theVal;
    }

}]);
