class opengrok::tomcat {
  package {
    ['tomcat6', 'tomcat6-admin'] :
      ensure => present;
  }

  file {
    '/var/lib/tomcat6/webapps/source.war' :
      ensure  => present,
      require => Package['tomcat6'],
      notify  => Service['tomcat6'],
      source  => 'puppet:///modules/opengrok/source.war';
  }

  service {
    'tomcat6' :
      hasrestart => true,
      hasstatus  => true,
      require    => Package['tomcat6'];
  }
}
