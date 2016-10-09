package Moose::Exception::NeedsTypeConstraintUnionForTypeCoercionUnion;
our $VERSION = '2.1901';

use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::TypeConstraint';

# use Moose::Util::TypeConstraints 'find_type_constraint';

has 'type_coercion_union_object' => (
    is       => 'ro',
    isa      => 'Moose::Meta::TypeCoercion::Union',
    required => 1
);

sub _build_message {
    my $self = shift;
    my $type_constraint = $self->type_name;

    return "You can only create a Moose::Meta::TypeCoercion::Union for a " .
           "Moose::Meta::TypeConstraint::Union, not a $type_constraint"
}

1;
