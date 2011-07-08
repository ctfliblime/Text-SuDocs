#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
use Test::More tests => 15;

BEGIN {
    use_ok('Text::SuDocs');
}

my @success_argsets = (
    {},
    {agency => 'Y'},
    {agency => 'Y', subagency => 3},
    {agency => 'Y', subagency => 3, series => 186},
    {agency => 'Y', subagency => 3, series => 186, document => 22},
    {agency => 'Y', subagency => 3, series => 186, document => 22, year => 1011},
    );
map { isa_ok(Text::SuDocs->new($_), 'Text::SuDocs') } @success_argsets;

my @success_strings = (
    'EP 1.23: 998',
    'EP 1.23: 91-44',
    'C 51. 11: EN 8/995',
    'C 51. 11: 23',
    'C 51. 11/8: 995-96',
    'HE 20.6520/2: AC9/2',
    'HE 20.6520: P92',
    'HE 20.6520/2: 17',
    );
map { isa_ok(Text::SuDocs->new($_), 'Text::SuDocs') } @success_strings;
