package Local::Abstract;


use Moose; ## for constructor only



sub test{
  my $this=shift;

  return "this is the original";
  
}


1;