def hey
    puts "Hello World!"
end

def  check_pass(sended_pass)
    pass = "1234"
    if sended_pass == pass
        puts "Correct password!"
        hey
        return true
    else
        puts "Incorrect password!"
    end

    return false
end

print "Enter password!: "
input = gets
pass = input.chomp
check_pass(pass)
