################################################################################
#
# Class to configure sendmail MTA as smarthost relay
#
################################################################################
class smarthost::sendmail {

    $packages   = [ 'sendmail', 'sendmail-cf', 'make' ]
    $services   = [ 'sendmail' ]

    anchor { 'smarthost::sendmail::begin' :    } ->
    class  { 'smarthost::sendmail::install' :  } ->
    class  { 'smarthost::sendmail::config' :   } ->
    class  { 'smarthost::sendmail::service' :  } ->
    anchor { 'smarthost::sendmail::end' :      } 

}
