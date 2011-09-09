#!/usr/bin/env perl

use strict;
use warnings;

use Data::Dumper;
use Test::More tests => 5;
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
subtest 'Setting args during instantiation' => sub {
    map { isa_ok(Text::SuDocs->new($_), 'Text::SuDocs') } @success_argsets;
    done_testing();
};

my @fail_strings = (
    'EP 1 998',
    'EP 1.998',
    'EP 1 998:',
    'EP 1.998/:',
    '1.998:',
    'EP 1998:',
    'EP 1.23: 998@',
    'EP 1.23: +998',
    'PR EX 28.8:C 76',
    );
subtest 'These strings should fail' => sub {
    map { dies_ok {Text::SuDocs->new($_)} "Intentional fail on bad string '$_'" } @fail_strings;
    done_testing();
};

my @accurate_strings = (
    {original=>'ep 1.23: 998', normal=>'EP 1.23:998', stem=>'EP 1.23',
     agency=>'EP', subagency=>'1', series=>'23', relatedseries=>undef, document=>'998'},
    {original=>'EP 1.23: 998', normal=>'EP 1.23:998', stem=>'EP 1.23',
     agency=>'EP', subagency=>'1', series=>'23', relatedseries=>undef, document=>'998'},
    {original=>'EP 1.23: 91-44', normal=>'EP 1.23:91-44', stem=>'EP 1.23',
     agency=>'EP', subagency=>'1', series=>'23', relatedseries=>undef, document=>'91-44'},
    {original=>'C 51. 11: EN 8/995', normal=>'C 51.11:EN 8/995', stem=>'C 51.11',
     agency=>'C', subagency=>'51', series=>'11', relatedseries=>undef, document=>'EN 8/995'},
    {original=>'C 51. 11: 23', normal=>'C 51.11:23',  stem=>'C 51.11',
     agency=>'C', subagency=>'51', series=>'11', relatedseries=>undef, document=>'23'},
    {original=>'C 51. 11/8: 995-96', normal=>'C 51.11/8:995-96', stem=>'C 51.11/8',
     agency=>'C', subagency=>'51', series=>'11', relatedseries=>'8', document=>'995-96'},
    {original=>'T 63.209/8-3:994/1', normal=>'T 63.209/8-3:994/1', stem=>'T 63.209/8-3',
     agency=>'T', subagency=>'63', series=>'209', relatedseries=>'8-3', document=>'994/1'},
    {original=>'T63.209/8-3:994/1', normal=>'T 63.209/8-3:994/1', stem=>'T 63.209/8-3',
     agency=>'T', subagency=>'63', series=>'209', relatedseries=>'8-3', document=>'994/1'},
    {original=>'T63.209/8-3 : 994/1', normal=>'T 63.209/8-3:994/1', stem=>'T 63.209/8-3',
     agency=>'T', subagency=>'63', series=>'209', relatedseries=>'8-3', document=>'994/1'},
    {original=>'T63.209/8-3 :994/1', normal=>'T 63.209/8-3:994/1', stem=>'T 63.209/8-3',
     agency=>'T', subagency=>'63', series=>'209', relatedseries=>'8-3', document=>'994/1'},
    {original=>'T63 .209/8-3:994/1', normal=>'T 63.209/8-3:994/1', stem=>'T 63.209/8-3',
     agency=>'T', subagency=>'63', series=>'209', relatedseries=>'8-3', document=>'994/1'},
    {original=>'Y 3.EQ 2:1/', normal=>'Y 3.EQ 2:1/', stem=>'Y 3.EQ 2',
     agency=>'Y', subagency=>'3', committee=>'EQ', series=>'2', relatedseries=>undef, document=>'1/'},
    {original=>'Y 3.F 31/21-3:2 In 8', normal=>'Y 3.F 31/21-3:2 IN 8', stem=>'Y 3.F 31/21-3',
     agency=>'Y', subagency=>'3', committee=>'F', series=>'31', relatedseries=>'21-3', document=>'2 IN 8'},
    {original=>'HE 1. 2:AC 6/7', normal=>'HE 1.2:AC 6/7', stem=>'HE 1.2',
     agency=>'HE', subagency=>'1', series=>'2', relatedseries=>undef, document=>'AC 6/7'},
    );
subtest 'Normalization' => sub {
    for my $t (@accurate_strings) {
        subtest "Parsing $t->{original}" => sub {
            plan tests => 8;
            my $s = new_ok('Text::SuDocs' => [$t->{original}]);
            next if !$s;
            for my $f (qw(agency subagency series relatedseries document)) {
                no warnings 'uninitialized';
                is($s->$f, $t->{$f}, "$f: $t->{$f} eq ".$s->$f);
            }
            is($s->normal_string, $t->{normal}, 'normalized (full)');
            is($s->normal_string(class_stem=>1), $t->{stem}, 'normalized (stem)');
        }
    }
    done_testing();
};

my $s = Text::SuDocs->new();
$s->original('EP 1.23: 998');
is($s->agency, 'EP', 'setting original triggers parse()');
