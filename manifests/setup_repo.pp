# == Class: rsyslog::ppa
# Adds  Adiscon Ubuntu Repository  to setup rsyslog
class rsyslog::setup_repo {

  case $::osfamily {
    'RedHat': {
      file { '/etc/yum.repos.d/rsyslog.repo':
        ensure => file,
        source => 'puppet:///modules/rsyslog/rsyslog.repo',
        mode => '0644',
      }
    }
    'Debian': {
      include apt
      apt::ppa { "ppa:adiscon/v8-stable":}
    }
  }
}
