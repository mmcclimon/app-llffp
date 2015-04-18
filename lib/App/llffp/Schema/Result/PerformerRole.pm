package App::llffp::Schema::Result::PerformerRole;
use base qw{DBIx::Class::Core};

use warnings;
use strict;

# This keeps track of who did what on a particular performance

# This class uses the "piece" table
__PACKAGE__->table('performance_people_x');

# xxx this should probably use an enum for the roles
__PACKAGE__->add_columns(
    id => {
        accessor => 'id',
        data_type => 'integer',
        is_nullable => 0,
        is_auto_increment => 1,
    },
    performance_id => {
        data_type => 'integer',
        is_nullable => 0,
    },
    performer_id => {
        data_type => 'integer',
        is_nullable => 0,
    },
    role => {
        data_type => 'varchar',
        size => 256,
        is_nullable => 0,
    },
);

__PACKAGE__->set_primary_key('id');

# A performance is of a single piece
__PACKAGE__->belongs_to(
    performance => 'App::llffp::Schema::Result::Performance',
    'performance_id'
);

__PACKAGE__->belongs_to(
    performer => 'App::llffp::Schema::Result::Performer',
    'performer_id'
);



1;
