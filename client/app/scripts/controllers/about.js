'use strict';

/**
 * @ngdoc function
 * @name kudosApp.controller:AboutCtrl
 * @description
 * # AboutCtrl
 * Controller of the kudosApp
 */
angular.module('kudosApp')
  .controller('AboutCtrl', function ($scope) {
    $scope.awesomeThings = [
      'HTML5 Boilerplate',
      'AngularJS',
      'Karma'
    ];
  });
