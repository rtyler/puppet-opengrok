# puppet-opengrok

A simple Puppet module for managing and installing
[OpenGrok](http://www.opensolaris.org/os/project/opengrok/).

## A simple example

```puppet
  node default {
    include opengrok

    opengrok::repo {
      'puppet' :
        git_url => 'git://github.com/puppetlabs/puppet.git';

      'puppet-opengrok' :
        git_url => 'git://github.com/rtyler/puppet-opengrok.git';
    }
  }
```

## Errata

* This has only been tested and verified on Ubuntu 10.04 LTS, if you use a
  RedHat-based distribution you will probably need to change some of the
  package names (and send a pull request!)
* This will install Tomcat 6 on its own and hasn't been tested with any other
  puppet modules that you may use to manage Tomcat.
