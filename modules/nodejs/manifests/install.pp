class nodejs::install {

  $packages = [
    'python',
    'g++',
    'make',
    'nodejs',
    'nodejs-dev',
    'npm',
  ]
  package { $packages:
    require => [
      # in order to install node.js
      Class['ppa::repositories::nodejs'],
    ],
    ensure => installed,
  }
}
