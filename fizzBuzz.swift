/** Simple implementation(s) of FizzBuzz

This program will loop (1-100 in this case) and for numbers divisible by 3 print “Fizz”. For numbers divisible by 5 print “Buzz”. For numbers divisible by both 3 and 5 print “FizzBuzz”. Otherwise, just print out the iteration number.
**/

struct Colors {
    static let reset = "\u{001B}[0;0m"
    static let yellow = "\u{001B}[0;33m"
    static let cyan = "\u{001B}[0;36m"
}


/// This is very simple comparison, no special case for 15
///
/// - Parameter num: the specific number to analyze
/// - Returns: whether the number should be number, fizz, buzz, or both
/// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
func fizzBuzz1(_ checkNum: Int) -> String {
    var answer = ""

    if (checkNum % 3 == 0) { 
        answer.append(Colors.yellow + "Fizz") }

    if (checkNum % 5 == 0) {
        answer.append(Colors.cyan + "Buzz") }
        
    if answer.isEmpty { 
        answer = Colors.reset + "(\(checkNum.description))" }
    
    return answer
}



/// This is a switch statement using 15 - only one answer per option
///
/// - Parameter num: the specific number to analyze
/// - Returns: whether the number should be number, fizz, buzz, or both
/// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
func fizzBuzz2(_ checkNum: Int) -> String {
    switch checkNum {
        case _ where checkNum % 15 == 0:
            return "FizzBuzz (\(checkNum.description))"
        case _ where checkNum % 3 == 0:
            return "Fizz (\(checkNum.description))"
        case _ where checkNum % 5 == 0:
            return "Buzz (\(checkNum.description))"
        default:
            return checkNum.description
    }
}


// A simple Swift program has the main run loop as top-level code, no "main"
var result = "Starting... \n"
for count in 1...100 {
    print ("\(fizzBuzz1(count))")
}
//print("\(result)")


// end of file.




