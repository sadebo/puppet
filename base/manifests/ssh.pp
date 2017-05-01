class base::ssh {

	case $osfamily {
		'RedHat' : {$ssh_name = 'sshd'}
		'Debian' : {$ssh_name = 'ssh'}
		 default  : { fail('OS not support by puppet module  SSH')}
	}
	package { 'openssh-package':
		name  => 'openssh-server',
		ensure => present,
	}
	
	file { '/etc/ssh/sshd_config':
		ensure => file,
		owner  => 'root',
		group  => 'root',
		source => 'puppet:///modules/base/sshd_config',
		require => Package['openssh-package'],
		notify => Service['ssh-service'],
	}

	service { 'ssh-service':
		name     => $ssh_name,	
		ensure   => running,
		enable   => true,
	}

}
