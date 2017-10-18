
class Prime{
    
    func isPrimeNumber(number:Int)->Bool{
        
        guard number>1 else{
            print("hhh")
            return false
        }
        
        for i in 2..<number where i*i<=number{ // need to check within sqare root value bound of number(source: https://stackoverflow.com/questions/5811151/why-do-we-check-up-to-the-square-root-of-a-prime-number-to-determine-if-it-is-pr)
            if number%i == 0{
                return false
                
            }
        }
        return true
    }
    
    
}

var prime = Prime()
print(prime.isPrimeNumber(number:6))
