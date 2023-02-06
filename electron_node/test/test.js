//var addon=require("../lib/binding.js");
const addon = require('../build/Release/addon');


var result = addon.Method();

console.log(result); // 30