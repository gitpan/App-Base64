use strict;
use warnings;

package App::Base64::Command::decode;
{
  $App::Base64::Command::decode::VERSION = 'v0.0.4';
}

# ABSTRACT: Handle the decoding side of Base64

use App::Base64 -command;
use MIME::Base64 qw(decode_base64);

sub execute {
	my $self = shift;
	
	while (<STDIN>)
	{
		print decode_base64($_);
	}
}

__END__
=pod

=head1 NAME

App::Base64::Command::decode - Handle the decoding side of Base64

=head1 VERSION

version v0.0.4

=head1 AUTHOR

Glenn Fowler <cebjyre@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Glenn Fowler.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

