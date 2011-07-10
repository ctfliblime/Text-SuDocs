#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
use Test::More tests => 17;
use Test::Exception;

BEGIN {
    use_ok('Text::SuDocs');
}

my @success_argsets = (
    {},
    {agency => 'Y'},
    {agency => 'Y', subagency => 3},
    {agency => 'Y', subagency => 3, series => 186},
    {agency => 'Y', subagency => 3, series => 186, relatedseries => 2},
    {agency => 'Y', subagency => 3, series => 186, relatedseries => 2, document => 'asdf'},
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
    'T 63.209/8-3:994/1',
    );
map { isa_ok(Text::SuDocs->new($_), 'Text::SuDocs') } @success_strings;

my @fail_strings = (
    'EP 1 998',
    );
map { dies_ok {Text::SuDocs->new($_)} 'bad original string' } @fail_strings;
