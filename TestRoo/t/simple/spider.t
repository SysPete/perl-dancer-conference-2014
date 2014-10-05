use Test::More;
use Spider;

my $spider = Spider->new( is_venomous => 1 );

ok( $spider->legs == 8, "Spider has 8 legs" );
ok( $spider->is_venomous, "Spider is venomous" );

ok( !$spider->is_moving, "Spider is not moving" );
ok( $spider->can('walk'), "Spider can walk" );
ok( $spider->walk, "make Spider walk" );
ok( $spider->is_moving, "Spider is moving" );

done_testing;
