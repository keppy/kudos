'use strict';

/**
 * @ngdoc function
 * @name kudosApp.controller:DashboardCtrl
 * @description
 * # DashboardCtrl
 * Controller of the kudosApp
 */
angular.module('kudosApp')
  .controller('DashboardCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
