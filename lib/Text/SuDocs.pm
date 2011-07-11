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

around 'original' => sub {
    my $orig = shift;
    my $self = shift;

    if (scalar @_) {
        $self->$orig(@_);
        $self->parse();
    }

    return $self->$orig();
};

sub parse {
    my $self = shift;
    my $original = shift // $self->original;
    return if ! defined $original;

    for (qw(agency subagency series relatedseries document)) {
        $self->$_(qw{});
    }

    $original =~ qr{
        (\p{IsAlpha}+)\s*                         #Agency
        (\p{IsDigit}+)\s*\.\s*                    #Subagency
        (\p{IsAlnum}+)(/[\p{IsAlnum}-]+)?\s*:\s* #Series/RelSeries
        (.*)                                      #Document
        }x;
    croak if (!($1 && $2 && $3));
    $self->agency($1);
    $self->subagency($2);
    $self->series($3);
    if ($4) {
        my $rser = $4;
        $rser =~ s{^/}{};
        $self->relatedseries($rser);
    }
    $self->document($5);
    if (0) {
        no warnings;
        printf "%s\n>>>%s|%s|%s|%s|%s<<<\n",
            $self->original, $self->agency, $self->subagency,
            $self->series, $self->relatedseries, $self->document;
        #print Dumper $self;
    }
}

sub class_stem {
}

sub set {
}

sub as_string {
}

1;
