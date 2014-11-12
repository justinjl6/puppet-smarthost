class { '::smarthost' :
    smarthost   => 'mail.yourprovider.com',
    domain      => 'yourdomain.com',
    mta         => 'postfix',
}
