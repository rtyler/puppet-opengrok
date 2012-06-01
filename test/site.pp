
node default {
  class {
    'opengrok' : ;
  }

  group {
    'puppet' :
      ensure => present;
  }
}
