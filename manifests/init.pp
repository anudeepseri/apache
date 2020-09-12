# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
#   include apache
class apache (
 String $pkg_name,
 String $filename,
 String $path,
) {
  contain apache::install
  contain apache::config

  Class['::apache::install']
  -> Class['::apache::config']
}
