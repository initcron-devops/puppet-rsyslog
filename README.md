# rsyslog

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with rsyslog](#setup)
    * [What rsyslog affects](#what-rsyslog-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with rsyslog](#beginning-with-rsyslog)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)

## Description

This puppet module installs 8.x version of rsyslog from Adiscon repository. Its currently been tested on **Ubuntu 14.04** and **Centos 6.7**

## Setup

### What rsyslog affects **OPTIONAL**

If it's obvious what your module touches, you can skip this section. For
example, folks can probably figure out that your mysql_instance module affects
their MySQL instances.

If there's more that they should know about, though, this is the place to mention:

* A list of files, packages, services, or operations that the module will alter,
  impact, or execute.
* Dependencies that your module automatically installs.
* Warnings or other important notices.

### Setup Requirements **OPTIONAL**

This module required puppetlabs-apt module to be installed. To install it

```
module install puppetlabs-apt

```



### Beginning with rsyslog

The very basic steps needed for a user to get the module up and running. This
can include setup steps, if necessary, or it can be an example of the most
basic use of the module.

## Usage

To use rsyslog module add the following to node declaration

class {'::rsyslog':}


## Reference

####Classes

** rsyslog **

This is the main class which calls setup_repo and install classes.

** rsyslog::setup_repo**

This class adds either yum or apt repositories for install rsyslog version 8.

** rsyslog::install**

This class installs the latest version of rsyslog package. With **latest** It will also make sure, the package gets updated automatically. If this feature is undesirable, change **latest** to **installed**.

## Limitations

This module is tested on

* Ubuntu 14.04
* Centos 6.7

It is expected to work fine on other versions of ubuntu and centos 6.x, as well as rhel.
