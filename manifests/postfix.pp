################################################################################
#
# Class to configure postfix MTA as smarthost relay
#
################################################################################
class smarthost::postfix {

    $packages   = [ 'postfix' ]
    $services   = [ 'postfix' ]

    anchor { 'smarthost::postfix::begin' :    } ->
    class  { 'smarthost::postfix::install' :  } ->
    class  { 'smarthost::postfix::config' :   } ->
    class  { 'smarthost::postfix::service' :  } ->
    anchor { 'smarthost::postfix::end' :      } 

}
