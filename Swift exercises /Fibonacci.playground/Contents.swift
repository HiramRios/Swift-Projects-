import UIKit


func fibonacci (until:Int)->String{
    var num0: Int = 0
    var num1: Int = 1
    
    for number in (0...until){
        var sum: Int = 0
        
        
        if number == 0{
            print(num0)
        }
        else if number == 1{
            print(num1)
        }
        else {
          sum = (num0) + (num1)
            num0 = num1
            num1 = sum
            print(sum)
            
        }
    }
    return "end of fibonacci sequence "
}





fibonacci(until:20)
