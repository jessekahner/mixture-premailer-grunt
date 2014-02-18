module.exports =
	images:
		files: [
			expand: true,
			cwd: '<%= paths.src %>/images'
			src: ['**/*.{gif,png,jpg}']
			dest: '<%= paths.tmp %>/images'
		]
	# css:
	# 	files: [
	# 		expand: true
	# 		cwd: '<%= paths.src %>/css'
	# 		src: ['**/*.css']
	# 		dest: '<%= paths.tmp %>/css'
	# 	]

	# chose:
	# 	files: [
	# 		expand: true
	# 		cwd: '<%= paths.src %>/css'
	# 		src: '**/*.css'
	# 		dest: 'dest/css'
	# 	]
