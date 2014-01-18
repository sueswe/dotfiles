#!/usr/bin/perl

use warnings;
use strict;
use Tk;

my $Min=$ARGV[0];
if ( ! defined $Min) { exit(1); }
print "Set timer to $Min minute(s), every dot are 10 seconds :) \n";

my $m = 60;
my $x = $m * $Min;

for (my $y=0; $y != $x; $y+=10 ) {
    sleep(10);
    print ".";
}

Alarm();


sub Alarm {
    my $mw = MainWindow->new;
    $mw->configure(-width=>"640",-height=>"480");
    $mw->title("Timer");
    my $label = $mw->Label(-text=>"Bin fertig, $Min Minute(n) vergangen.");
    my $button = $mw->Button(-text => 'OKay', -command => \&exit); 
    $label->pack; $button->pack; 
    MainLoop; 
}

sub fehler {
    my ($ERRORMESSAGE) = @_;
    my $mw = MainWindow->new;
    $mw->configure(-width=>"640",-height=>"480");
    $mw->title("Auhweh, do hot's wos!");
    my $label = $mw->Label(-text=>"$ERRORMESSAGE ");
    my $button = $mw->Button(-text => 'Schaaaas', -command => \&exit); 
    $label->pack; $button->pack; 
    MainLoop; 
}


