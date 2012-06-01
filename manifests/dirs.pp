class opengrok::dirs {
  file {
    '/var/opengrok' :
      ensure => directory;
    ['/var/opengrok/bin', '/var/opengrok/data', '/var/opengrok/source'] :
      ensure  => directory,
      require => File['/var/opengrok'];

    '/var/opengrok/bin/lib' :
      ensure  => directory,
      require => File['/var/opengrok/bin'];
  }
}
