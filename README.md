# SYNOPSIS

Simple templater.


# INSTALL

    $ sparrow plg install templater


# USAGE

## Via sparrowdo

  
  $ cat sparrowfile
  
  use v6;
  
  use Sparrowdo;
  
  task_run  %(
    task => 'install my config',
    plugin => 'templater',
    parameters => %(
      variables => %(
        name => 'sparrowdo',
        language => 'perl6'
      ),
      target => '/etc/foo.conf',
      owner => 'user',
      mode => '644',
      source => slurp 'templates/foo.conf.tmpl'
    )
  );
  

  $ cat templates/foo.conf.tmpl

  Hello, I am a [% name %]
  I speak [% language %]
  
