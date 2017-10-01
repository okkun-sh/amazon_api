#!/usr/bin/perl

use strict;
use warnings;

use Net::Amazon;
use Data::Dumper;

my $ua = Net::Amazon->new(
    associate_tag => '%ASSOCIATE_TAG%',
    token         => '%TOKEN%',
    secret_key    => '%SECRET_TOKEN%',
    locale        => 'jp',
);

my $item = $ua->search(
    isbn => 9784873115894,
);

unless ($item->is_success()) {
    print $item->message();
    exit;
}

warn Dumper $item;

1;

