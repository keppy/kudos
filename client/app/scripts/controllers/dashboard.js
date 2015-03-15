'use strict';

/**
 * @ngdoc function
 * @name kudosApp.controller:DashboardCtrl
 * @description
 * # DashboardCtrl
 * Controller of the kudosApp
 */
angular.module('kudosApp')
  .controller('DashboardCtrl', function ($scope, Person, Session, $cookieStore, Kudos, $location) {
    var mePromise = Person.me($cookieStore.get('id'));
    var kudosPromise = Kudos.index($cookieStore.get('id'));
    var peoplePromise = Person.index($cookieStore.get('id'));
    $scope.kudo = {
      kudo: {
        sender_id: null,
        reciever_id: null,
        content: null
      }
    };

    $scope.selectedPerson = null;
    $scope.blankKudo = angular.copy($scope.kudo);

    $scope.createKudo = function(kudo) {
      $scope.kudo.kudo.sender_id = $scope.currentUser.id;
      $scope.kudo.kudo.reciever_id = $scope.selectedPerson.id;

      var kudoPromise = Kudos.create($scope.kudo);
      kudoPromise.then(function (res) {
        --$scope.currentUser.kudos_available;
        $scope.kudo = angular.copy($scope.blankKudo);
      });
    };

    mePromise.then(function (res) {
      $scope.currentUser = res;
    });

    kudosPromise.then(function (res) {
      $scope.kudos = res;
    });

    peoplePromise.then(function (res) {
      $scope.people = res;
    });

    $scope.logOut = function() {
      Session.destroy();
      $location.path('/');
    };
  });
