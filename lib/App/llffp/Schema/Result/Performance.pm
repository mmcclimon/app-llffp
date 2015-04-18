package App::llffp::Schema::Result::Performance;
use base qw{DBIx::Class::Core};

use warnings;
use strict;

# NB a "Performance" is a single rendition of a work. A single Event (concert,
# recital, etc.) typically has several individual Performances.

# This class uses the "performance" table
__PACKAGE__->table('performance');

__PACKAGE__->add_columns(
    id => {
        accessor => 'id',
        data_type => 'integer',
        is_nullable => 0,
        is_auto_increment => 1,
    },
    piece_id => {
        data_type => 'integer',
        is_nullable => 0,
    },
    event_id => {
        data_type => 'integer',
        is_nullable => 0,
    },
);

__PACKAGE__->set_primary_key('id');

# A performance is of a single piece
__PACKAGE__->belongs_to(
    piece => 'App::llffp::Schema::Result::Piece',
    'piece_id'
);

__PACKAGE__->belongs_to(
    event => 'App::llffp::Schema::Result::Event',
    'event_id'
);


1;
