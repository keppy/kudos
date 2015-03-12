'use strict';

/**
 * @ngdoc function
 * @name kudosApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the kudosApp
 */
angular.module('kudosApp')
  .controller('MainCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
