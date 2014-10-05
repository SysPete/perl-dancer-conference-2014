use lib 't/lib';

use Spider;
use Test::Roo;

with 'Test::Animal', 'Test::Spider';

run_me({ animal_class => 'Spider' });

done_testing;
