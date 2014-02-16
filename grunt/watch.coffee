module.export = 
	# /**
	# * Watch Tasks (used internally)
	# * ===============================
	# */
	html:
		files: ['<%= paths.src %>/<%= paths.email %>', '<%= paths.src %>/inc/**/*.html', '<%= paths.data %>'],
		tasks: ['render', 'preprocess:dev', 'premailer:dev_html']

	images:
		files: ['<%= paths.src %>/images/**/*.{gif,png,jpg}'],
		tasks: ['copy:images']

	livereload:
		options:
			livereload: 9020

		files: [
			'<%= paths.tmp %>/css/**/*.css'
			'<%= paths.tmp %>/<%= paths.email %>'
			'<%= paths.tmp %>/images/**/*.{gif,png,jpg}'
		]