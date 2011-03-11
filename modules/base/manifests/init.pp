class base {

  yumrepo { "IUS":
    baseurl => "http://dl.iuscommunity.org/pub/ius/stable/Redhat/5/$basearch",
    mirrorlist => "http://dmirr.iuscommunity.org/mirrorlist?repo=ius-el5&arch=$basearch",
    enabled => 1,
  }

  yumrepo { "EPEL":
    baseurl => "http://download.fedoraproject.org/pub/epel/5/$basearch/debug",
    mirrorlist => "http://mirrors.fedoraproject.org/mirrorlist?repo=epel-debug-5&arch=$basearch",
    enabled => 1,
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
