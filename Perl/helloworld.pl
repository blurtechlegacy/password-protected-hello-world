print "Enter password:  ";
my $pass = <STDIN>;
chomp $pass; 

if($pass == 1234){
    print "Hello World";
}
else {
    print "Wrong password";
}
