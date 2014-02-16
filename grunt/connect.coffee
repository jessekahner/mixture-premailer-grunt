module.export =
	# /**
	# * Server Tasks (used internally)
	# * ===============================
	# */

	options:
		hostname: '*'
		port: '<%= hosts.development.port %>'
		open: '<%= hosts.development.url %>:<%= hosts.development.port %>/'
		base: ['<%= paths.tmp %>']

	dev:
		options:
			livereload: 9020

	send_dev:
		options:
			# //keep the server on
			keepalive: true
