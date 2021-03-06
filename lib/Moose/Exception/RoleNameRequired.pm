package Moose::Exception::RoleNameRequired;
our $VERSION = '2.2006';

use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::Class';

sub _build_message {
    "You must supply a role name to look for";
}

1;
