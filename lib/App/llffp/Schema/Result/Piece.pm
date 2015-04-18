package App::llffp::Schema::Result::Piece;
use base qw{DBIx::Class::Core};

use warnings;
use strict;

# This class uses the "piece" table
__PACKAGE__->table('piece');

__PACKAGE__->add_columns(
    id => {
        accessor => 'id',
        data_type => 'integer',
        is_nullable => 0,
        is_auto_increment => 1,
    },
    title => {
        data_type => 'varchar',
        size => 1024,
        is_nullable => 0,
    },
    number => {
        # an opus/catalog number or the like
        data_type => 'varchar',
        size => 256,
        is_nullable => 1,
    },
    date => {
        data_type => 'datetime',
        is_nullable => 1,
    },
);

__PACKAGE__->set_primary_key('id');

1;
