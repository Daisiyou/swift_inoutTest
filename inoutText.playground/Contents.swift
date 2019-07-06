import UIKit

var max = 60, min = 600

func searchMax( max: inout Int, min: inout Int) {
    if max < min {
        let tmp = min
        min = max
        max = tmp
    }
}
print("max:\(max)", "min:\(min)")

searchMax(max: &max, min: &min)

print("max:\(max)", "min:\(min)")



var numArr:[Int] = [3,4,2,6,8,9,0,10,1234,987]

print("before sort numArr:\(numArr)")

func sortArr(array: inout [Int]) {
   array =  array.sorted(by: {$0 < $1})
}

sortArr(array: &numArr)

print("after sort numArr:\(numArr)")





