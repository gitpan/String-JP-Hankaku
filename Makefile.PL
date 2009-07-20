use strict;
use warnings;
use inc::Module::Install;

name     'String-JP-Hankaku';
all_from 'lib/String/JP/Hankaku.pm';

test_requires 'Test::Base';

WriteAll;
