var exec = require('cordova/exec');

exports.check = function (success, error, arg0) {
    exec(success, error, 'equeoCheckLowPowerMode', 'check', [arg0]);
};
