'use strict';

describe('Thermostat', function(){

  var thermostat;

  beforeEach(function(){
    thermostat = new Thermostat();
  });

  it('starts with a default temperature of 20 degrees', function(){
    expect(thermostat.getCurrentTemperature()).toEqual(20);
  });

  it('increases in temperature with the up button', function(){
    thermostat.up();
    expect(thermostat.getCurrentTemperature()).toEqual(21)
  });

  it('decreases in temperature with the down button', function(){
    thermostat.down();
    expect(thermostat.getCurrentTemperature()).toEqual(19)
  });
});
