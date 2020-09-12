# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include apache::config
class apache::config {
  file { 'httpd file':
    ensure => present,
    path   => $apache::path,
    source => "puppet:///modules/apache/${apache::filename}",
    mode   => '0644',
    owner  => root,
    group  => root,
  }
}
