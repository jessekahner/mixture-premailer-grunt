module.export = 
	# /**
	# * Images Optimization Tasks (used internally)
	# * ===============================
	# */
	options:
		progressive: false

	dist:
		files: [
			expand: true
			cwd: '<%= paths.tmp %>/images'
			src: ['**/*.{gif,png,jpg}']
			dest: '<%= paths.dist %>/images'
		]