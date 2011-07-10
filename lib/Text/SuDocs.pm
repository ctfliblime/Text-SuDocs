package Text::SuDocs;

# ABSTRACT: parse and normalize SuDocs numbers

use Any::Moose;
use Carp;
use Data::Dumper;

has [qw(original agency subagency series relatedseries document)] => (
    is => 'rw',
    isa => 'Maybe[Str]',
    );

around BUILDARGS => sub {
    my $orig = shift;
    my $class = shift;

    if (@_ == 1 && !ref $_[0]) {
        return $class->$orig(original => $_[0]);
    }
    else {
        return $class->$orig(@_);
    }
};

sub BUILD {
    my $self = shift;
    if($self->original) {
        $self->parse;
    }
}

sub parse {
    my $self = shift;
    my $original = shift // $self->original;
    return if ! defined $original;

    $original =~ qr{
        (\p{IsAlpha}+)\s*                         #Agency
        (\p{IsDigit}+)\s*\.\s*                    #Subagency
        (\p{IsAlnum}+)/?([\p{IsAlnum}-]+)?\s*:\s* #Series/RelSeries
        (.*)                                      #Document
        }x;
    #{ no warnings; print "$original\n>>>$1|$2|$3|$4|$5<<<\n";}
    croak if (!($1 && $2 && $3));
    $self->agency($1);
    $self->subagency($2);
    $self->series($3);
    $self->relatedseries($4);
    $self->document($5);
    #print Dumper $self;
}

sub class_stem {
}

sub set {
}

sub as_string {
}

1;
