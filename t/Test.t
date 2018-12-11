use 5.026;
use strict;
use warnings;

use Test::Simple tests => 1;
use My::Test;

ok(My::Test->test(), 'test');
