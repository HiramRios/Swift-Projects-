import UIKit



func bmiCalculator(weight:Double, height:Double)-> String{
   let bmi = weight / pow(height,2)
    if bmi > 25{
        return " your bmi is \(bmi). You are overweight."
    }
    
    else if bmi > 18.5 && bmi < 25{
        return "your bmi is \(bmi). you are normal weight."
    }
    else {
        return "your bmi is \(bmi). you are underweight "
    }
    
    
}
print(bmiCalculator(weight:70, height:5))
