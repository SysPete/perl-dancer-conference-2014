use strict;
use warnings;
use ExtUtils::MakeMaker;

# Normalize version strings like 6.30_02 to 6.3002,
# so that we can do numerical comparisons on it.
my $eumm_version = $ExtUtils::MakeMaker::VERSION;
$eumm_version =~ s/_//;

WriteMakefile(
    NAME                => 'SecurityApp',
    AUTHOR              => q{Peter Mottram (SysPete) <peter@sysnix.com>},
    VERSION_FROM        => 'lib/SecurityApp.pm',
    ABSTRACT            => 'code for security talk demos',
    ($eumm_version >= 6.3001
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Plack'       => 1.0031,
        'Test::More'  => 0,
        'Test::Roo'   => 1.004,
        'YAML'        => 0,
        'Dancer'      => 1.3126,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'SecurityApp-*' },
);
