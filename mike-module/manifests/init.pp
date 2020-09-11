class mike-module {

package {‘apache2’:
ensure=> installed,
}

file { '/var/www/html':
        ensure => directory,
    }
file { "/var/www/html/index.html":
        mode => "0644",
        source => 'puppet:///modules/mike-module/files/index.html',
    }
}