
var exec = require('cordova/exec');

module.exports = {
	extractFile : function(file, destination, successCallback, errorCallback){
    	exec(successCallback, errorCallback, "ExtractZipFile", "extract", [file, destination]);
	}
};
