class localusers { 
	user { 'admin':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/admin',
		gid        => 'wheel',
 		managehome => true,
		password   => '$6$jTTBK2gc$rR3m9ySzQsXPlDD0cYpxzLJE.6dX5pv/7mVONjBv.ojRJPED2UPo.FKdWnchEB/2LURpw.Zd28lTagrfZIJx2.',	
	}

	user {'sanu':
		ensure     => present,
		shell      => '/bin/bash',
		home       => '/home/sanu',
		groups     => ['wheel','finance'],
		managehome => true,
	
	}		

}
