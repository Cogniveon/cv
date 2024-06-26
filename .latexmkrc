# Ensure moderncv directory is included in the search path
$ENV{'TEXINPUTS'} = './moderncv:';

# Specify the primary file to be compiled
$pdflatex = 'pdflatex -output-directory=build -aux-directory=build %O %S';

# Add custom dependencies (if needed)
add_cus_dep('cls', 'cls', 0, 'do_latex');

# Command to run when cls file changes
sub do_latex {
  return system("pdflatex -output-directory=build -aux-directory=build $_[0]");
}

# Ensure moderncv directory is included in the search path
@BIBINPUTS = ('moderncv');
@TEXINPUTS = ('moderncv');

# Specify the build directory for output and auxiliary files
$out_dir = 'build';
$aux_dir = 'build';

# Cleanup extensions for auxiliary files
$clean_ext = 'build/*';
