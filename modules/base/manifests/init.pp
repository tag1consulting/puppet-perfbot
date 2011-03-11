class base {

  yumrepo { "IUS":
    name => "ius",
    baseurl => "http://dl.iuscommunity.org/pub/ius/stable/Redhat/5/x86_64",
    mirrorlist => "http://dmirr.iuscommunity.org/mirrorlist?repo=ius-el5&arch=x86_64",
    enabled => 1,
  }

  yumrepo { "EPEL":
    name => "epel",
    baseurl => "http://download.fedoraproject.org/pub/epel/5/x86_64/debug",
    mirrorlist => "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-debug-5&arch=x86_64",
    enabled => 1,
  }

  yumrepo { "Jenkins":
    name => "jenkins",
    baseurl => "http://pkg.jenkins-ci.org/redhat",
    enabled => 1,
    gpgcheck => 0,
  }

  package { "php53u":
    ensure => latest,
  }

  package { "php53u-mysql":
    ensure => latest,
  }

  package { "php53u-gd":
    ensure => latest,
  }

  package { "php53u-dom":
    ensure => latest,
  }

  package { "php53u-pecl-apc":
    ensure => latest,
  }

}
