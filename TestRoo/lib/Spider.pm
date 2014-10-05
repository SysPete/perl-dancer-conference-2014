package Spider;

use MooX::Types::MooseLike::Base qw(:all);
use Moo;
with 'Role::Animal';

has is_venomous => (
    is  => 'ro',
    isa => Bool,
);

sub _build_legs {
    return 8;
}

1;
