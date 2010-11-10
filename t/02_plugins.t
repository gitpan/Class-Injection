#!/usr/bin/perl


use lib '../lib';
use lib 'lib';
use lib 't/lib';


use Data::Dumper;
use Test::More tests => 4;



eval('use Local::Plugin1;');
eval('use Local::Plugin2;');

use Class::Injection;
use Local::Abstract;

Class::Injection::install();


my $foo = Local::Abstract->new();


is( $foo->test()->[0]->[0] , 'this is plugin 1' , 'test 1');
is( $foo->test()->[1]->[0] , 'this is plugin 2' , 'test 2' );


my @res = $foo->test();

is( $res[0]->[0] , 'this is plugin 1', 'test 3' );
is( $res[1]->[0] , 'this is plugin 2', 'test 4' );

