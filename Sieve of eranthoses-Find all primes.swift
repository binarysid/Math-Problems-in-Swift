//source: https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
//http://www.geeksforgeeks.org/sieve-of-eratosthenes/

class PrimeSieve{
    
    init(n:Int) {
        
        var boolPrimes = Array(2...n).map{ _ in
            return true
        } // initialize all the elements as true
        
        for var i in 2...n where i*i<=n{
            
            if boolPrimes[i] { // if the number is prime
                for var j in i...n where i*j<=n{ // iterate all the multiplier
                    boolPrimes[(i*j)-2] = false // set the multiplier false because it cannot be prime. -2 is used to get correct array index as the numbers[] array initializes from 2
                }
            }
        }
        for a in 2...n{
            if boolPrimes[a-2] { // loop through all the true indexes
                print(a) // print the indexes which are the desired prime numbers
            }
        }
        
    }
    
    
}

let sieve = PrimeSieve(n: 50)
