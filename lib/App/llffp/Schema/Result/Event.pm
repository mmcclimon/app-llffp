package App::llffp::Schema::Result::Event;
use base qw{DBIx::Class::Core};

use warnings;
use strict;

# This class uses the "event" table
__PACKAGE__->table('event');

__PACKAGE__->add_columns(
    id => {
        accessor => 'id',
        data_type => 'integer',
        is_nullable => 0,
        is_auto_increment => 1,
    },
    date => {
        data_type => 'datetime',
        is_nullable => 0,
    },
    location => {
        data_type => 'varchar',
        size => 256,
        is_nullable => 0,
    },
    title => {
        data_type => 'varchar',
        size => 256,
        is_nullable => 0,
    },
    description => {
        data_type => 'varchar',
        size => 1024,
        is_nullable => 1,
    },
);

__PACKAGE__->set_primary_key('id');

__PACKAGE__->has_many(
    performance => 'App::llffp::Schema::Result::Performance',
    'event_id'
);


1;
