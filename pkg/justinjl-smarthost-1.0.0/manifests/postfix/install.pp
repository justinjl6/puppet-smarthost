################################################################################
#
# Class to install postfix
#
################################################################################
class smarthost::postfix::install {

    $paths      = $smarthost::params::paths
    $packages   = $smarthost::postfix::packages
    $services   = $smarthost::postfix::services

    package { $packages :
        ensure  => present,
    }

}

