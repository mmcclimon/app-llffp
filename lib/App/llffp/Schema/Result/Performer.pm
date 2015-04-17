package App::llffp::Schema::Result::Performer;
use base qw{DBIx::Class::Core};

use warnings;
use strict;

# This class uses the "performer" table
__PACKAGE__->table('performer');

__PACKAGE__->add_columns(
    id => {
        accessor => 'id',
        data_type => 'integer',
        is_nullable => 0,
        is_auto_increment => 1,
    },
    last_name => {
        data_type => 'varchar',
        size => 256,
        is_nullable => 0,
    },
    first_name => {
        data_type => 'varchar',
        size => 256,
        is_nullable => 1,
    },
    birth_date => {
        data_type => 'integer',
        is_nullable => 1,
    },
    death_date => {
        data_type => 'integer',
        is_nullable => 1,
    },
);

__PACKAGE__->set_primary_key('id');

1;
