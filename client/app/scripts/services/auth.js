'use strict';

/**
 * @ngdoc service
 * @name kudosApp.auth
 * @description
 * # auth
 * Factory in the kudosApp.
 */
angular.module('kudosApp')
  .factory('AuthService', function ($http, Session, BASE_API_URL) {
    var authService = {};

    authService.login = function (credentials) {
      return $http
        .post(BASE_API_URL + '/create', credentials)
        .then(function (res) {
          Session.create(res.data.id);
          return res.data;
        });
    };

    authService.isAuthenticated = function () {
      return !!Session.id;
    };

    return authService;

  });
