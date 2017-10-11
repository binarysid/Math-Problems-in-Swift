class OccurenceNumber{
    
    static func getOccurence(of b:Int, in a:[Int])->Int{
        guard a.contains(b) else {
            return 0
        }
        var getCount = 0
        var getPreviousCount = 0
        
        for i in 0..<a.count{
            if a[i] != b{
                if getCount > getPreviousCount{
                    getPreviousCount = getCount
                }
                getCount = 0
                continue
            }
            
            getCount = getCount + 1
        }
        if getCount > getPreviousCount{
            return getCount
        }
        else{
            return getPreviousCount
        }
    }
}
let x = [1,1,0,0,0,0,1,0,1,1,1,1,0,1,0,1,0,0,1,1,0,0,0,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0]
print(OccurenceNumber.getOccurence(of: 1, in: x))
