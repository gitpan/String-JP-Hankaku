package String::JP::Hankaku;

use warnings;
use strict;
use Carp;
use base qw(Exporter);

our $VERSION = '0.0.2';

our @EXPORT = qw(is_hankaku_katakana);

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

=encoding utf-8

=head1 NAME

String::Hankaku - judge that argument is hankaku-katakana or not

=head1 SYNOPSIS

  package YourPackage;
  
  use strict;
  use warning;
  use String::JP::Hankaku;
  use Encode qw(encode_utf8);
  use utf8;
  
  my $string = qw/aあｴ９波ｦ/;
  for (split //, $string) {
      print encode_utf8($_), ": ";
      print is_hankaku_katakana($_);
  }
    
  # a: 0
  # あ: 0
  # ｴ: 1
  # ９: 0
  # 波: 0
  # ｦ: 1

=head1 DESCRIPTION

This module is aim for checking easy that argument is hankaku-katakana or not. 

Unicode block is very useful. 
If we want to judge Japanese hankaku-katakana, we use \p{InHalfwidthAndFullwidthForms}.
But, this unicode block contain zenkaku-number and so on.

So, I make this module to easy judge hankaku-katakana.

=head1 METHODS

=head2 is_hankaku_katakana
  
  # return 1 or 0
  is_hankaku_katakana($str);

This method can judge argument is hankaku-katakana or not.
Return value is 1 (hankaku-katakana) or 0 (not hankaku-katakana).

=head1 AUTHOR

sasata299  C<< <sasata299@livedoor.com> >>

http://blog.livedoor.jp/sasata299/

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2009, sasata299 C<< <sasata299@livedoor.com> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

=cut
