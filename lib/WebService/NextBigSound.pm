package WebService::NextBigSound;
use JSON::XS;
use Cache::LRU;
use Net::DNS::Lite;
use Furl;
use URI;
use URI::QueryParam;
use Carp;
use Moo;
use namespace::clean;
our $VERSION = "0.01";


$Net::DNS::Lite::CACHE = Cache::LRU->new( size => 10 );


has 'http' => (
    is => 'rw',
    required => 1,
    default  => sub {
        Furl::HTTP->new(
            inet_aton => \&Net::DNS::Lite::inet_aton,
            agent => 'WebService::NextBigSound/' . $VERSION,
            headers => [ 'Accept-Encoding' => 'gzip',],
        );
    },
);

has 'http_retry' => (
    is => 'rw',
    required => 1,
    default => sub { 3 },
);

1;
__END__

=encoding utf-8

=head1 NAME

WebService::NextBigSound - It's new $module

=head1 SYNOPSIS

    use WebService::NextBigSound;

=head1 DESCRIPTION

WebService::NextBigSound is ...

=head1 LICENSE

Copyright (C) Hondallica.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Hondallica E<lt>hondallica@gmail.comE<gt>

=cut

