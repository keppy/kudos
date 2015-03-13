'use strict';

describe('Service: Kudos', function () {

  // load the service's module
  beforeEach(module('kudosApp'));

  // instantiate service
  var Kudos;
  beforeEach(inject(function (_Kudos_) {
    Kudos = _Kudos_;
  }));

  it('should do something', function () {
    expect(!!Kudos).toBe(true);
  });

});
