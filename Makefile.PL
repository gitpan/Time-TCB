use ExtUtils::MakeMaker;

WriteMakefile(
	NAME => "Time::TCB",
	VERSION_FROM => "lib/Time/TCB.pm",
	PREREQ_PM => {
		"Math::BigRat" => "0.03",
	},
);
