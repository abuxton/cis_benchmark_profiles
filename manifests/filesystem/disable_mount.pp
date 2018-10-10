# A description of what this defined type does
#
# @summary a defined type for reusability to disable file system mounts as cis 1.1.1.*
#
# @example
#   cis_benchmark_profiles::filesystem::disable_mount { 'namevar': }
define cis_benchmark_profiles::filesystem::disable_mount(
  String $benchmark
  String $filesystem = $title,
) {
  include cis_benchmark_profiles::filesystem
  $file = $::cis_benchmarks_profile::filesystem::file

  file_line { "(${benchmark}) ${file} - ${filesystem}":
    ensure  => present,
    path    => $file,
    line    => 'install cramfs /bin/true',
    require => File[$file],
  }
} #EOF
