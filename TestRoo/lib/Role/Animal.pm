package Role::Animal;

use Moo::Role;
use MooX::Types::MooseLike::Base qw(:all);

has legs => (
    is      => 'lazy',
    isa     => Int,
);

has is_moving => (
    is  => 'rw',
    isa => Bool,
);

sub walk {
    my $self = shift;
    $self->is_moving(1);
}

1;
