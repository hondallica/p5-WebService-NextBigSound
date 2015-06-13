use strict;
use Test::More 0.98;
use WebService::NextBigSound;

my $nbs = new WebService::NextBigSound;
isa_ok $nbs, 'WebService::NextBigSound';

done_testing;

