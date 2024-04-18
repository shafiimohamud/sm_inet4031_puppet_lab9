
group { 'group01':
	ensure => present,
}

group { 'group02':
	ensure => present,
}

user { 'user04':
	ensure => present,
	shell => '/bin/bash',
	password => '$6$xyz$RS.wHeM.mhNC0lxrp5Zds0ubSAKobEjpYvIWroBijzmu0tuqfQ1C6iBejYnxrEonuCOM0jgFUF3Dc038gW2.D.',
	groups => 'group01',
	managehome => true,
}

user { 'user05':
	ensure => present,
	shell => '/bin/bash',
	password => '$6$xyz$fvqDLmx0wy4IIDQ2f1XgA0lTJJAecH9QVTiHNFfhLVE/PYAaCbYXgqORdpPmWD9q36FjqhQAB3cC7DpV82r2f1',
	groups => 'group02',
	managehome => true,
}


user { 'user06':
        ensure => present,      
        password => '$6$xyz$0RT6mRekQHKdXyWm/wFA06pcoh9KiH9HgdzELyXsmHKHGV6/h6VnAs44BLlVCXvMvi4Ju9c6VAeTMK3.4TjLm1',
        groups => ['group01', 'group02'],
}

user {'user07':
	ensure => present,
	shell => '/bin/bash',
	password => '$6$xyz$zlj5PnjldM6pveJoYYpAfowmR81rqqtgs9Xh5ikn.oRf8GxSSR4XOoi1El1Wu7rhkUrS20.oNBN1NkWRW5Tb60',
	managehome => true,
}

#user {'user08':
#	ensure => present,
#	shell => '/bin/bash',
#	password => '$6$xyz$SoDRF4uV0Yjohxg295V7VJbj09xz/Tiiwr6Y3pioBWUL02hfK6/PMpum9p28Gh17LeOVXeiBS0q1U7dw/iPji/',
#	groups => 'group1',
#	managehome => true,
#}
