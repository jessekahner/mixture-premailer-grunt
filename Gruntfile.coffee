module.exports = (grunt) ->
	"use strict"
	path = require("path")
	require("load-grunt-config") grunt
	grunt.initConfig
	pkg:
		grunt.file.readJSON("package.json"),
		meta:
			banner: ""

	return;