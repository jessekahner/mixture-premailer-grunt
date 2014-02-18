module.exports = (grunt) ->
	"use strict"
	path = require("path")
	require("load-grunt-tasks") grunt
	require("load-grunt-config") grunt,
		configPath: path.join(process.cwd(), "grunt") #path to task.js files, defaults to grunt dir
		init: true #auto grunt.initConfig
		config: #additional config vars
			test: false
			meta:
				banner: ''

			paths:
				# //where to store built files
				dist: 'dist'
				# //sources
				src: 'src'
				# //where json files are stored
				data: '<%= paths.src %>/data'
				# //temporary files
				tmp: 'tmp'
				# //pattern to HTML email files
				email: '*.html'

			# /**
			# * Hosts Configuration
			# * ===============================
			# */
			hosts:
				# //enter here yout production host details
				production:
					url: 'http://www.mydomain.com'
					host: 'remote.host'
					username: 'username'
					path: '/path/to/www'
				development:
					# //this is the default development domain
					url: 'http://emailer.local'
					host: 'http://emailer.local'
					username: 'username'
					path: 'C:\Users\JesseKahner\Documents\GitHub/mixture-premailer-grunt'
					port: 9000

		loadGruntTasks: #can optionally pass options to load-grunt-tasks.  If you set to false, it will disable auto loading tasks.
			# pattern: "grunt-"
			config: require("./package.json")
			scope: "devDependencies"
	return