package Text::SuDocs;
use Any::Moose;
use Try::Tiny;
use Data::Dumper;

has [qw(original agency)] => (
    is => 'rw',
    isa => 'Str',
    );

has [qw(subagency series document year)] => (
    is => 'rw',
    isa => 'Int',
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
}

sub set {
}

sub as_string {
}

1;

# ABSTRACT: parse and normalize SuDocs numbers
