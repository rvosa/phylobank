package Bio::Phylo::PhyloBank::View::HTML;

use strict;
use warnings;

use base 'Catalyst::View::TT';

__PACKAGE__->config(
    TEMPLATE_EXTENSION => '.tt',
    render_die => 1,
);

=head1 NAME

Bio::Phylo::PhyloBank::View::HTML - TT View for Bio::Phylo::PhyloBank

=head1 DESCRIPTION

TT View for Bio::Phylo::PhyloBank.

=head1 SEE ALSO

L<Bio::Phylo::PhyloBank>

=head1 AUTHOR

Rutger Vos

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
