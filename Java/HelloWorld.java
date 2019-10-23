import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class PasswordProtectedHelloWorld {
    private static final String password = "ThisIsAWeakPassword";

    public static void main(String[] args) {
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

        System.out.print("Enter password: ");
        try {
            if (password.equals(reader.readLine())) {
                System.out.println("Hello, World!");
            } else {
                System.out.println("Invalid password");
            }
        } catch (IOException ioException) {
            System.out.println("Was unable to read password input");
        }
    }
}