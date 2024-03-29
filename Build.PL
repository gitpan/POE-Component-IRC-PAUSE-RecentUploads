use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'POE::Component::IRC::PAUSE::RecentUploads',
    license             => 'perl',
    dist_author         => 'Zoffix Znet <zoffix@cpan.org>',
    dist_version_from   => 'lib/POE/Component/IRC/PAUSE/RecentUploads.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        Carp                       => 1.04,
        POE                        => 0.9999,
        'POE::Component::IRC::Plugin' => 0.09,
        'POE::Component::WWW::PAUSE::RecentUploads::Tail' => 0.01,
    },
    add_to_cleanup      => [ 'POE-Component-IRC-PAUSE-RecentUploads-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
