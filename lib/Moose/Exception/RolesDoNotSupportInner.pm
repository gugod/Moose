package Moose::Exception::RolesDoNotSupportInner;
our $VERSION = '2.2006';

use Moose;
extends 'Moose::Exception';

sub _build_message {
    "Roles cannot support 'inner'";
}

1;
