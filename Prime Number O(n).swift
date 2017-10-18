
class Prime{
    
    func isPrimeNumber(number:Int)->Bool{
        
        guard number>1 else{
            print("hhh")
            return false
        }
        
        for i in 2..<number{
            //print(i)
            if number%i == 0{
                //print(i)
                return false
                
            }
        }
        return true
    }
    
    
}

var prime = Prime()
print(prime.isPrimeNumber(number:6))
