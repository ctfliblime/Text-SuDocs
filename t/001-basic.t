#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
use Test::More tests => 23;
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

my @fail_strings = (
    'EP 1 998',
    'EP 1.998',
    'EP 1 998:',
    'EP 1.998/:',
    '1.998:',
    'EP 1998:',
    );
map { dies_ok {Text::SuDocs->new($_)} "Intentional fail on bad string '$_'" } @fail_strings;

my @accurate_strings = (
    {original=>'EP 1.23: 998',
     agency=>'EP', subagency=>'1', series=>'23', relatedseries=>undef, document=>'998'},
    {original=>'EP 1.23: 91-44',
     agency=>'EP', subagency=>'1', series=>'23', relatedseries=>undef, document=>'91-44'},
    {original=>'C 51. 11: EN 8/995',
     agency=>'C', subagency=>'51', series=>'11', relatedseries=>undef, document=>'EN 8/995'},
    {original=>'C 51. 11: 23',
     agency=>'C', subagency=>'51', series=>'11', relatedseries=>undef, document=>'23'},
    {original=>'C 51. 11/8: 995-96',
     agency=>'C', subagency=>'51', series=>'11', relatedseries=>'8', document=>'995-96'},
    {original=>'T 63.209/8-3:994/1',
     agency=>'T', subagency=>'63', series=>'209', relatedseries=>'8-3', document=>'994/1'},
    {original=>'T63.209/8-3:994/1',
     agency=>'T', subagency=>'63', series=>'209', relatedseries=>'8-3', document=>'994/1'},
    {original=>'T63.209/8-3 : 994/1',
     agency=>'T', subagency=>'63', series=>'209', relatedseries=>'8-3', document=>'994/1'},
    {original=>'T63.209/8-3 :994/1',
     agency=>'T', subagency=>'63', series=>'209', relatedseries=>'8-3', document=>'994/1'},
    {original=>'T63 .209/8-3:994/1',
     agency=>'T', subagency=>'63', series=>'209', relatedseries=>'8-3', document=>'994/1'},
    );
for my $t (@accurate_strings) {
    subtest "Parsing $t->{original}" => sub {
        plan tests => 6;
        my $s = new_ok('Text::SuDocs' => [$t->{original}]);
        for my $f (qw(agency subagency series relatedseries document)) {
            no warnings 'uninitialized';
            is($s->$f, $t->{$f}, "$f: $t->{$f} eq ".$s->$f);
        }
    }
}
