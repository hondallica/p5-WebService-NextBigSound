use strict;
use Test::More 0.98;
use WebService::NextBigSound;


my $nbs = new WebService::NextBigSound;

isa_ok $nbs->http, 'Furl::HTTP';

subtest 'User-Agent' => sub {
    is $nbs->http->agent, 'WebService::NextBigSound/' . $nbs->VERSION, 'Default User-Agent';
    $nbs->http->agent('YOUR_USER_AGENT');
    is $nbs->http->agent, 'YOUR_USER_AGENT', 'Change User-Agent';
};


done_testing;

