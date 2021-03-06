#!/usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use Test::More;

use Text::SuDocs;

my @samples = <DATA>;

for (@samples) {
    chomp;
    my $s = new_ok('Text::SuDocs' => [$_], $_);
    is($s->normal_string, uc($_));
}

done_testing();

__DATA__
A 3.103
HE 20.8315:1
HE 20.8315:2
HE 20.8315:3
HE 20.8315:4
HE 20.8315:5
HE 20.8315:6
HE 20.8315:7
HE 20.8315:10
HE 20.8315:11
HE 20.8315:13
HE 20.8315:12
HE 20.8315:14
HE 20.8315:15
HE 20.8315:21
HE 20.8315:20
HE 20.8315:18
HE 20.8315:23
HE 20.8315:22
HE 20.8315:24
HE 20.8315:25
HE 20.8315:27
HE 20.8315:26
HE 20.8315:28
HE 20.8315:29
HE 20.8315:30
HE 20.8315:31
HE 20.8315:33
HE 20.8315:35
Y 3.EQ 2:1/
Y 3.F 31/21-3:2 In 8
Y 3.F 31/21-3:2 ST 2
Y 3.F 31/21-3:2 AU 2
Y 3.F 31/21-3:2 In 8/2
Y 3.F 31/21-3:2 ST 2/2
Y 3.F 31/21-3:2 C 88
Y 3.F 31/21-3:2 R 27
Y 3.F 31/21-3:2 ST 2/2/994
Y 3.F 31/21-3:2 IM 7
Y 3.F 31/21-3:2 ST 2/2/996
Y 3.F 31/21-3:2 ST 2/2/998
Y 3.F 31/21-3:2 D 63
Y 3.F 31/21-3:2 ST 2/2/999
Y 3.F 31/21-3:2 ST 2/2/2000
Y 3.F 31/21-3:2 ST 2/2/2008
Y 3.F 31/8:1-2/
Y 3.T 22/2:2 En 2
Y 3.T 22/2:2 M 46
Y 3.T 22/2:2 T 22
Y 3.T 22/2:2 L 66
Y 3.T 22/2:2 P 93/979
Y 3.T 22/2:2 C 73/2
Y 3.T 22/2:2 Au 8/v.-
Y 3.T 22/2:2 En 8/2
Y 3.T 22/2:2 P 43/2/v.1-
Y 3.T 22/2:2 T 68/4/sum.
Y 3.T 22/2:2 As 7
Y 3.T 22/2:2 C 63/sum.
Y 3.T 22/2:2 C 82
Y 3.T 22/2:2 C 82/sum.
Y 3.T 22/2:2 En 2/9/sum.
Y 3.T 22/2:2 G 28/sum.
Y 3.T 22/2:2 As 7/980
Y 3.T 22/2:2 As 7/981
Y 3.T 22/2:2 T 22/3/980-2
Y 3.T 22/2:2 T 23/4/sum.
Y 3.T 22/2:2 M 69/sum.
Y 3.T 22/2:2 So 4/2/sum.
Y 3.T 22/2:2 T 23/5/sum.
Y 3.T 22/2:2 C 73/6/sum.
Y 3.T 22/2:2 D 63/2
Y 3.T 22/2:2 So 8/sum.
Y 3.T 22/2:2 C 63/4/sum.
Y 3.T 22/2:2 D 63
Y 3.T 22/2:2 R 11/sum.
Y 3.T 22/2:2 T 22/3/1981
Y 3.T 22/2:2 R 11/2/sum.
Y 3.T 22/2:2 T 22/3/982
Y 3.T 22/2:2 C 16/2/sum.
Y 3.T 22/2:2 En 2/10/sum.
Y 3.T 22/2:2 N 88/sum.
Y 3.T 22/2:2 P 81/sum.
Y 3.T 22/2:2 T 22/3
Y 3.T 22/2:2 T 22/7/sum.
Y 3.T 22/2:2 Ai 7/pt.1-
Y 3.T 22/2:2 En 2/9/v.1-2
Y 3.T 22/2:2 El 2/2/sum.
Y 3.T 22/2:2 M 46/4/sum.
Y 3.T 22/2:2 C 86/2/sum.
Y 3.T 22/2:2 C 73/5/sum.
Y 3.T 22/2:2 T 22/3/983
Y 3.T 22/2:2 T 75
Y 3.T 22/2:2 In 2/2/sum.
Y 3.T 22/2:2 G 28/2/sum.
Y 3.T 22/2:2 In 3/2/sum.
Y 3.T 22/2:2 M 46/5/sum.
Y 3.T 22/2:2 T 22/8/sum.
Y 3.T 22/2:2 W 85/sum.
Y 3.T 22/2:2 N 88/4/sum.
Y 3.T 22/2:2 R 13/5/sum.
Y 3.T 22/2:2 In 2/sum.
Y 3.T 22/2:2 T 75/2/sum.
Y 3.T 22/2:2 C 61
Y 3.T 22/2:2 C 82/2/case 24
Y 3.T 22/2:2 C 49/sum.
Y 3.T 22/2:2 T 22/6/sum.
Y 3.T 22/2:2 C 82/2/abst.
Y 3.T 22/2:2 M 33/sum.
Y 3.T 22/2:2 M 46/6/sum.
Y 3.T 22/2:2 F 49/sum.
Y 3.T 22/2:2 In 8/2/sum.
Y 3.T 22/2:2 Oi 5/6/sum.
Y 3.T 22/2:2 T 22/3/984
Y 3.T 22/2:2 T 22/13/sum.
Y 3.T 22/2:2 Ac 4/sum.
Y 3.T 22/2:2 C 73/7/sum.
Y 3.T 22/2:2 F 31/sum.
Y 3.T 22/2:2 G 91/sum.
Y 3.T 22/2:2 T 22/10/no.2
Y 3.T 22/2:2 C 73/8/sum.
Y 3.T 22/2:2 T 22/14/sum.
Y 3.T 22/2:2 C 49/2/sum.
Y 3.T 22/2:2 W 29/2/sum.
Y 3.T 22/2:2 St 8/sum.
Y 3.T 22/2:2 B 62/sum.
Y 3.T 22/2:2 G 21/4/sum.
Y 3.T 22/2:2 In 3/3/sum.
Y 3.T 22/2:2 R 11/2/sum/985
Y 3.T 22/2:2 Su 7/sum.
Y 3.T 22/2:2 T 22/3/985
Y 3.T 22/2:2 C 82/2/abst./985
Y 3.T 22/2:2 T 75/no.1
Y 3.T 22/2:2 Oi 5/7/sum.
Y 3.T 22/2:2 P 92/sum.
Y 3.T 22/2:2 B 52/2/sum.
Y 3.T 22/2:2 M 46/7
Y 3.T 22/2:2 M 69/2/sum.
Y 3.T 22/2:2 W 37/sum.
Y 3.T 22/2:2 R 29/sum.
Y 3.T 22/2:2 M 46/7/sum.
Y 3.T 22/2:2 T 22/3/986
Y 3.T 22/2:2 T 22/17/sum.
Y 3.T 22/2:2 In 2/3/sum.
Y 3.T 22/2:2 In 8/3/sum.
Y 3.T 22/2:2 P 56/2/sum.
Y 3.T 22/2:2 Su 7/2
Y 3.T 22/2:2 M 66/sum.
Y 3.T 22/2:2 An 5/sum.
Y 3.T 22/2:2 C82/2/CASE 36
Y 3.T 22/2:2 Oc 2/4/sum.
Y 3.T 22/2:2 Se 6
Y 3.T 22/2:2 T 22/20/sum.
Y 3.T 22/2:2 T 22/22/sum.
Y 3.T 22/2:2 T 68/6/sum.
Y 3.T 22/2:2 T 22/17/v.2/pt.A-E
Y 3.T 22/2:2 Ai 7/4/sum.
Y 3.T 22/2:2 In 3/4
Y 3.T 22/2:2 T 67/2/sum.
Y 3.T 22/2:2 W 28/sum.
Y 3.T 22/2:2 As 7/
Y 3.T 22/2:2-10/
Y 3.T 22/2:2 C 49/3
Y 3.T 22/2:2 C 73/9
Y 3.T 22/2:2 C 76/5
Y 3.T 22/2:2 D 26
Y 3.T 22/2:2 D 26/2
Y 3.T 22/2:2 In 3/6
Y 3.T 22/2:2 In 3/7
Y 3.T 22/2:2 M 46/9
Y 3.T 22/2:2 B 52/3/sum.
Y 3.T 22/2:2 C 73/10/v.1
Y 3.T 22/2:2 C 73/10/v.2
Y 3.T 22/2:2 C 73/10/v.3
Y 3.T 22/2:2 R 31/2/sum.
Y 3.T 22/2:2 M 66/2
Y 3.T 22/2:2 M 66/2/sum.
Y 3.T 22/2:2 T 22/3/987
Y 3.T 22/2:2 W 28/2/sum.
Y 3.T 22/2:2 Ag 3/991-95
Y 3.T 22/2:2 Au 8/5
Y 3.T 22/2:2 C 17
Y 3.T 22/2:2 C 28
Y 3.T 22/2:2 Et 3
Y 3.T 22/2:2 Ex 8
Y 3.T 22/2:2 F 93
Y 3.T 22/2:2 In 3/5
Y 3.T 22/2:2 M 46/8
Y 3.T 22/2:2 M 46/10
Y 3.T 22/2:2 M 66/v.2 a
Y 3.T 22/2:2 M 66/v.2 b
Y 3.T 22/2:2 P 29
Y 3.T 22/2:2 P 43/2
Y 3.T 22/2:2 P 56/3
Y 3.T 22/2:2 P 56/4
Y 3.T 22/2:2 Su 7/3
Y 3.T 22/2:2 T 22/19
Y 3.T 22/2:2 T 22/24/sum.
Y 3.T 22/2:2 Oi 5/8
Y 3.T 22/2:2 In 8/4/sum.
Y 3.T 22/2:2 L 62/sum.
Y 3.T 22/2:2 D 36/sum.
Y 3.T 22/2:2 St 2/sum.
Y 3.T 22/2:2 M 33/2/sum.
Y 3.T 22/2:2 Su 7/4/sum.
Y 3.T 22/2:2 B 64/sum.
Y 3.T 22/2:2 T 22/25/sum.
Y 3.T 22/2:2 H 34/3/sum.
Y 3.T 22/2:2 D 46/sum.
Y 3.T 22/2:2 In 3/8/sum.
Y 3.T 22/2:2 M 46/11/sum.
Y 3.T 22/2:2 Sa 1/sum.
Y 3.T 22/2:2 P 87/sum.
Y 3.T 22/2:2 Af 8/sum.
Y 3.T 22/2:2 C 79/sum.
Y 3.T 22/2:2 In 3/9/sum.
Y 3.T 22/2:2 M 46/12/sum.
Y 3.T 22/2:2 Sa 1/2/sum.
Y 3.T 22/2:2 T 22/3/988
Y 3.T 22/2:2 B 52/4/v.1-
Y 3.T 22/2:2 B 52/4/v.5-
Y 3.T 22/2:2 T 22/3/989
Y 3.T 22/2:2 Oi 5/9/sum.
Y 3.T 22/2:2 Ed 3/sum.
Y 3.T 22/2:2 El 2/9/sum.
Y 3.T 22/2:2 Ur 1/2/sum.
Y 3.T 22/2:2 P 75/sum.
Y 3.T 22/2:2 Am 3/sum.
Y 3.T 22/2:2 L 47/sum.
Y 3.T 22/2:2 P 25/sum.
Y 3.T 22/2:2 M 28/sum.
Y 3.T 22/2:2 B 43/sum.
Y 3.T 22/2:2 C 73/13/sum.
Y 3.T 22/2:2 N 39/2/sum.
Y 3.T 22/2:2 P 87/develo.
Y 3.T 22/2:2 M 66/3/sum.
Y 3.T 22/2:2 T 68
Y 3.T 22/2:2 R 13
Y 3.T 22/2:2 C 76
Y 3.T 22/2:2 R 13/2
Y 3.T 22/2:2 T 68/3
Y 3.T 22/2:2 F 73/2
Y 3.T 22/2:2 C 73
Y 3.T 22/2:2/2003012299
Y 3.T 22/2:2 B 96
Y 3.T 22/2:2/2003012308
Y 3.T 22/2:2/T 67/V.1-12
Y 3.T 22/2:2 ST 6
Y 3.T 22/2:2 In 3
Y 3.T 22/2:2/2003012366
Y 3.T 22/2:2 F 53
Y 3.T 22/2:2 N 88
Y 3.T 22/2:2 F 73/3
Y 3.T 22/2:2 F 73/4
Y 3.T 22/2:2 C 16
Y 3.T 22/2:2 M 46/2
Y 3.T 22/2:2/2003012239
Y 3.T 22/2:2 OI 5/4
Y 3.T 22/2:2 F 73
Y 3.T 22/2:2 R 13/3
Y 3.T 22/2:2 R 31
Y 3.T 22/2:2 OC 2/pt.1
Y 3.T 22/2:2/SO 4/V.1-2
Y 3.T 22/2:2 D 39
Y 3.T 22/2:2 IN 8
Y 3.T 22/2:2 C 73/3
Y 3.T 22/2:2 M 46/3
Y 3.T 22/2:2 N 95
Y 3.T 22/2:2/2003012580
Y 3.T 22/2:2 H 34
Y 3.T 22/2:2 F 73/5
Y 3.T 22/2:2 ED 8
Y 3.T 22/2:2 C 86
Y 3.T 22/2:2 L 44
Y 3.T 22/2:2 AU 8/V.1-3
Y 3.T 22/2:2 F 95
Y 3.T 22/2:2 P 93/979
Y 3.T 22/2:2/2003012325
Y 3.T 22/2:2 N 88/2
Y 3.T 22/2:2 H 34/2
Y 3.T 22/2:2 D 84/2/V.1
Y 3.T 22/2:2 M 41/3/V.1
Y 3.T 22/2:2 IN 6
Y 3.T 22/2:2 EN 2/7/V.1
Y 3.T 22/2:2 F 73/6
Y 3.T 22/2:2 V 13
Y 3.T 22/2:2 M 56
Y 3.T 22/2:2 C 27
Y 3.T 22/2:2/2003012473
Y 3.T 22/2:2 AU 8/2/V.1-2
Y 3.T 22/2:2 C 73/4
Y 3.T 22/2:2 T 67
Y 3.T 22/2:2 C 76/2
Y 3.T 22/2:2 T 68/4
Y 3.T 22/2:2 EN 2/8/PT.1-
Y 3.T 22/2:2 P 56
Y 3.T 22/2:2 EX 7
Y 3.T 22/2:2/2003012313
Y 3.T 22/2:2 T 22/2
Y 3.T 22/2:2 OI 5/V.1-2
Y 3.T 22/2:2 R 13/4
Y 3.T 22/2:2 OC 2/2
Y 3.T 22/2:2 C 82/NO.-
Y 3.T 22/2:2/2003012291
Y 3.T 22/2:2 C 73/3/UPDATE
Y 3.T 22/2:2 G 28
Y 3.T 22/2:2 N 88/3
Y 3.T 22/2:2 C 16/2
Y 3.T 22/2:2 C 73/5
Y 3.T 22/2:2 OC 2/3/V.1-2
Y 3.T 22/2:2 P 27
Y 3.T 22/2:2 SO 4/2
Y 3.T 22/2:2 C 73/6
Y 3.T 22/2:2 SO 8
Y 3.T 22/2:2 F 65
Y 3.T 22/2:2 M 69
Y 3.T 22/2:2 V 13/2
Y 3.T 22/2:2 R 11
Y 3.T 22/2:2 C 63/4
Y 3.T 22/2:2 R 57
Y 3.T 22/2:2 EN 2/10
Y 3.T 22/2:2 EL 2
Y 3.T 22/2:2 P 81
Y 3.T 22/2:2 C 82/NO.2/CASE 2
Y 3.T 22/2:2 C 82/NO. 2/CASE 15
Y 3.T 22/2:2 C 82/NO.2/CASE 1
Y 3.T 22/2:2 C 82/NO.2/CASE 17
Y 3.T 22/2:2 T 22/6
Y 3.T 22/2:2 F 95/2/NO.1
Y 3.T 22/2:2 C 49
Y 3.T 22/2:2 AI 7/2
Y 3.T 22/2:2 C 82/NO.2/CASE 5
Y 3.T 22/2:2 G 51
Y 3.T 22/2:2 EN 8/976-80
Y 3.T 22/2:2 F 73/7
Y 3.T 22/2:2 AI 7/3
Y 3.T 22/2:2/2003012587
Y 3.T 22/2:2 EL 2/2
Y 3.T 22/2:2 AU 8/3
Y 3.T 22/2:2 T 22/7
Y 3.T 22/2:2 C 86/2
Y 3.T 22/2:2 M 46/4
Y 3.T 22/2:2 IN 3/2
Y 3.T 22/2:2 M 46/5
Y 3.T 22/2:2 D 84/3
Y 3.T 22/2:2 T 22/8
Y 3.T 22/2:2 IN 2
Y 3.T 22/2:2/2003012249
Y 3.T 22/2:2 T 22/6/NO. 2
Y 3.T 22/2:2 P 91
Y 3.T 22/2:2 G 28/2
Y 3.T 22/2:2 IN 2/2
Y 3.T 22/2:2 C 82/2/CASE 23
Y 3.T 22/2:2 W 29/2/FOREIGN
Y 3.T 22/2:2 P 69
Y 3.T 22/2:2 W 85/V.1-2
Y 3.T 22/2:2 W 29/2
Y 3.T 22/2:2 T 22/6/NO.1
Y 3.T 22/2:2 EL 2/3
Y 3.T 22/2:2 M 33
Y 3.T 22/2:2 R 13/5
Y 3.T 22/2:2 C 73/7
Y 3.T 22/2:2 C 82/2/CASE 25
Y 3.T 22/2:2 N 88/4
Y 3.T 22/2:2 C 82/2/CASE 26
Y 3.T 22/2:2 T 75/2
Y 3.T 22/2:2 EN 2/11
Y 3.T 22/2:2 C 73/8
Y 3.T 22/2:2 N 39
Y 3.T 22/2:2 AC 4
Y 3.T 22/2:2 AR 5
Y 3.T 22/2:2 T 22/10
Y 3.T 22/2:2 T 22/12
Y 3.T 22/2:2 C 63/5
Y 3.T 22/2:2 M 46/6
Y 3.T 22/2:2 T 22/13
Y 3.T 22/2:2 OI 5/6
Y 3.T 22/2:2 AI 7/4
Y 3.T 22/2:2 F 49
Y 3.T 22/2:2 C 82/2/CASE 27
Y 3.T 22/2:2 F 31
Y 3.T 22/2:2 G 91/V.1-<2 >
Y 3.T 22/2:2 C 49/2
Y 3.T 22/2:2 H 88
Y 3.T 22/2:2 C 82/2/CASE 29
Y 3.T 22/2:2 C 82/2/CASE 30
Y 3.T 22/2:2 C 82/2/CASE 28
Y 3.T 22/2:2 C 82/2/CASE 31
Y 3.T 22/2:2 B 62
Y 3.T 22/2:2 C 82/2/CASE 32
Y 3.T 22/2:2 IN 3/3
Y 3.T 22/2:2 AG 8
Y 3.T 22/2:2 G 21/4
Y 3.T 22/2:2 R 11/2/985
Y 3.T 22/2:2 P 92
Y 3.T 22/2:2 OI 5/7
Y 3.T 22/2:2 SU 7
Y 3.T 22/2:2 ST 8
Y 3.T 22/2:2 C 82/NO.2/CASE 13
Y 3.T 22/2:2 AG 8/2
Y 3.T 22/2:2 IN 8/2
Y 3.T 22/2:2 EL 2/4
Y 3.T 22/2:2 T 22/14/985
Y 3.T 22/2:2 M 33/SUPP.2
Y 3.T 22/2:2 B 52
Y 3.T 22/2:2 C 82/2/CASE 34
Y 3.T 22/2:2 C 82/2/CASE 33
Y 3.T 22/2:2 C 82/2/CASE 35
Y 3.T 22/2:2 M 69/2
Y 3.T 22/2:2 W 37
Y 3.T 22/2:2 B 52/2
Y 3.T 22/2:2 EL 2/5
Y 3.T 22/2:2 H 75
Y 3.T 22/2:2 R
Y 3.T 22/2:2 AN 5
Y 3.T 22/2:2 T 22/15
Y 3.T 22/2:2 P 56/2
Y 3.T 22/2:2 F 31/2
Y 3.T 22/2:2 M 58
Y 3.T 22/2:2 T 22/17
Y 3.T 22/2:2 T 68/5
Y 3.T 22/2:2/2003012511
Y 3.T 22/2:2 SU 7/2
Y 3.T 22/2:2 IN 8/3
Y 3.T 22/2:2 C 76/4/NO.1
Y 3.T 22/2:2 IN 2/3
Y 3.T 22/2:2 SM 7
Y 3.T 22/2:2 H 35
Y 3.T 22/2:2 M 66
Y 3.T 22/2:2 EL 2/6
Y 3.T 22/2:2 T 68/6
Y 3.T 22/2:2 OC 2/4
Y 3.T 22/2:2 AG 8/3
Y 3.T 22/2:2 N 81
Y 3.T 22/2:2 AU 8/4
Y 3.T 22/2:2 SP 1
Y 3.T 22/2:2 W 28
Y 3.T 22/2:2 T 22/20
Y 3.T 22/2:2 T 67/2
Y 3.T 22/2:2 P 69/2
Y 3.T 22/2:2 T 22/21
Y 3.T 22/2:2 T 22/18
Y 3.T 22/2:2 T 22/22
Y 3.T 22/2:2 SO 1
Y 3.T 22/2:2 C 43
Y 3.T 22/2:2 C 82/2/abst./
Y 3.T 22/2:2 D 84/4
Y 3.T 22/2:2 B 52/3
Y 3.T 22/2:2 T 31
Y 3.T 22/2:2 Au 8/5/v.1
Y 3.T 22/2:2 W 28/2
Y 3.T 22/2:2 R 31/2
Y 3.T 22/2:2 T 67/3
Y 3.T 22/2:2 N 81/2/v.1-
Y 3.T 22/2:2 P 76
Y 3.T 22/2:2 IN 8/4
Y 3.T 22/2:2 T 22/24
Y 3.T 22/2:2 L 62
Y 3.T 22/2:2 M 33/2
Y 3.T 22/2:2 T 22/22/PAPER
Y 3.T 22/2:2 SCI 2
Y 3.T 22/2:2 AC 7
Y 3.T 22/2:2 UN 2
Y 3.T 22/2:2 EL 2/7
Y 3.T 22/2:2 M 66/2
Y 3.T 22/2:2 ST 2
Y 3.T 22/2:2 D 36
Y 3.T 22/2:2 C 17/2
Y 3.T 22/2:2 C 82/2/CASE 38
Y 3.T 22/2:2 C 76/6
Y 3.T 22/2:2 SCI 2/2
Y 3.T 22/2:2 AC 7/2
Y 3.T 22/2:2 H 34/3
Y 3.T 22/2:2 IN 3/8
Y 3.T 22/2:2 D 36/2
Y 3.T 22/2:2 UR 1
Y 3.T 22/2:2 B 64
Y 3.T 22/2:2 T 22/25
Y 3.T 22/2:2 G 76
Y 3.T 22/2:2 SE 4
Y 3.T 22/2:2 AC 7/3
Y 3.T 22/2:2 OI 5/8
Y 3.T 22/2:2 C 86/3
Y 3.T 22/2:2 C 82/2/CASE 37
Y 3.T 22/2:2 SU 7/4
Y 3.T 22/2:2 ED 8/2
Y 3.T 22/2:2 ED 8/2/PT.1/FEDERAL
Y 3.T 22/2:2 ED 8/2/PT.1/SCIENCE
Y 3.T 22/2:2 ED 8/2/PT.2/INDUST.
Y 3.T 22/2:2 ED 8/2/PT.3/IDENT.
Y 3.T 22/2:2 ED 8/2/PT.3/IMAGES
Y 3.T 22/2:2 ED 8/2/PT.4/APOLLO
Y 3.T 22/2:2 ED 8/2/PT.4/INSTIT.
Y 3.T 22/2:2 ED 8/2/PT.4/ISSUES
Y 3.T 22/2:2 ED 8/2/PT.4/PERSIS.
Y 3.T 22/2:2 ED 8/2/PT.5/JAPAN
Y 3.T 22/2:2 ED 8/2/PT.5/SOVIET
Y 3.T 22/2:2 P 29/2
Y 3.T 22/2:2 G 28/3
Y 3.T 22/2:2 C 73/11
Y 3.T 22/2:2 AC 7/4
Y 3.T 22/2:2/2003012260
Y 3.T 22/2:2 L 62/2
Y 3.T 22/2:2 D 46
Y 3.T 22/2:2 SA 1
Y 3.T 22/2:2 M 46/11
Y 3.T 22/2:2 EL 2/8
Y 3.T 22/2:2 M 46/12
Y 3.T 22/2:2 P 87
Y 3.T 22/2:2 D 45
Y 3.T 22/2:2 M 33/SUPP.
Y 3.T 22/2:2 AF 8
Y 3.T 22/2:2 B 52/5
Y 3.T 22/2:2 P 43/3
Y 3.T 22/2:2 G 46
Y 3.T 22/2:2 L 37
Y 3.T 22/2:2 SA 1/2
Y 3.T 22/2:2 C 79
Y 3.T 22/2:2 M 46/13
Y 3.T 22/2:2 SU 7/5
Y 3.T 22/2:2 G 76/2
Y 3.T 22/2:2 SA 1/3
Y 3.T 22/2:2 ED 8/3
Y 3.T 22/2:2 B 52/4/V.5
Y 3.T 22/2:2 C 45
Y 3.T 22/2:2 G 76/3
Y 3.T 22/2:2 D 62
Y 3.T 22/2:2 B 52/6
Y 3.T 22/2:2 EL 2/9
Y 3.T 22/2:2 ED 3
Y 3.T 22/2:2 C 73/12
Y 3.T 22/2:2 OR 1
Y 3.T 22/2:2 R 88
Y 3.T 22/2:2 AD 7
Y 3.T 22/2:2 UR 1/2
Y 3.T 22/2:2 ST 2/2
Y 3.T 22/2:2 OI 5/9
Y 3.T 22/2:2 C 58/2
Y 3.T 22/2:2 P 75
Y 3.T 22/2:2 N 88/5
Y 3.T 22/2:2 L 47
Y 3.T 22/2:2 C 79/2
Y 3.T 22/2:2 P 92/2
Y 3.T 22/2:2 P 25
Y 3.T 22/2:2 R 88/2
Y 3.T 22/2:2 C 73/13
Y 3.T 22/2:2 C 33
Y 3.T 22/2:2 M 28
Y 3.T 22/2:2 SP 1/2
Y 3.T 22/2:2 IN 2/4
Y 3.T 22/2:2 H 34/4
Y 3.T 22/2:2 F 82
Y 3.T 22/2:2 AM 3
Y 3.T 22/2:2 AG 8/4
Y 3.T 22/2:2 AC 7/5
Y 3.T 22/2:2 N 39/2
Y 3.T 22/2:2 SP 1/3
Y 3.T 22/2:2 R 24
Y 3.T 22/2:2 P 58
Y 3.T 22/2:2 EN 2/12
Y 3.T 22/2:2 AM 3/2
Y 3.T 22/2:2 T 67/4
Y 3.T 22/2:2 ST 8/2
Y 3.T 22/2:2 G 28/4
Y 3.T 22/2:2 L 81
Y 3.T 22/2:2 EL 2/10
Y 3.T 22/2:2 G 21/5/sum.
Y 3.T 22/2:2 SU 7/6
Y 3.T 22/2:2 G 28/5/sum.
Y 3.T 22/2:2 C 16/3/sum.
Y 3.T 22/2:2 W 89/sum.
Y 3.T 22/2:2 C 16/4
Y 3.T 22/2:2 H 34/5
Y 3.T 22/2:2 B 43
Y 3.T 22/2:2 H 34/5/sum.
Y 3.T 22/2:2 G 21/5
Y 3.T 22/2:2 OI 5/10
Y 3.T 22/2:2 AR 7
Y 3.T 22/2:2 St 2/3/sum.
Y 3.T 22/2:2 M 66/3
Y 3.T 22/2:2 C 58/3/sum.
Y 3.T 22/2:2 C 58/3
Y 3.T 22/2:2 D 36/3/sum.
Y 3.T 22/2:2 T 27/sum.
Y 3.T 22/2:2 EN 8/2
Y 3.T 22/2:2 D 36/3
Y 3.T 22/2:2 F 31/3/sum.
Y 3.T 22/2:2 C 43/2
Y 3.T 22/2:2 Ad 7/2/v.1-3
Y 3.T 22/2:2 G 62/sum.
Y 3.T 22/2:2 B 52/7
Y 3.T 22/2:2 AG 8/5
Y 3.T 22/2:2 F 82/impact
Y 3.T 22/2:2 F 82/benefit
Y 3.T 22/2:2 Am 3/3/sum.
Y 3.T 22/2:2 F 82/federal
Y 3.T 22/2:2 G 62
Y 3.T 22/2:2 C 73/14
Y 3.T 22/2:2 G 51/2/sum.
Y 3.T 22/2:2 G 51/2
Y 3.T 22/2:2 C 73/13/v.2/pt.1/track.
Y 3.T 22/2:2 C 73/13/v.2/pt.2/charac.
Y 3.T 22/2:2 C 73/13/v.2/pt.5/system
Y 3.T 22/2:2 F 31/invent.
Y 3.T 22/2:2 P 87/review
Y 3.T 22/2:2 M 46/12/release
Y 3.T 22/2:2 Ac 7/3/effect.
Y 3.T 22/2:2 M 66/2/pt.2/data
Y 3.T 22/2:2 M 66/2/pt.2/impact
Y 3.T 22/2:2 L 62/v.1/pt.1/prolon.
Y 3.T 22/2:2 M 33/2/cont.
Y 3.T 22/2:2 H 34/3/child
Y 3.T 22/2:2 P 87/comput.
Y 3.T 22/2:2 B 52/4/pt.1/biotec.
Y 3.T 22/2:2 M 46/12/suit.
Y 3.T 22/2:2 P 87/assess.
Y 3.T 22/2:2 M 66/2/pt.1/diag.
Y 3.T 22/2:2 M 66/2/pt.1/epid.
Y 3.T 22/2:2 M 66/2/pt.2/eco.
Y 3.T 22/2:2 M 66/2/pt.2/nurs.
Y 3.T 22/2:2 M 66/2/pt.3/eval.
Y 3.T 22/2:2 M 66/2/pt.2/care.
Y 3.T 22/2:2 M 66/2/pt.3/atlan.
Y 3.T 22/2:2 M 66/2/pt.3/family
Y 3.T 22/2:2 M 66/2/pt.3/instit.
Y 3.T 22/2:2 M 46/12/dev.
Y 3.T 22/2:2 M 66/2/pt.2/fin.
Y 3.T 22/2:2 B 52/4/pt.2/collab.
Y 3.T 22/2:2 B 52/4/pt.3/public
Y 3.T 22/2:2 D 36/4
Y 3.T 22/2:2 M 46/12/effects
Y 3.T 22/2:2 P 87/educat./pts.1-5
Y 3.T 22/2:2 B 52/4/v.3/pt.1/field
Y 3.T 22/2:2 In 3/8/v.4/social
Y 3.T 22/2:2 AU 8/6
Y 3.T 22/2:2 B 57/8
Y 3.T 22/2:2 Ac 7/3/effect.-2
Y 3.T 22/2:2 El 2/7/v.2/social
Y 3.T 22/2:2 El 2/7/v.2/psych.
Y 3.T 22/2:2 B 52/4/v.5/pt.2/req.
Y 3.T 22/2:2 M 66/2/patient
Y 3.T 22/2:2 L 47/tech.
Y 3.T 22/2:2 El 2/9/v.2/pt.D/elect.
Y 3.T 22/2:2 M 66/2/surr.
Y 3.T 22/2:2 L 62/v.3/life
Y 3.T 22/2:2 L 47/study
Y 3.T 22/2:2 L 62/v.1/pt.1/renal
Y 3.T 22/2:2 El 2/9/v.2/pt.C/elect.
Y 3.T 22/2:2 L 62/v.1/pt.1/cardio.
Y 3.T 22/2:2 L 62/v.1/pt.1/hemodi.
Y 3.T 22/2:2 L 62/v.3/dist.
Y 3.T 22/2:2 L 62/v.3/ethical
Y 3.T 22/2:2 L 62/v.4/Japan
Y 3.T 22/2:2 M 66/2/issues
Y 3.T 22/2:2 AM 3/4
Y 3.T 22/2:2 L 47/role
Y 3.T 22/2:2 B 57/9/sum.
Y 3.T 22/2:2 B 57/9
Y 3.T 22/2:2 L 47/dist.
Y 3.T 22/2:2 B 52/4/v.5/pt.1/intell.
Y 3.T 22/2:2 B 52/4/v.5/pt.3/agric.
Y 3.T 22/2:2 L 62/v.3/man.
Y 3.T 22/2:2 H 34/3/eval.
Y 3.T 22/2:2 L 62/v.3/geriat.
Y 3.T 22/2:2 M 66/2/legal
Y 3.T 22/2:2 L 62/v.4/Canada
Y 3.T 22/2:2 L 62/v.4/Germany
Y 3.T 22/2:2 L 62/v.4/Yugosl.
Y 3.T 22/2:2 Af 8/v.2/pt.A/cont.
Y 3.T 22/2:2 Af 8/v.2/pt.B/cont.
Y 3.T 22/2:2 Af 8/v.2/pt.C-1/cont.
Y 3.T 22/2:2 Af 8/v.2/pt.C-2/cont.
Y 3.T 22/2:2 M 66/2/pt.3/resid.
Y 3.T 22/2:2 M 66/2/pt.3/urinary
Y 3.T 22/2:2 L 47/evolu.
Y 3.T 22/2:2 In 3/8/v.1/resear.
Y 3.T 22/2:2 In 3/8/v.2/preven.
Y 3.T 22/2:2 L 62/v.1/pt.1/report
Y 3.T 22/2:2 L 62/v.4/Italy
Y 3.T 22/2:2 In 3/9/public
Y 3.T 22/2:2 In 3/9/public-2
Y 3.T 22/2:2 In 3/9/public-3
Y 3.T 22/2:2 M 66/2/pt.1/dem.
Y 3.T 22/2:2 El 2/7/v.2/motiva.
Y 3.T 22/2:2 P 87/comput.-2
Y 3.T 22/2:2 B 52/4/v.5/pt.5/commer.
Y 3.T 22/2:2 L 62/v.4/China
Y 3.T 22/2:2 L 47/evalua.
Y 3.T 22/2:2 M 66/2/pt.3/surv.
Y 3.T 22/2:2 M 66/2/pt.3/senior
Y 3.T 22/2:2 Ec 7/sum.
Y 3.T 22/2:2 Au/8/7/sum.
Y 3.T 22/2:2 L 62/v.3/class.
Y 3.T 22/2:2 Oi 5/11/sum.
Y 3.T 22/2:2 In 3/9/survey
Y 3.T 22/2:2 B 52/4/v.5/pt.4/ethical
Y 3.T 22/2:2 EC 7
Y 3.T 22/2:2 El 2/9/v.2/pt.A/elect.
Y 3.T 22/2:2 L 47/effects
Y 3.T 22/2:2 R 11/3
Y 3.T 22/2:2 N 39/3
Y 3.T 22/2:2 P 87/mech.
Y 3.T 22/2:2 T 22/24/v.2/pt.1/China
Y 3.T 22/2:2 L 62/v.2/pt.2/tech.
Y 3.T 22/2:2 T 22/24/v.2/pt.2/China
Y 3.T 22/2:2 El 2/7/v.1/privacy
Y 3.T 22/2:2 L 62/v.2/pt.2/life
Y 3.T 22/2:2 L 62/v.2/pt.2/nutrit.
Y 3.T 22/2:2 L 62/v.2/pt.2/nutrit.-2
Y 3.T 22/2:2 El 2/7/v.1/emp.
Y 3.T 22/2:2 El 2/7/v.1/emp.-2
Y 3.T 22/2:2 T 22/24/v.2/pt.1/rail.
Y 3.T 22/2:2 T 22/24/v.2/pt.2/polit.
Y 3.T 22/2:2 El 2/9/v.2/pt.B/elect.
Y 3.T 22/2:2 G 28/3/trans.
Y 3.T 22/2:2 T 22/24/v.2/pt.2/americ.
Y 3.T 22/2:2 T 22/24/v.2/pt.2/nation.
Y 3.T 22/2:2 T 22/24/v.2/pt.2/trans.
Y 3.T 22/2:2 El 2/7/v.1/context
Y 3.T 22/2:2 El 2/7/v.1/inter.
Y 3.T 22/2:2 G 28/3/v.1/biblio.
Y 3.T 22/2:2 G 28/3/v.2/mapping
Y 3.T 22/2:2 G 28/3/trans.-2
Y 3.T 22/2:2 In 3/8/v.3/econom.
Y 3.T 22/2:2 H 34/3/medica.
Y 3.T 22/2:2 H 34/3/note
Y 3.T 22/2:2 H 34/3/preven.
Y 3.T 22/2:2 In 3/9/decis.
Y 3.T 22/2:2 In 3/9/perspe.
Y 3.T 22/2:2 Ac 7/3/changes
Y 3.T 22/2:2 N 39/2/assess.
Y 3.T 22/2:2 N 39/2/econom.
Y 3.T 22/2:2 N 39/2/federal
Y 3.T 22/2:2 N 39/2/inter.
Y 3.T 22/2:2 N 39/2/neurot.
Y 3.T 22/2:2 G 62/finance
Y 3.T 22/2:2 G 62/state
Y 3.T 22/2:2 T 22/24/v.2/pt.1/role
Y 3.T 22/2:2 T 22/24/v.2/pt.1/satel.
Y 3.T 22/2:2 G 62/region.
Y 3.T 22/2:2 T 28/sum.
Y 3.T 22/2:2 C 67/sum.
Y 3.T 22/2:2 D 62/2
Y 3.T 22/2:2 IM 6
Y 3.T 22/2:2 C 67
Y 3.T 22/2:2 T 27/2
Y 3.T 22/2:2 AL 1
Y 3.T 22/2:2 F 76/sum.
Y 3.T 22/2:2 EN 2/15
Y 3.T 22/2:2 M 46/16/sum.
Y 3.T 22/2:2 SE 2
Y 3.T 22/2:2 H 88/3
Y 3.T 22/2:2 G 28/5/v.1-3/cont.
Y 3.T 22/2:2 EL 2/11/V.1-
Y 3.T 22/2:2 B 57/10
Y 3.T 22/2:2 C 99/SUM.
Y 3.T 22/2:2 G 82/SUMM.
Y 3.T 22/2:2 Al 9/sum.
Y 3.T 22/2:2 AG 8/6/SUM.
Y 3.T 22/2:2 M 57/SUM.
Y 3.T 22/2:2 AL 5
Y 3.T 22/2:2 ST 8/2/V.2/CONTRA.
Y 3.T 22/2:2 AL 9
Y 3.T 22/2:2 F 95/4/SUM.
Y 3.T 22/2:2 C 73/15/SUM.
Y 3.T 22/2:2 M 52
Y 3.T 22/2:2 OU 8
Y 3.T 22/2:2 M 46/15
Y 3.T 22/2:2 D 36/6
Y 3.T 22/2:2 B 96/2
Y 3.T 22/2:2 D 36/6/SUM.
Y 3.T 22/2:2 AD 9
Y 3.T 22/2:2 C 99
Y 3.T 22/2:2 C 64/SUM.
Y 3.T 22/2:2 C 42/2
Y 3.T 22/2:2 D 49
Y 3.T 22/2:2 AD 9/2/SUMM.
Y 3.T 22/2:2 P 96
Y 3.T 22/2:2 AD 9/2
Y 3.T 22/2:2 N 28
Y 3.T 22/2:2 F 76
Y 3.T 22/2:2 D 46/3
Y 3.T 22/2:2 D 46/4
Y 3.T 22/2:2 D 63/3
Y 3.T 22/2:2 AG 4
Y 3.T 22/2:2 C 64/993
Y 3.T 22/2:2 H 22/SUM.
Y 3.T 22/2:2 D 63/3/SUM
Y 3.T 22/2:2 H 22/993
Y 3.T 22/2:2 T 79
Y 3.T 22/2:2 R 11/4
Y 3.T 22/2:2 EL 2/12
Y 3.T 22/2:2 B 52/9
Y 3.T 22/2:2 B 52/8
Y 3.T 22/2:2 IN 2/6
Y 3.T 22/2:2 IN 2/8/SUM.
Y 3.T 22/2:2 EN 2/17
Y 3.T 22/2:2 H 34/8
Y 3.T 22/2:2 C 76/7
Y 3.T 22/2:2 P 96/2
Y 3.T 22/2:2 T 75/3/SUM.
Y 3.T 22/2:2 L 62/V.2/PT.2/CLINIC
Y 3.T 22/2:2 EX 7/3/SUM.
Y 3.T 22/2:2 H 34/9
Y 3.T 22/2:2 EN 2/18/SUM
Y 3.T 22/2:2 P 84
Y 3.T 22/2:2 F 95/5/SUM.
Y 3.T 22/2:2 SU 1/SUM.
Y 3.T 22/2:2 B 52/10
Y 3.T 22/2:2 M 91/2/SUM.
Y 3.T 22/2:2 P 84/2
Y 3.T 22/2:2 EN 2/18
Y 3.T 22/2:2 AL 1 S
Y 3.T 22/2:2:C 61/3
Y 3.T 22/2:2 SA 8
Y 3.T 22/2:2 SA 1/4/SUM.
Y 3.T 22/2:2 T 22/27
Y 3.T 22/2:2 AG 8/7
Y 3.T 22/2:2 R 92
Y 3.T 22/2:2 D 26/3
Y 3.T 22/2:2 H 34/12
Y 3.T 22/2:2 AD 9/4
Y 3.T 22/2:2 C 35
Y 3.T 22/2:2 P 43/5
Y 3.T 22/2:2 R 92
Y 3.T 22/2:2 L 52/V.1-5/CD
Y 3.T 22/2:2 C 61/2/SUM.
Y 3.T 22/2:2 H 34/13
Y 3.T 22/2:2/2003012322
Y 3.T 22/2:2/2003012523
Y 3.T 22/2:2/2003012589
Y 3.T 22/2:2/2003012593
Y 3.T 22/2:2/2003012588
Y 3.T 22/2:2 C 82/NO.2/CASE 7
Y 3.T 22/2:2 C 82/NO.2/CASE 6
Y 3.T 22/2:2 C 82/NO.2/CASE 8
Y 3.T 22/2:2 C 82/NO.2/CASE 16
Y 3.T 22/2:2 C 82/NO.2/CASE 11
Y 3.T 22/2:2 C 82/NO.2/CASE 14
Y 3.T 22/2:2 C 82/NO.2/CASE 4
Y 3.T 22/2:2 C 82/NO. 2/CASE 10
Y 3.T 22/2:2 C 82/NO.2/CASE 12
Y 3.T 22/2:2 C 82/NO.2/CASE 9
Y 3.T 22/2:2 M 56/2
Y 3.T 22/2:2 C 16/3
Y 3.T 22/2:2 EL 2/14
Y 3.T 22/2:2 W 89
Y 3.T 22/2:2 D 84/5
Y 3.T 22/2:2 M 46/14
Y 3.T 22/2:2 G 28/5
Y 3.T 22/2:2 D 35
Y 3.T 22/2:2 IN 8/5
Y 3.T 22/2:2 C 83
Y 3.T 22/2:2 F 31/3
Y 3.T 22/2:2 D 14
Y 3.T 22/2:2 EN 2/13
Y 3.T 22/2:2 W 28/3
Y 3.T 22/2:2 AM 3/3
Y 3.T 22/2:2 T 22/26
Y 3.T 22/2:2 T 68/7
Y 3.T 22/2:2 T 27
Y 3.T 22/2:2 EN 2/14
Y 3.T 22/2:2 T 22/26/COOPER.
Y 3.T 22/2:2 UN 3
Y 3.T 22/2:2 B 52/4/V.3/PT.2/FIELD
Y 3.T 22/2:2 OI 5/11
Y 3.T 22/2:2 AU 8/7
Y 3.T 22/2:2 M 66/4
Y 3.T 22/2:2 AI 7/5
Y 3.T 22/2:2 F 31/4
Y 3.T 22/2:2 H 88/2
Y 3.T 22/2:2 T 28
Y 3.T 22/2:2 G 51/3
Y 3.T 22/2:2 IN 2/5
Y 3.T 22/2:2 P 41/2
Y 3.T 22/2:2 C 73/15
Y 3.T 22/2:2 D 84/6
Y 3.T 22/2:2 T 67/5
Y 3.T 22/2:2 C 42
Y 3.T 22/2:2 D 36/5
Y 3.T 22/2:2 F 95/4
Y 3.T 22/2:2 C 23
Y 3.T 22/2:2 AG 8/6
Y 3.T 22/2:2 H 34/6
Y 3.T 22/2:2 M 57
Y 3.T 22/2:2 G 82
Y 3.T 22/2:2 P 75/2/V.1-2
Y 3.T 22/2:2 SE 1
Y 3.T 22/2:2 B 22
Y 3.T 22/2:2 SCI 2/4
Y 3.T 22/2:2 G 28/6
Y 3.T 22/2:2 G 28/7
Y 3.T 22/2:2 AL 3
Y 3.T 22/2:2 H 33
Y 3.T 22/2:2 G 74
Y 3.T 22/2:2 D 84/7
Y 3.T 22/2:2 EN 2/16
Y 3.T 22/2:2 F 91
Y 3.T 22/2:2 IN 2/7
Y 3.T 22/2:2 T 23
Y 3.T 22/2:2 M 91
Y 3.T 22/2:2 W 37/2
Y 3.T 22/2:2 M 46/17
Y 3.T 22/2:2 H 34/7
Y 3.T 22/2:2 G 51/4
Y 3.T 22/2:2 R 28
Y 3.T 22/2:2 P 49
Y 3.T 22/2:2 P 94
Y 3.T 22/2:2 T 68/8
Y 3.T 22/2:2 P 95
Y 3.T 22/2:2 C 61/2/V.1-2
Y 3.T 22/2:2 W 37/3
Y 3.T 22/2:2 EX 7/2
Y 3.T 22/2:2 B 43/V.-
Y 3.T 22/2:2 EX 7/3
Y 3.T 22/2:2 EL 2/13
Y 3.T 22/2:2 F 95/5
Y 3.T 22/2:2 H 34/10
Y 3.T 22/2:2 OS 7
Y 3.T 22/2:2 IN 2/8/REPORT
Y 3.T 22/2:2 P 94/2
Y 3.T 22/2:2 SE 2/2
Y 3.T 22/2:2 H 34/11
Y 3.T 22/2:2 SU 1
Y 3.T 22/2:2 M 91/2
Y 3.T 22/2:2 AV 5
Y 3.T 22/2:2 C 66/2
Y 3.T 22/2:2 ST 9
Y 3.T 22/2:2 P 43/4
Y 3.T 22/2:2 P 93/2
Y 3.T 22/2:2 SP 1/4
Y 3.T 22/2:2 SA 1/4/REPT.
Y 3.T 22/2:2 W 74
Y 3.T 22/2:2 T 23/2
Y 3.T 22/2:2 R 29/2
Y 3.T 22/2:2 EA 7
Y 3.T 22/2:2 F 98
Y 3.T 22/2:2 AR 2
Y 3.T 22/2:2 W 89/2
Y 3.T 22/2:2 M 74/2
Y 3.T 22/2:2 P 19
Y 3.T 22/2:2 R 31/3
Y 3.T 22/2:2 G 51/5
Y 3.T 22/2:2 ST 9/2
Y 3.T 22/2:2 T 17
Y 3.T 22/2:2 T 61
Y 3.T 22/2:2 AN 8
Y 3.T 22/2:2 F 52
Y 3.T 22/2:2 G 23
Y 3.T 22/2:2 SO 1/2
Y 3.T 22/2:2 M 77
Y 3.T 22/2:2 AD 7/2/V.1-3
Y 3.T 22/2:2 H 88/3-2
Y 3.T 22/2:2 AD 9/4
Y 3.T 22/2:2/AG 8/6
Y 3.T 22/2:2 AG 8/6/SUM.
Y 3.T 22/2:2 AL 5
Y 3.T 22/2:2 AL 9/SUM.
Y 3.T 22/2:2 AM 3/COMP.
Y 3.T 22/2:2 AM 3/ECON.
Y 3.T 22/2:2 AS 7/2
Y 3.T 22/2:2 AU 8/3/SUM.
Y 3.T 22/2:2 B 57/10
Y 3.T 22/2:2 B 43
Y 3.T 22/2:2 C 16/2
Y 3.T 22/2:2 C 23
Y 3.T 22/2:2 C 42
Y 3.T 22/2:2 C 58
Y 3.T 22/2:2 C 63/4
Y 3.T 22/2:2 C 67/SUM.
Y 3.T 22/2:2 C 73/15/SUM.
Y 3.T 22/2:2 C 99
Y 3.T 22/2:2 D 36/5
Y 3.T 22/2:2 D 84
Y 3.T 22/2:2 D 84/6
Y 3.T 22/2:2 D 84/6/SUM.
Y 3.T 22/2:2 EN 2/3
Y 3.T 22/2:2 F 73/5
Y 3.T 22/2:2 F 73/7/SUM.
Y 3.T 22/2:2 F 95/3
Y 3.T 22/2:2 F 95/4
Y 3.T 22/2:2 F 95/4/SUM.
Y 3.T 22/2:2 G 21/2
Y 3.T 22/2:2 H 35
Y 3.T 22/2:2 H 88/3
Y 3.T 22/2:2 IN 3/9/REPORT
Y 3.T 22/2:2 IN 3/9/TECH.
Y 3.T 22/2:2 IN 3/9/SUM.
Y 3.T 22/2:2 IN 8/3
Y 3.T 22/2:2 M 28
Y 3.T 22/2:2 M 41
Y 3.T 22/2:2 M 46/16/SUM.
Y 3.T 22/2:2 M 52
Y 3.T 22/2:2 N 39/2
Y 3.T 22/2:2 N 39/2/SUM.
Y 3.T 22/2:2 N 88/4
Y 3.T 22/2:2 OI 5
Y 3.T 22/2:2 OI 5/2
Y 3.T 22/2:2 OI 5/3
Y 3.T 22/2:2 P 87/ANALYS.
Y 3.T 22/2:2 P 87/INFLUE.
Y 3.T 22/2:2 P 87/SUPPORT
Y 3.T 22/2:2 P 87/TECH.
Y 3.T 22/2:2 P 96
Y 3.T 22/2:2 R 24
Y 3.T 22/2:2 SE 2
Y 3.T 22/2:2 SP 1/2
Y 3.T 22/2:2 SU 7/5
Y 3.T 22/2:2 T 22/7
Y 3.T 22/2:2 T 22/9
Y 3.T 22/2:2 T 67/983
Y 3.T 22/2:2 T 22/15/SUM.
Y 3.T 22/2:2 T 22/23
Y 3.T 22/2:2 T 22/26
Y 3.T 22/2:2 T 67/5
Y 3.T 22/2:2 T 68/6/SUM.
Y 3.T 22/2:2 T 75/3/SUM.
Y 3.T 22/2:2 W 28/2/ECO.
Y 3.T 22/2:2 W 55
Y 3.T 22/2:2 W 85/2
Y 3.T 22/2:2 G 82
Y 3.T 22/2:2 G 21
HE 20.8316:24/993
HE 20.8216:27/994
HE 20.8216:26/994
HE 20.3965:31
Y 3.T 22/2:2 Ai 5/sum.
Y 3.T 22/2:2 Au 8/5/v.2
Y 3.T 22/2:D 36/sum.
Y 3.T 22/2:2/2003012530
Y 3.T 22/2:2/2003012288
Y 3.T 22/2:2/2003012371
Y 3.T 22/2:2/2003012467
Y 3.T 22/2:2/2003012367
Y 3.T 22/2:2/2003012375
Y 3.T 22/2:2/2003012259
Y 3.T 22/2:2/2003012539
Y 3.T 22/2:2/2003012264
Y 3.T 22/2:2/2003012513
Y 3.T 22/2:2/2003012237
Y 3.T 22/2:2/2003012351
Y 3.T 22/2:2/2003012549
Y 3.T 22/2:2/2003012339
Y 3.T 22/2:2/2003012465
Y 3.T 22/2:2/2003012534
Y 3.T 22/2:2/2003012560
Y 3.T 22/2:2/2003012312
Y 3.T 22/2:2/2003012368
Y 3.T 22/2:2/2003012420
Y 3.T 22/2:2/2003012406
Y 3.T 22/2:2/2003012559
Y 3.T 22/2:OC 2/2
Y 3.T 22/2:W 85
Y 3.T 22/2:2 Ai 5
Y 3.T 22/2:2 Au 8/6
Y 3.T 22/2:2 B 65
Y 3.T 22/2:2 D 46/2
Y 3.T 22/2:2 AD 9/2
Y 3.T 22/2:2 AD 9/3
Y 3.T 22/2:N 28
Y 3.T 22:2 C 76/7
Y 3.T 22/2:2 M 91/SUM.
Y 3.T 22/2:2 ALIS
Y 3.T 22/2:2 El 2/11
Y 3.T 22/2:2 T 22/2 b
Y 3.T 22/2:2 T 68/2
Y 3.T 22/2:2 P 93
Y 3.T 22/2:AG 8/6
Y 3.T 22/2:2 B 65
Y 10.2:R 24/4
Y 3.T 22/2:2 T 2
C 3.24/8:MC 77-I-20 E-2 (P)
