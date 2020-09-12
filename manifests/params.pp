# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache::params
class apache::params {
  $install_state = 'present'

  case $::osfamily {
    'Debian': { $pkg_name = 'apache2' }
    'Suse'  : { $pkg_name = 'httpd' }
  }
}
