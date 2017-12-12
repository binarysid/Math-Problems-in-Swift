func insertionSort(){
    var arr = [2,4,5,8,3,6,1,7,9]
    var selectedVal = 0
    for j in 1..<arr.count{
        //print(arr[j])
        selectedVal = arr[j]
        //print("selected Value : \(selectedVal)")
        var i = j-1
        while(i>=0 && selectedVal<arr[i]){
            let temp = arr[i]
            arr[i] = selectedVal
            arr[i+1] = temp
            //print(arr)
            //print("arr[i] is: \(arr[i])")
            //print("arr[i+1] is: \(arr[i+1])")
            i = i-1
        }
        
    }
    print(arr)
}

