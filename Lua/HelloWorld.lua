password="12345"

function checkPassword (inputPassword)
        return password == inputPassword
end

print("Enter password")
if checkPassword(io.read()) then
        print("Hello, World!")
else
        print("Incorrect password")
end