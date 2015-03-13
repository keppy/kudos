'use strict';

/**
 * @ngdoc service
 * @name kudosApp.person
 * @description
 * # person
 * Factory in the kudosApp.
 */
angular.module('kudosApp')
  .factory('Person', function (BASE_API_URL, $http) {

    var personService = {};

      personService.me = function (id) {
        return $http
          .get(BASE_API_URL + '/people/' + id)
          .then(function (res) {
            return res.data;
          });
    };

    return personService;
  });
