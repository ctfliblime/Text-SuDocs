package Text::SuDocs;

# ABSTRACT: parse and normalize SuDocs numbers

use Any::Moose;
use Carp;

our @subfields = qw{agency subagency committee series relatedseries document};

has [qw(original), @subfields] => (
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

    chomp($original);
    croak 'Invalid characters' if $original =~ qr{[^\p{IsAlnum}\s:/\-.<>]};

    $original =~ qr{
        (\p{IsAlpha}+)\s*                         #Agency
        (\p{IsDigit}+)\s*\.\s*                    #Subagency
        (?:(\p{IsAlpha}+)\s+)?                    #Committee
        (\p{IsAlnum}+)(?:/([\p{IsAlnum}-]+))?\s*:\s*  #Series/RelSeries
        (.*)                                      #Document
        }x;
    croak 'Unable to determine stem' if (!($1 && $2 && $4));
    $self->agency($1);
    $self->subagency($2);
    $self->committee($3);
    $self->series($4);
    $self->relatedseries($5);
    $self->document($6);
}

sub normal_string {
    my $self = shift;
    my %args = (ref $_[0]) ? %{$_[0]} : @_;

    my $sudocs = sprintf(
        '%s %d.%s%s%s',
        $self->agency,
        $self->subagency,
        ($self->committee) ? $self->committee . q{ } : '',
        $self->series,
        ($self->relatedseries) ? '/'.$self->relatedseries : '',
        );
    unless ($args{class_stem}) {
        $sudocs .= ':'.$self->document;
    }
    return $sudocs;
}

sub sortable_string {
    my $self = shift;
    my $args = shift // {};

    if ($args->{class_stem}) {
        
    }
}

1;
