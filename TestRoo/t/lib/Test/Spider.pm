package Test::Spider;

use Test::Roo::Role;

test 'test spider' => sub {
    my $self   = shift;
    my $spider = Spider->new( is_venomous => 1 );

    ok( $spider->legs == 8, "Spider has 8 legs" );
    ok( $spider->is_venomous, "Spider is venomous" );
};

1;
