#!/usr/bin/perl

use warnings;
use strict;
use Tk;

my $Min=$ARGV[0];
my $Message=$ARGV[1];

if ( ! defined $Min) { usage(); exit(1); }
print "Set timer to $Min minute(s), every dot is 10 seconds \n";

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
    my $label = $mw->Label(-text=>"$Min Minute(n) vergangen.\n\n$Message");
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

sub usage {
    print "Usage:\n$0 n [\"message\"] \n";
    print "  where n is time in minutes.\n";
}
