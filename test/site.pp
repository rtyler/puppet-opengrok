
node default {
  class {
    'opengrok' : ;
  }

  opengrok::repo {
    'blimpy' :
      git_url => 'git://github.com/rtyler/blimpy.git';
    'jenkins' :
      git_url => 'git://github.com/jenkinsci/jenkins.git';
    'puppet-opengrok' :
      git_url => 'git://github.com/rtyler/puppet-opengrok.git';
    'sauce_ruby' :
      git_url => 'git://github.com/saucelabs/sauce_ruby.git';
  }

  group {
    'puppet' :
      ensure => present;
  }
}
