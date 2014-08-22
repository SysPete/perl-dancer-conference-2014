package SecurityApp;

use Dancer ':syntax';
use Dancer::Plugin::Auth::Extensible;
use Dancer::Plugin::DBIC;
use Interchange6::Schema;

our $VERSION = '0.1';

set session => 'DBIC';
set session_options => { schema => schema, };

get '/' => sub {
    return "session id: " . session->id;
};

true;
