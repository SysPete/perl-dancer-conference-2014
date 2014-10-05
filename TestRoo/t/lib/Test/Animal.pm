package Test::Animal;

use Test::Roo::Role;

has 'animal_class' => (
    is  => 'ro',
);

test 'test animal' => sub {
    my $self   = shift;
    my $class  = $self->animal_class;
    my $animal = $class->new;

    ok( $animal->DOES('Role::Animal'), "$class seems to be an animal" );
    ok( $animal->legs > 0, "$class has some legs" );
    ok( !$animal->is_moving, "$class is not moving" );
    ok( $animal->can('walk'), "$class can walk" );
    ok( $animal->walk, "make $class walk" );
    ok( $animal->is_moving, "$class is moving" );
};

1;
