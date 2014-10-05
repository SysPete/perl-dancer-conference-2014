package Camel;

use MooX::Types::MooseLike::Base qw(:all);
use Moo;
with 'Role::Animal';

has humps => (
    is      => 'ro',
    isa     => Int,
    default => 1,
);

sub _build_legs {
    return 4;
}

sub is_bactrian {
    my $self = shift;
    return 1 if $self->humps == 2;
    return 0;
};

sub is_dromedary {
    my $self = shift;
    return 1 if $self->humps == 1;
    return 0;
};

1;
