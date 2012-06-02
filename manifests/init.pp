class opengrok {
  package {
    ['exuberant-ctags', 'git-core'] :
      ensure => present;
  }

  class {
    'opengrok::dirs' : ;
    'opengrok::files' :
      require => Class['opengrok::dirs'];
    'opengrok::tomcat' :
      require => Class['opengrok::files'];
  }
}
