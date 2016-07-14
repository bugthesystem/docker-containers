class funnystuff {
  file {
    "/etc/bidid":
      ensure => file,
      source => "puppet:///modules/funnystuff/bidid";
  }
}