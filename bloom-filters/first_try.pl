use strict;
use warnings;
use 5.022;

#####################################################
#	my @stuffs;
#	my $lookup;
#
#	foreach my $ig(@stuffs) {
#		$lookup{$ig}++
#	}
#
#	sub check {
#		my ($key)=@_;
#		print "Found $key!" if exists($lookup{$key});
#	}
######################################################

# How Bloom Filter works while trying to build a music search engine

use Bloom::Filter;

my $filter=Bloom::Filter->new(error_rate=>0.01,capacity=>$song_count);
open my $file "./getting-started/song_titles.txt" or die "failed to open: $!";

while(<$ig>) {
	chomp;
	$filter->add($_);
}

sub lookup_song {
	my ($title)=@_;
	return unless $filter->check($title);
	return expensive_db_query($title) or undef;
}

#################################
#	hash1("apples") = 3
#	hash2("apples") = 12
#	hash3("apples") = 11
#
#	hash1("plums") = 11
#	hash2("plums") = 1
#	hash3("plums") = 8
#
#	hash1("mango") = 8
#	hash2("mango") = 3
#	hash3("mango") = 12
##################################

sub calculate_shortest_filter_length {
	my($num_keys,$error_rate)=@_;
	my $lowest_xx;
	my $best_x;

	foreach my $x(1..100) {
		my $xx=(-1 * $x * $num_keys) / (log(1-($error_rate ** (1/$x))));

		if(!defined $lowest_xx or ($xx<$lowest_xx)) {
			$lowest_xx=$xx;
			$best_x=$x;
		}
	}
	return($lowest_xx,$best_x);
}
