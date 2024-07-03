#!/usr/bin/env puppet
# install package via puppet

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3'
}
