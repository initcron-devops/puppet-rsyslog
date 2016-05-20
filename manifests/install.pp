# == Class: rsyslog::install
#
class rsyslog::install {
  
    package { 'rsyslog':
      ensure => latest,
    }

}
