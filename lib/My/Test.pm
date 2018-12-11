package My::Test;

use 5.026;
use strict;
use warnings;

use My::Test2;


sub test {

	my $test2 = My::Test2->new({});

	# commenting out the following condition makes "uncoverable branch true" work properly
	if ($test2 > 1) { say 'something'; } # let's call this "trigger condition"

	# uncoverable branch true
	$test2->asdf(
		{
			variable => 'asdf'
		}
	) or say 'unable_to_update';

	return 1;
}

1;
