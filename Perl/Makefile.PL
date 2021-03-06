# File : Makefile.PL
use ExtUtils::MakeMaker;
WriteMakefile(	      
	      MAKEFILE =>	"Makefile.perl",
	      NAME    =>	"RNA",
	      LIBS    =>	["-lm"],
	      MYEXTLIB =>       "../lib/libRNA.a",
	      LD      =>	'${CXX}',
	      PM       =>       {"RNA.pm", '$(INST_LIBDIR)/RNA.pm'},
	      OBJECT  =>	"RNA_wrap.o",
        dynamic_lib => {OTHERLDFLAGS => '-fopenmp'},
	      AUTHOR  =>        'Ivo Hofacker <ivo@tbi.univie.ac.at>',
	      VERSION =>      '2.0.4'
);
