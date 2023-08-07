import Foundation

/// this is a doc comment using a bold font
/// - returns: hello
/// - keyword: this is some text
/// - experiment: to suggest ways to interact
/// - note: an additional note within the prose
/// - parameter: hello
/// - important: for cautions and warnings

/* 
    regular (not a doc) comment is less bold
*/

/** this is also a doc comment (see it is bold)

- keyword: not working yet (not highlighted as shown above)
- returns: not yet working either
- note:  nope
*/


/// -returns: whether the number should be number, fizz, buzz, or both
func fizzBuzz(_ num: Int) -> String {
    switch num {
        case _ where num % 15 == 0:
            return "FizzBuzz"
        case _ where num % 3 == 0:
            return "Fizz"
        case _ where num % 5 == 0:
            return "Buzz"
        default:
            return num.description
    }
}

func main() {
    var result = "Start"
    for num in 0...100 {
        result += "\(fizzBuzz(num))\n"
    }

    print("\(result)")
}



