class ntp::file {
	$template = $ntp::params::template
	$servers  = $ntp::params::default_servers
	file { '/etc/ntp.conf':
		ensure => file,
		owner => root,
		group => root,
		require => Package['ntp'],
		content => template("ntp/${template}.erb"),
	}
}
