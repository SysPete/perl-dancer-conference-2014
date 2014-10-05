package Role::Animal;

use Moo::Role;
use MooX::Types::MooseLike::Base qw(:all);

requires '_build_legs';

has legs => (
    is      => 'lazy',
    isa     => Int,
);

has is_moving => (
    is      => 'rw',
    isa     => Bool,
    default => 0,
);

sub walk {
    my $self = shift;
    $self->is_moving(1);
}

1;


