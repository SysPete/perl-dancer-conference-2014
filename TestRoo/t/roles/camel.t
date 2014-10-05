use lib 't/lib';

use Camel;
use Test::Roo;

with 'Test::Animal', 'Test::Camel';

run_me({ animal_class => 'Camel' });

done_testing;
