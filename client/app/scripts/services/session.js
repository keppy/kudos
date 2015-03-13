'use strict';

/**
 * @ngdoc service
 * @name kudosApp.session
 * @description
 * # session
 * Service in the kudosApp.
 */
angular.module('kudosApp')
  .service('Session', function Session() {
    this.create = function (personId, accessToken) {
      this.personId = personId;
      this.accessToken = accessToken;
    };

    this.destroy = function () {
      this.personId = null;
      this.accessToken = null;
    };
  });
