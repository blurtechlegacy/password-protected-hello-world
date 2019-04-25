program HelloWorld;

var pass: integer;

begin
    writeln('Enter password: ');
    readln (pass);
    if pass = 1234 then writeln('Hello, world!')
    else writeln('Incorrect password');
end.
