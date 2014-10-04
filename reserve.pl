#!/usr/bin/env perl
# refer to http://forums.whirlpool.net.au/forum-replies.cfm?t=2313467&p=98#r1953

use strict;
use warnings;
use JSON qw( decode_json );
use LWP::Simple;
use Email::Send;
use Email::Send::Gmail;
use Email::Simple::Creator;

#my $stores = get("https://reserve.cdn-apple.com/AU/en_AU/reserve/iPhone/stores.json");
my $availability = get("https://reserve.cdn-apple.com/AU/en_AU/reserve/iPhone/availability.json");

my $brisbane = decode_json($availability)->{'R466'}->{'MGAK2X/A'}; # + 64 gold

if ($brisbane) {
my $email = Email::Simple->create(
header => [
From => 'YOUR_GMAIL_ADDRESS@gmail.com',
To => 'YOUR@EMAIL.com',
Subject => 'iPhone+',
],
body => 'Now available at Brisbane store.',
);

my $sender = Email::Send->new(
{ mailer => 'Gmail',
mailer_args => [
username => 'YOUR_GMAIL_ADDRESS@gmail.com',
password => 'YOUR_GMAIL_PASSWORD',
]
}
);
eval { $sender->send($email) };
die "Error sending email: $@" if $@;
}
