package String::JP::Hankaku;

use warnings;
use strict;
use Carp;
use base qw(Exporter);

our @EXPORT = qw(is_hankaku_katakana);
our $VERSION = '0.0.1';

sub is_hankaku_katakana {
    my $str = shift;
    if ( $str =~ /[\x{FF61}-\x{FF9F}]/ ) {
        return 1;    
    }
    else {
        return 0;
    }
}

1;
__END__

=head1 NAME

String::Hankaku - judge that argument is hankaku-katakana or not


=head1 VERSION

This document describes String::Hankaku version 0.0.1


=head1 SYNOPSIS

package YourPackage;

use strict;
use warning;
use String::Hankaku;
use utf8;

my $string = qw/aあｵ９波/;
for (split //, $string) {
    print encode_utf8($_), ": ";
    print is_hankaku_katakana($_) ? "yes\n" : "no\n";
}
  
# a: no
# あ: no
# ｵ: yes
# ９: no
# 波: no


=head1 DESCRIPTION

This module is aim for checking easy that argument is hankaku-katakana or not. 

I order only one method. is_hankaku_katakana method.
If your character is hankaku-katakana, you will get "1".
Or is not hankaku-katakana, you will get "0".


=head1 METHODS

=head2 is_hankaku_katakana

This method can judge that argument is hankaku-katakana or not.


=head1 AUTHOR

sasata299  C<< <sasata299@livedoor.com> >>


=head1 LICENCE AND COPYRIGHT

Copyright (c) 2009, sasata299 C<< <sasata299@livedoor.com> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.


=head1 DISCLAIMER OF WARRANTY

BECAUSE THIS SOFTWARE IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY
FOR THE SOFTWARE, TO THE EXTENT PERMITTED BY APPLICABLE LAW. EXCEPT WHEN
OTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES
PROVIDE THE SOFTWARE "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE. THE
ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE SOFTWARE IS WITH
YOU. SHOULD THE SOFTWARE PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL
NECESSARY SERVICING, REPAIR, OR CORRECTION.

IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR
REDISTRIBUTE THE SOFTWARE AS PERMITTED BY THE ABOVE LICENCE, BE
LIABLE TO YOU FOR DAMAGES, INCLUDING ANY GENERAL, SPECIAL, INCIDENTAL,
OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE USE OR INABILITY TO USE
THE SOFTWARE (INCLUDING BUT NOT LIMITED TO LOSS OF DATA OR DATA BEING
RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD PARTIES OR A
FAILURE OF THE SOFTWARE TO OPERATE WITH ANY OTHER SOFTWARE), EVEN IF
SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
SUCH DAMAGES.
