# smarthost

## Overview

Module for configuring MTA's with a basic smarthost/relay setup.

## Module Description

This module will install an MTA and apply a basic smarthost/relay config. It
can also configure the MTA with a masquerade domain for servers without a
publicly resolvable hostname/fqdn.

## Setup

### What smarthost affects

* Installation of MTA packages. Either Exim4, Postfix or Sendmail based on OS
  defaults, or user selectable.
* Configuration files for the MTA.

### Beginning with smarthost

For a basic configuration, declare the class as follows:

```
class { '::smarthost' : }
```

## Usage

For a more complex configuration, declare the class as folllows:

```
class { '::smarthost' :
    smarthost   => 'mail.yourprovider.com',
    domain      => 'yourdomain.com',
    mta         => undef,
}   
```

## Reference

### Parameters

#### smarthost

* `smarthost`: Required. Set to the hostname/IP address of our SMTP server.
* `domain`: Optional. Masquearade all outbound mail behind this domain. 
  Defaults to servers fully qualified domain name.
* `mta`: Optional. Use a specific MTA. Defaults to OS default MTA.

### Default MTA's:
* Debian 7, Jessie: Exim4
* RedHat 5: sendmail
* RedHat 6, 7: postfix
* Ubuntu 10.04, 12.04, 14.04: postfix

### Testing

#### Example Test

```
class { '::smarthost' :
    smarthost   => 'mail.yourprovider.com',
    domain      => 'yourdomain.com',
    mta         => 'postfix',
}   

```

`$ puppet parser validate tests/justinjl-smarthost.pp`

## Limitations

This module works on:
* CentOS: 5, 6, 7
* Debian: 7, Jessie
* RedHat: 5, 6, 7
* Ubuntu: 10.04, 12.04, 14.04

## Development

Nope.

