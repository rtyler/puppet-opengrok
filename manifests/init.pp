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

  exec {
    'opengrok-reindex' :
      refreshonly => true,
      command     => '/var/opengrok/bin/opengrok-indexer',
      path        => ['/usr/bin'],
      timeout     => 0,
      notify      => Service['tomcat6'],
      require     => File['/var/opengrok/bin/opengrok-indexer'];
  }

  cron {
    'update-opengrok-repos' :
      command => '/var/opengrok/bin/opengrok-update',
      user    => root,
      minute  => '*/10',
  }
}
