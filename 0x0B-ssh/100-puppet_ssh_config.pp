# Setting up my client config file
include stdlib

file_line { '/etc/ssh/ssh_config':
  ensure  => present,
  line    => '    PasswordAuthentication no',
  replace => true,
}

file_line { '/etc/ssh/ssh_config':
  ensure  => present,
  line    => '     IdentityFile ~/.ssh/school',
  replace => true,
}
