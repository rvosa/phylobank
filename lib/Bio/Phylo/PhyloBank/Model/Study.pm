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

Catalyst Model. This model encapsulates a L<Bio::Phylo::Project> object that
gets populated by whatever means as specified by the controller (e.g. from a
database, a file, a string, a url). The model is subsequently passed to whatever
view is applicable, for example a web page template to described the study, or
a serializer that represents it in some machine-readable format.

=head1 AUTHOR

Rutger Vos

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;