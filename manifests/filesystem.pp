# @summary 
# Create /etc/modprobe.d and /etc/modeprobe.d/CIS.conf
# required by
# 1.1.1.1
# 1.1.1.2
# 1.1.1.3
# 1.1.1.4
# 1.1.1.5
# 1.1.1.6
# 1.1.1.7
# 1.1.1.8
#
# @example
#   include cis_benchmark_profiles::filesystem
#
class cis_benchmark_profiles::filesystem {
  $file = 'CIS.conf'

  file { '/etc/modprobe.d':
    ensure => directory,
    mode   => '0755',
    owner  => 'root',
    group  => 'root',
  }

  file { "/etc/modprobe.d/${file}" :
    ensure  => file,
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
    require => File['/etc/modprobe.d'],
  }
}#EOF
