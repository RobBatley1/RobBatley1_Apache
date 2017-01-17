class apache::params {
  case $::osfamily {
    'debian': {
      $package_name = 'httpd'
      $service_name = 'httpd'
    }
    'redhat', 'Amazon': {
      $package_name = 'httpd'
      $service_name = 'httpd'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }

  $webpage_text = 'Puppet was here 2k17'
}
