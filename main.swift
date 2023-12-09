/* This program will loop through some numbers, and then print:
 
 - "Fizz" for numbers divisible by 3
 - "Buzz" for numbers divisible by 5
 - "FizzBuzz" for numbers divisible by both 3 and 5
 - Just the current iteration number if none of the above applies

From the command line, just type: `swift main.swift` to run
*/

// Top-level code to loop through numbers 1 to 100
print(Color.yellow + "\n\n-- Calling fizzBuzzSimple: \n" + Color.reset)
for count in 1...100 {
    print ("\(fizzBuzzSimple(count))")  // Call the "Simple" version
}

print(Color.yellow + "\n\n-- Calling fizzBuzzSwitch: \n" + Color.reset)
for count in 1...100 {
    print ("\(fizzBuzzSwitch(count))")  // Call the "Switch" version
}

/** fizzBuzzSimple() - No special case for 15. Uses colors.

- Parameter number: the specific number to analyze
- Returns: a string to print, e.g. the number itself, fizz, buzz, or fizzbuzz
*/
func fizzBuzzSimple(_ number: Int) -> String {
    var answer = String()
    if (number % 3 == 0) { answer = Color.yellow + "Fizz" }
    if (number % 5 == 0) { answer.append(Color.cyan + "Buzz") }
    if answer.isEmpty { answer = Color.reset + "(\(number.description))" }
    return answer
}


/** fizzBuzzSwitch() - Use a switch statement, with 15 as a special case

- Parameter number: the specific number to analyze
- Returns: whether the number should be number, fizz, buzz, or both
*/
func fizzBuzzSwitch(_ number: Int) -> String {
    switch number {
        case _ where number % 15 == 0:
            return "FizzBuzz (\(number.description))"
        case _ where number % 3 == 0:
            return "Fizz (\(number.description))"
        case _ where number % 5 == 0:
            return "Buzz (\(number.description))"
        default:
            return number.description
    }
}


/// A struct of color constants that should work in terminal output
struct Color {
    static let reset = "\u{001B}[0;0m"
    static let yellow = "\u{001B}[0;33m"
    static let cyan = "\u{001B}[0;36m"
}



// end of file.




