module.exports =
	# /**
	# * Environment Related Tasks (used internally)
	# * ===============================
	# */
	options:
		inline: true

	dev:
		options:
			context:
				PRODUCTION: false

		files: [
			expand: true
			cwd: '<%= paths.tmp %>/'
			src: ['<%= paths.email %>']
			dest: '<%= paths.tmp %>/'
		]

	dist:
		options:
			context:
				PRODUCTION: true
				
		files: [
			expand: true
			cwd: '<%= paths.tmp %>/'
			src: ['<%= paths.email %>']
			dest: '<%= paths.dist %>/'
		]