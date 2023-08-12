/* Simple implementation(s) of FizzBuzz

This program will loop (1-50 in this case) and then print: 
 - "Fizz" for numbers divisible by 3
 - "Buzz" for numbers divisible by 5
 - "FizzBuzz" for numbers divisible by both 3 and 5
 - Just the iteration number if none of the above applies

From your shell / command line, just type: `swift fizzBuzz.swift` to run
*/

// Top-level code to loop through numbers 1 to 50
for count in 1...50 {
    print ("\(fizzBuzz(count))")
}


/// Simple comparison, no special case for 15. Color works in Terminal.
///
/// - Parameter number: the specific number to analyze
/// - Returns: whether the number should be number, fizz, buzz, or both
func fizzBuzz(_ number: Int) -> String {
    var answer = String()
    if (number % 3 == 0) { answer = Color.yellow + "Fizz" }
    if (number % 5 == 0) { answer.append(Color.cyan + "Buzz") }
    if answer.isEmpty { answer = Color.reset + "(\(number.description))" }
    return answer
}


/// This is a switch statement using 15 as a special case
///
/// - Parameter number: the specific number to analyze
/// - Returns: whether the number should be number, fizz, buzz, or both
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




