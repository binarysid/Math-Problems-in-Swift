struct Factorial {
    
    func findFactorialOf(number:Int)->Int{
        
        guard number > 0 else{ // avoid negative numbers
            return 0
        }
        var result:Int = 1
        
        for i in 0...number{
            if number-i == 0 { // if last element
                break;
            }
            result = result*(number-i) // n(n-1)(n-2).....
        }
        return result
    }
}
var fact = Factorial()
print(fact.findFactorialOf(number:10))
