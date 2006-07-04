use Test::More tests => 9;

BEGIN { use_ok "Time::TCB", qw(tcb_instant_to_mjd tcb_mjd_to_instant); }

use Math::BigRat;

sub check($$) {
	my($instant, $mjd) = @_;
	$instant = Math::BigRat->new($instant);
	$mjd = Math::BigRat->new($mjd);
	is tcb_instant_to_mjd($instant), $mjd;
	is tcb_mjd_to_instant($mjd), $instant;
}

check("-1059696000", "36204.0003725");
check("0", "48469.0003725");
check("-32.184", "48469");
check("-31.184", (48469*86400+1)."/86400");
