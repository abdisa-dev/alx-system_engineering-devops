# install package via puppet

node {
  include stdlib
  include apt  # Or yum

  # Ensure Python and pip are installed (adjust based on your system)
  package { 'python3' }
  package { 'python3-pip' }

  # Install Flask using pip3
  pip { 'flask':
    ensure   => present,
    provider => 'pip3',
  }
}
