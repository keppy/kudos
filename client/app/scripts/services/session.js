'use strict';

/**
 * @ngdoc service
 * @name kudosApp.session
 * @description
 * # session
 * Service in the kudosApp.
 */
angular.module('kudosApp')
  .service('Session', function ($cookieStore) {
    this.create = function (id) {
      $cookieStore.put('id', id);
      this.id = id;
    };

    this.destroy = function () {
      $cookieStore.put('id', '');
      this.id = null;
    };

    this.get = function () {
      $cookieStore.get('id');
    };
  });
