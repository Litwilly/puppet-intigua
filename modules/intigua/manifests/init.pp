class managment {

  class { 'intigua':
    ensure => present,
    api_endpoint => "https://ourserver/vmanage-server/rest/rest-api/"
    api_user => "ryan"
    api_key => "api key"
  }

  intigua::tag { 'dev':
    ensure  => present,
  }
  intigua::tag { 'db':
      ensure  => present,
  }
  intigua::tag { 'finance-app':
      ensure  => present,
  }
}
