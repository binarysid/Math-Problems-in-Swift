func bubbleSort(){
    
    var arr = [2,4,5,8,3,6,1,7,9]
    
    for i in 1..<arr.count{
        for j in 0..<arr.count-1{
            let key = arr[j]
            if key>arr[j+1]{
                print("key: \(key), compare to: \(arr[j+1])")
                swap(&arr[j], &arr[j+1])
                print(arr)
            }
        }
    }
}
bubbleSort()


