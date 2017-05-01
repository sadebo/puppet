class ntp::params {
	case $::operatingsystem {
		'centos' :{
			$template = 'centos_ntp'
			$service_name = 'ntpd'
			$default_servers = ["0.centos.pool.ntp.org iburst",
					"1.centos.pool.ntp.org iburst",
					"2.centos.pool.ntp.org iburst",
					"3.centos.pool.ntp.org iburst",]



		}
		'ubuntu' : {
			$template = 'ubuntu_ntp'
			$service_name = 'ntp'
			
			$default_servers = ["0.ubuntu.pool.ntp.org iburst",
					"1.ubuntu.pool.ntp.org iburst",
					"2.ubuntu.pool.ntp.org iburst",
					"3.ubuntu.pool.ntp.org iburst",]
		}	
		default : { fail ('OS $::operatingsystem is not supported') }
		
	}
	$package_name = 'ntp'
}

