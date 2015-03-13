'use strict';

/**
 * @ngdoc function
 * @name kudosApp.controller:DashboardCtrl
 * @description
 * # DashboardCtrl
 * Controller of the kudosApp
 */
angular.module('kudosApp')
  .controller('DashboardCtrl', function ($scope, Person, Session, $cookieStore, Kudos) {
    var promise = Person.me($cookieStore.get('id'));
    promise.then(function (res) {
      $scope.currentUser = res;
    });

    var kudosPromise = Kudos.index($cookieStore.get('id'));
    kudosPromise.then(function (res) {
      $scope.kudos = res;
    });
  });
