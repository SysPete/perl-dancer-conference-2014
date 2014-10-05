use Test::More;
use Camel;

my $camel = Camel->new( humps => 1 );

ok( $camel->legs == 4, "Camel has 4 legs" );
ok( $camel->humps == 1, "Camel has 1 hump" );
ok( $camel->is_dromedary, "Camel is a dromedary" );
ok( !$camel->is_bactrian, "Camel is not a bactrian" );

ok( !$camel->is_moving, "Camel is not moving" );
ok( $camel->can('walk'), "Camel can walk" );
ok( $camel->walk, "make Camel walk" );
ok( $camel->is_moving, "Camel is moving" );

done_testing;
