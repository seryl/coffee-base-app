// Generated by CoffeeScript 1.3.3
(function() {
  var Logger, Singleton, log4js,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  Singleton = require('./singleton');

  log4js = require('log4js');

  /**
   * Logging class that acts as a singleton.
  */


  Logger = (function(_super) {

    __extends(Logger, _super);

    /**
     * At some point we're going to want to allow appenders here.
    */


    function Logger() {
      this.createProxyObject = __bind(this.createProxyObject, this);

      this.createProxyFunction = __bind(this.createProxyFunction, this);

      var k, v, _ref;
      this.logger = log4js.getLogger();
      _ref = this.logger;
      for (k in _ref) {
        v = _ref[k];
        if (typeof v === 'function') {
          this[k] = this.createProxyFunction(k);
        } else {
          this[k] = this.createProxyObject(k);
        }
      }
    }

    Logger.prototype.createProxyFunction = function(funcname) {
      var realfunc;
      realfunc = this.logger[funcname];
      return realfunc.apply(this.logger, arguments);
    };

    Logger.prototype.createProxyObject = function(obj) {
      var _this = this;
      return function() {
        return _this.logger.level;
      };
    };

    return Logger;

  })(Singleton);

  module.exports = Logger;

}).call(this);