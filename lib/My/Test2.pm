package My::Test2;

use 5.026;
use strict;
use warnings;

sub new {
    my ($class, $args) = @_;
    my $self = {};
    return bless $self, $class;
}

sub asdf {
    my ($class, $args) = @_;
    return 1;
}

1;