package Test::Camel;

use Test::Roo::Role;

test 'test camel' => sub {
    my $self   = shift;
    my $camel = Camel->new( humps => 1 );

    ok( $camel->legs == 4, "Camel has 4 legs" );
    ok( $camel->humps == 1, "Camel has 1 hump" );
    ok( $camel->is_dromedary, "Camel is a dromedary" );
    ok( !$camel->is_bactrian, "Camel is not a bactrian" );
};

1;
