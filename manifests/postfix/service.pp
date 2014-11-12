################################################################################
#
# Class to manage postfix service
#
################################################################################
class smarthost::postfix::service {

    $paths      = $smarthost::params::paths
    $packages   = $smarthost::postfix::packages
    $services   = $smarthost::postfix::services

    service { $services :
        ensure      => 'running',
        enable      => true,
    }

}

