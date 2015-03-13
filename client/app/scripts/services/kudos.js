'use strict';

/**
 * @ngdoc service
 * @name kudosApp.Kudos
 * @description
 * # Kudos
 * Factory in the kudosApp.
 */
angular.module('kudosApp')
  .factory('Kudos', function ($http, BASE_API_URL) {
 
    var kudosService = {};

      kudosService.index = function (id) {
        return $http
          .get(BASE_API_URL + '/kudos/' + id)
          .then(function (res) {
            return res.data;
          });
    };

    return kudosService;
  });
