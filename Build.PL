use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'String::JP::Hankaku',
    license             => 'perl',
    dist_author         => 'sasata299 <sasata299@livedoor.com>',
    dist_version_from   => 'lib/String/JP/Hankaku.pm',
    requires => {
        'Test::More' => 0,
        'version'    => 0,
    },
    add_to_cleanup      => [ 'String-JP-Hankaku-*' ],
);

$builder->create_build_script();
