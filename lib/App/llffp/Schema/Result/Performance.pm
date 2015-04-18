package App::llffp::Schema::Result::Performance;
use base qw{DBIx::Class::Core};

use warnings;
use strict;

# NB a "Performance" is a single rendition of a work. A single Event (concert,
# recital, etc.) typically has several individual Performances.

# This class uses the "piece" table
__PACKAGE__->table('performance');

__PACKAGE__->add_columns(
    id => {
        accessor => 'id',
        data_type => 'integer',
        is_nullable => 0,
        is_auto_increment => 1,
    },
);

# todo: relationships
#    - 1-1 Piece
#    - 1-many Performer

__PACKAGE__->set_primary_key('id');

1;
