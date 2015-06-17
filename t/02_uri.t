use strict;
use Test::More 0.98;
use WebService::NextBigSound;


my $nbs = new WebService::NextBigSound;

isa_ok $nbs->uri, 'URI';
is $nbs->uri, 'http://www.api3.nextbigsound.com';

$nbs->uri('http://localhost');
is $nbs->uri, 'http://localhost';


done_testing;

