################################################################################
#
# Class to configure exim4 MTA as smarthost relay
#
################################################################################
class smarthost::exim4 {

    $packages   = [ 'exim4' ]
    $services   = [ 'exim4' ]

    anchor { 'smarthost::exim4::begin' :    } ->
    class  { 'smarthost::exim4::install' :  } ->
    class  { 'smarthost::exim4::config' :   } ->
    class  { 'smarthost::exim4::service' :  } ->
    anchor { 'smarthost::exim4::end' :      } 

}
