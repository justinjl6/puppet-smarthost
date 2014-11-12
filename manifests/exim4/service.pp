################################################################################
#
# Class to manage exim service
#
################################################################################
class smarthost::exim4::service {

    $paths      = $smarthost::params::paths
    $packages   = $smarthost::exim4::packages
    $services   = $smarthost::exim4::services

    service { $services :
        ensure      => 'running',
        enable      => true,
    }

}

