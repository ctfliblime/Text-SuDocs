package Text::SuDocs;

# ABSTRACT: parse and normalize SuDocs numbers

use Any::Moose;
use Carp;

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
}

sub normal_string {
    my $self = shift;
    my %args = (ref $_[0]) ? %{$_[0]} : @_;

    my $sudocs = sprintf(
        '%s %d.%s%s',
        $self->agency,
        $self->subagency,
        $self->series,
        ($self->relatedseries) ? '/'.$self->relatedseries : '',
        );
    unless ($args{class_stem}) {
        $sudocs .= ': '.$self->document;
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
