'use strict';

/**
 * @ngdoc function
 * @name kudosApp.controller:LoginCtrl
 * @description
 * # LoginCtrl
 * Controller of the kudosApp
 */
angular.module('kudosApp')
  .controller('LoginCtrl', function ($scope, $rootScope, AUTH_EVENTS, AuthService, $location, Session) {
    $scope.credentials = {
      person: {
        email: '',
        password: ''
      }
    };

    $scope.login = function (credentials) {
      AuthService.login(credentials).then(function (user) {
        $rootScope.$broadcast(AUTH_EVENTS.loginSuccess);
        Session.create(user.id);
        $location.path('/dashboard');
      }, function () {
        $rootScope.$broadcast(AUTH_EVENTS.loginFailed);
      });
    };
  });
