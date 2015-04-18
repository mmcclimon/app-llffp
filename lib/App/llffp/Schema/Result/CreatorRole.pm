package App::llffp::Schema::Result::CreatorRole;
use base qw{DBIx::Class::Core};

use warnings;
use strict;

# This keeps track of who composed/arranged what for a particular piece

# This class uses the "piece" table
__PACKAGE__->table('creator_piece_x');

# xxx this should probably use an enum for the roles
__PACKAGE__->add_columns(
    id => {
        accessor => 'id',
        data_type => 'integer',
        is_nullable => 0,
        is_auto_increment => 1,
    },
    creator_id => {
        data_type => 'integer',
        is_nullable => 0,
    },
    piece_id => {
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
    creator => 'App::llffp::Schema::Result::Creator',
    'creator_id'
);

__PACKAGE__->belongs_to(
    piece => 'App::llffp::Schema::Result::Piece',
    'piece_id'
);



1;
