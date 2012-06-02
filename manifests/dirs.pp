class opengrok::dirs {
  $base_path = '/var/opengrok'

  file {
    $base_path :
      ensure => directory;

    ["${base_path}/bin", "${base_path}/data",
    "${base_path}/source", "${base_path}/etc"] :
      ensure  => directory,
      require => File[$base_path];

    "${base_path}/bin/lib" :
      ensure  => directory,
      require => File["${base_path}/bin"];
  }
}
