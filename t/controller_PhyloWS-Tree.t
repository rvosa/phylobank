use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Bio::Phylo::PhyloBank';
use Bio::Phylo::PhyloBank::Controller::PhyloWS::Tree;

ok( request('/phylows/tree')->is_success, 'Request should succeed' );
done_testing();
