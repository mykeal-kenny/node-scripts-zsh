'use strict'

const fs = require('fs')
const path = require('path')
const pkgJson = 'package.json'
const scripts = Object.keys(pkgJson)
const testdir = '/Users/fireinjun/Work/yac-desktop'
const currentDir = process.env.PWD
let projRoot


// var obj = JSON.parse(result);
// var keys = Object.keys(obj);
// for (var i = 0; i < keys.length; i++) {
//     console.log(obj[keys[i]]);
// }