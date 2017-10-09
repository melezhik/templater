# SYNOPSIS

Simple templater based on [Template-Toolkit](http://template-toolkit.org) engine.

# INSTALL

    $ sparrow plg install templater

# USAGE

## Via sparrowdo

    $ cat sparrowfile
    
    task-run 'install my config', 'templater', %(
      variables => %(
        name => 'sparrowdo',
        language => 'perl6'
      ),
      target  => '/etc/foo.conf',
      owner   => 'user',
      group   => 'user'
      mode    => '644',
      source  => slurp 'templates/foo.conf.tmpl'
    );
    
  
    $ cat templates/foo.conf.tmpl
  
    Hello, my name is [% name %]!
    I speak [% language %]
    

# Parameters

## variables

A list of variables get passed into template. No default value. Optional.

## target

A file path to write a rendered template to. No default value. Should be set.

## owner

Sets a target ownership to owner. No default value. Optional.

## group

Sets a target group to group. No default value. Optional.

# Author

Alexey Melezhik

# See also

[Template-Toolkit](http://template-toolkit.org)
