# Using puppet to install flusk
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  name     => 'flask',
}
