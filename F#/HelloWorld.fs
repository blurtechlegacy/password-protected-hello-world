open System

[<EntryPoint>]
let main argv =
    let password = "1234"
    printfn "Enter password"
    if Console.ReadLine().Equals(password) then printfn "Hello world" else printfn "Incorrect password"
    0
