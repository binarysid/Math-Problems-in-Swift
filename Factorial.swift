struct Factorial {
    
    func findFactorialOf(number:Int)->Int{
        
        guard number > 0 else{
            return 0
        }
        var result:Int = 1
        
        for i in 0...number{
            if number-i == 0 {
                break;
            }
            result = result*(number-i)
        }
        return result
    }
}
var fact = Factorial()
print(fact.findFactorialOf(number:10))
