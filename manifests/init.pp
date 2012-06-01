class opengrok {
  package {
    ['tomcat6', 'tomcat6-admin'] :
      ensure => present;
    'exuberant-ctags' :
      ensure => present;
  }

  class {
    'opengrok::dirs' : ;
    'opengrok::files' :
      require => Class['opengrok::dirs'];
  }
}
