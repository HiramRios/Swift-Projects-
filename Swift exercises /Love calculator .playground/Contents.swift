import UIKit

func loveCalculator(yourName: String, othersName: String)-> String{
    let  loveAmount = arc4random_uniform(101)
    if loveAmount > 80 {
        return "your love score is \(loveAmount). you are meant for each other"
    }
        
    else if loveAmount > 40 && loveAmount <= 80{
        return "your love score is \(loveAmount). I see a possiblity for you guys."
        
    }
    else{
        return "your love score is \(loveAmount). nope try again next time"
    }
    

}

print(loveCalculator(yourName: "Mark Siracha"
    , othersName: "Elizabeth fransesca" ))

