# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
#   include apache::install
class apache::install (
  $install_state = $apache::params::install_state,
  $pkd_name      = $apache::params::pkg_name,
) inherits apache::params {
    package { "${apache::pkg_name}":
      ensure => $install_state,
    }
}
