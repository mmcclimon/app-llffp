use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'App::llffp',
    AUTHOR           => q{Michael McClimon <michael@mcclimon.org>},
    VERSION_FROM     => 'lib/App/llffp.pm',
    ABSTRACT_FROM    => 'lib/App/llffp.pm',
    LICENSE          => 'mit',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
        'DBIx::Class' => '0.082820',
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'DBD::SQLite'       => 1.0,
        'DBIx::Class'       => 0.08,
        'Moo'               => 2.0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'App-llffp-*' },
);
