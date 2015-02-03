# Before 'make install' is performed this script should be runnable with
# 'make test'. After 'make install' it should work as 'perl Geo-IP-Reverse.t'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use strict;
use warnings;

use lib '/Users/john/white/net-ipfromzip/lib';
use Test::More tests => 1;

use Net::IPFromZip qw/reverse/;

#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.

print "Shouldn't find anything\n";
#my $arrayP = reverse("59715");

#print @{ $arrayP };

#print "Should find a lot\n";

my $arrayP = reverse("59715", "/Users/john/white/geoip/GeoLite2-City-Blocks-IPv4.csv");

print @{ $arrayP };
