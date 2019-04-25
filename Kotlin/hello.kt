const val password = "1234"

fun main() {
    print("Enter password: ")
    val pass = readLine()!!
    if (checkPass(pass)) println("Hello world")
    else println("incorrect pasword")
}

fun checkPass(pass: String) = pass == password