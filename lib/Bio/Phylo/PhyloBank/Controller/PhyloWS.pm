package Bio::Phylo::PhyloBank::Controller::PhyloWS;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

Bio::Phylo::PhyloBank::Controller::PhyloWS - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller. This controller (and its child classes in the subtended
folder) is dispatched on URIs that uniquely identify objects (taxa, trees,
matrices or studies), in which case that object will be located and encapsulated
in the right model to pass to the view. The controller is also dispatched on
search queries, in which case the Searcher model is passed to the view.

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

=head2 template

=cut

sub template {
    my ( $self, $c ) = @_;
    my $class = ref $self;
    $class =~ s/.+://;
    $c->config->{$class};
}

=head2 lookup

=cut

sub lookup :LocalRegex('^(TB2:.+)') :Args(0) {
    my ( $self, $c ) = @_;
    my $captures = $c->request->captures;
    my ($id) = @{ $captures };
    $c->stash->{project} = $c->model('Study')->project;
    $c->stash->{project}->clear();
    $c->stash->{project}->set_datasource(
        '-file'   => $c->config->{filestore} . $id . '.js',
        '-format' => 'json'
    );
    $c->stash->{template} = $self->template($c);
    $c->forward( $c->view('HTML') );
}

=head1 AUTHOR

Rutger Vos

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
