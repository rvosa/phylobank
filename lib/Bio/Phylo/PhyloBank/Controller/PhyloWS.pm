package Bio::Phylo::PhyloBank::Controller::PhyloWS;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

Bio::Phylo::PhyloBank::Controller::PhyloWS - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched Bio::Phylo::PhyloBank::Controller::PhyloWS in PhyloWS.');
}

=head2 find

=cut

sub find :Path('find') :Args(0) {
    my ( $self, $c ) = @_;
    my $parameters = $c->request->parameters;
    my $query = $parameters->{'query'};
    $c->response->body('Search query "'.$query.'" to be executed by '.ref($self));
}

=head2 lookup

=cut

sub lookup :LocalRegex('^TB2:(.+)') :Args(0) {
    my ( $self, $c ) = @_;
    my $captures = $c->request->captures;
    my ($id) = @{ $captures };
    my $model = $c->model('Study')->project;
    $c->response->body('Lookup of '.$id.' to be executed by '.ref($self).' to return a '.ref($model));
}

=head1 AUTHOR

Rutger Vos

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
