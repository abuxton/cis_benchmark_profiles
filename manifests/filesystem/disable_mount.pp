# A description of what this defined type does
#
# @summary a defined type for reusability to disable file system mounts as cis 1.1.1.*
#
# @example
#   cis_benchmark_profiles::filesystem::disable_mount { 'namevar': }
define cis_benchmark_profiles::filesystem::disable_mount(
  Pattern[/[1]\W[1]\W[1]\W[0-9]/] $benchmark,
  String                          $filesystem = $title,
) {
  include cis_benchmark_profiles::filesystem
  $file = "/etc/modprobe.d/${::cis_benchmark_profiles::filesystem::file}"

  file_line { "(${benchmark}) ${file} - ${filesystem}":
    ensure  => present,
    path    => $file,
    line    => "install ${filesystem} /bin/true",
    require => File[$file],
    tag    => $benchmark,
  }
} #EOF
