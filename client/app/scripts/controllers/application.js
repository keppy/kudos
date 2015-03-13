'use strict';

/**
 * @ngdoc function
 * @name kudosApp.controller:ApplicationCtrl
 * @description
 * # ApplicationCtrl
 * Controller of the kudosApp
 */
angular.module('kudosApp')
  .controller('ApplicationCtrl', function ($scope, $rootScope) {

    $scope.setCurrentUser = function (user) {
      $rootScope.currentUser = user;
    };
  });
