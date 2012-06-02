class opengrok::files {
  $bin_path = '/var/opengrok/bin'

  file {
    "${bin_path}/OpenGrok" :
      ensure  => present,
      source  => 'puppet:///modules/opengrok/bin/OpenGrok';

    "${bin_path}/opengrok.jar" :
      ensure  => present,
      source  => 'puppet:///modules/opengrok/bin/opengrok.jar';

    "${bin_path}/opengrok-indexer" :
      ensure  => present,
      source  => 'puppet:///modules/opengrok/bin/opengrok-indexer';

    "${bin_path}/lib/ant.jar" :
      ensure  => present,
      source  => 'puppet:///modules/opengrok/bin/lib/ant.jar';

    "${bin_path}/lib/bcel-5.2.jar" :
      ensure  => present,
      source  => 'puppet:///modules/opengrok/bin/lib/bcel-5.2.jar';

    "${bin_path}/lib/jrcs.jar" :
      ensure  => present,
      source  => 'puppet:///modules/opengrok/bin/lib/jrcs.jar';

    "${bin_path}/lib/lucene-core-3.0.2.jar" :
      ensure  => present,
      source  => 'puppet:///modules/opengrok/bin/lib/lucene-core-3.0.2.jar';

    "${bin_path}/lib/lucene-spellchecker-3.0.2.jar" :
      ensure  => present,
      source  => 'puppet:///modules/opengrok/bin/lib/lucene-spellchecker-3.0.2.jar';

    "${bin_path}/lib/swing-layout-0.9.jar" :
      ensure  => present,
      source  => 'puppet:///modules/opengrok/bin/lib/swing-layout-0.9.jar';

  }
}
