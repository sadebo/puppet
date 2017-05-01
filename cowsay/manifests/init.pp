class cowsay {
	package {'epel-release':
		ensure => present,
	}
	
	package { 'cowsay':	
		ensure => present,
		require => Package['epel-release'],

	}
	package { 'xeyes':
		ensure=> present,
		require => Package['epel-release'],
	}
}
