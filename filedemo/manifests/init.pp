class filedemo {
	file { '/root/motd':
		ensure  => present,
		source  => 'puppet:///modules/filedemo/motd',
		mode    => '0644',
		owner   => root,
		group   => root,

	}
	
	file { '/etc/motd':
		ensure => link,
		target => '/root/motd',

	}

}
