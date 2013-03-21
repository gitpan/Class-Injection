package Local::Abstract;


sub new{
	my $pkg = shift;
	
	my $self = bless {}, $pkg;

	return $self;
}


sub test{
  my $this=shift;


  return [];
}


1;