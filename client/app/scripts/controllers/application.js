'use strict';

/**
 * @ngdoc function
 * @name kudosApp.controller:ApplicationCtrl
 * @description
 * # ApplicationCtrl
 * Controller of the kudosApp
 */
angular.module('kudosApp')
  .controller('ApplicationCtrl', function ($scope, AuthService) {

    $scope.currentUser = null;

    $scope.setCurrentUser = function (user) {
      $scope.currentUser = user;
    };
  });
