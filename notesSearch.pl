#!/usr//bin/env perl
use Term::ANSIColor;
while ($opt ne "n")
{
  system('clear');
  &load;
  &search;
  print "\n\n'y' To Continue or 'n' to Quit: ";
  chomp($opt = <STDIN>);
  print "\n";
  print color("white"),"_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ \n\n",color("reset");
}
print "Program Exited!\n\n";

sub load{
  $lineNum=0;
  print "Please enter the complete path to the file to search: ";
  chomp($file=<STDIN>);
  open(FILE,$file);
  chomp($lineCont=<FILE>);
  %text={};
  while($lineCont ne "")
  {
    $text{$lineNum}=$lineCont;
    $lineNum++;
    $lineCont=<FILE>;
  }
  print color("green"),"\n\n**********************************\n\tFile Loaded!!!\n**********************************\n",color("reset");
}

sub search{
  print("\n\n");
  print "Please choose the pattern to search: ";
  chomp($pattern=<STDIN>);
  if($pattern ne "")
  {
    print color("magenta"),"\nFound Match: \n\n",color("reset");
    open(TXT,$file);
    $line=<TXT>;
    $linenumber=0;
    $match=0;
    while($line ne "")
    {
      $lineCurr=$linenumber;
      if($line =~ /^\d.*\b$pattern\b/i)
      {
        $match+=1;
        print color("cyan"),"_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ \n",color("reset");
        print color("red"),"** RESULT: $match **\n\n",color("reset");
        print "$text{$lineCurr}";
        $lineCurr+=1;
        while(!($text{$lineCurr}=~/(^\d\d?\.)|(^\d\d?\/\d\d?)/))
        {
          print "$text{$lineCurr}";
          $lineCurr++;
        }
      }
      $linenumber++;
      $line=<TXT>;
    }
    if($match==0)
    {
      print color("magenta"),"\nNo match Found.\n",color("reset");
    }
    else
    {
      print color("magenta"),"\nTotal match found: $match \n",color("reset");
    }
  }
  else{
    print color("red"),"\n\nNothing to search. Empty input.\n\n",color("reset");
  }
}
