using System;

namespace HelloWorld 
{
    public static class HelloApp
    {
        public static void Main(string[] args)
        {
            Console.Write("Enter password: ");
            var password = Console.ReadLine();

            var result = CheckPassword(password) ? "Success" : "Failure";
            System.Console.WriteLine(result);
        }

        public static bool CheckPassword(string password) => password == "1111";
    }
}
