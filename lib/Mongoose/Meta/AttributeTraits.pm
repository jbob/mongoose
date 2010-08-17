package Mongoose::Meta::AttributeTraits;

package Mongoose::Meta::Attribute::Trait::Binary;
use strict;
use Moose::Role;

has 'column' => (
    isa             => 'Str',
    is              => 'rw',
);

has 'lazy_select' => (
    isa             => 'Bool',
    is              => 'rw',
    default         => 0,
);

# -----------------------------------------------------------------

{
	package Moose::Meta::Attribute::Custom::Trait::Binary;
	sub register_implementation {'Mongoose::Meta::Attribute::Trait::Binary'}
}

# -----------------------------------------------------------------

package Mongoose::Meta::Attribute::Trait::DoNotSerialize;
use strict;
use Moose::Role;

has 'column' => (
    isa             => 'Str',
    is              => 'rw',
);

has 'lazy_select' => (
    isa             => 'Bool',
    is              => 'rw',
    default         => 0,
);

# -----------------------------------------------------------------

{
	package Moose::Meta::Attribute::Custom::Trait::DoNotSerialize;
	sub register_implementation {'Mongoose::Meta::Attribute::Trait::DoNotSerialize'}
}

#package Moose::Meta::Attribute::Custom::DoNotSerialize;
#use Moose::Role;

#package Moose::Meta::Attribute::Custom::Trait::PrimaryKey;
#use Moose::Role;

=head1 NAME

Mongoose::Meta::AttributeTraits - Mongoose related attribute traits

=head1 DESCRIPTION

All Moose attribute traits used by Mongoose are defined here.

=cut

1;



