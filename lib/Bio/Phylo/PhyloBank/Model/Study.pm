package Bio::Phylo::PhyloBank::Model::Study;
use Moose;
use Bio::Phylo::Project;
use namespace::autoclean;

extends 'Catalyst::Model';

has 'project' => (
    is  => 'ro',
    isa => 'Bio::Phylo::Project',
    default => sub { Bio::Phylo::Project->new },
);

=head1 NAME

Bio::Phylo::PhyloBank::Model::StudyModel - Catalyst Model

=head1 DESCRIPTION

Catalyst Model.

=head1 AUTHOR

Rutger Vos

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;