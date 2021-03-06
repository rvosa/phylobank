package Bio::Phylo::PhyloBank::Controller::PhyloWS::Taxon;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Bio::Phylo::PhyloBank::Controller::PhyloWS'; }

=head1 NAME

Bio::Phylo::PhyloBank::Controller::PhyloWS::Taxon - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched Bio::Phylo::PhyloBank::Controller::PhyloWS::Taxon in PhyloWS::Taxon.');
}


=head1 AUTHOR

Rutger Vos

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
