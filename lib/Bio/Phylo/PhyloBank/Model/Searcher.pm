package Bio::Phylo::PhyloBank::Model::Searcher;
use Moose;
use namespace::autoclean;

extends 'Catalyst::Model';

=head1 NAME

Bio::Phylo::PhyloBank::Model::Searcher - Catalyst Model

=head1 DESCRIPTION

Catalyst Model. This model represents a searcher for phylogenetic data. It gets
passed a search query (quite possibly in CQL) and knows how to execute it (e.g.
by translating the CQL to SPARQL or SQL and executing that on the triple store
or database). Subsequently, the model will hold a result set that can be passed
to a view, for example a web page that shows the search results, or an RSS feed.
The model must be able to page through those results, possibly by being part of
a session, or by limiting the result set to a specified range. Each result can
subsequently be de-referenced to yield a Study model during the next request.

=head1 AUTHOR

Rutger Vos

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
