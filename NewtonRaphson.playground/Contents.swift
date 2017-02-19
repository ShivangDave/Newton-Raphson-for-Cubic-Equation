//: Playground - noun: a place where people can play

import UIKit

var a = Double()
var b = Double()
var c = Double()
var d = Double()

func calc(a:Double,b:Double,c:Double,d:Double)
{
    var rootArray = [Double]()
    var fvalueArray = [Double]()
    var fdvalueArray = [Double]()
    var solved = false
    
    if !solved
    {
        for i in 0...10
        {
            var firstX = Double()
            var baseValue = Double()
            var derValue = Double()
            
            if i == 0
            {
                if b < 0
                {
                    firstX = b
                }
                else
                {
                    firstX = -b
                }
                
                baseValue = (a*firstX*firstX*firstX) + (b*firstX*firstX) + (c*firstX) + d
                
                derValue = (3.0*a*firstX*firstX) + (2.0*b*firstX) + c
                
                rootArray.append(firstX)
                fvalueArray.append(baseValue)
                fdvalueArray.append(derValue)
            }
            else
            {
                firstX = rootArray[i-1] - fvalueArray[i-1] / fdvalueArray[i-1]
                
                baseValue = (a*firstX*firstX*firstX) + (b*firstX*firstX) + (c*firstX) + d
                
                derValue = (3.0*a*firstX*firstX) + (2.0*b*firstX) + c
                
                rootArray.append(firstX)
                fvalueArray.append(baseValue)
                fdvalueArray.append(derValue)
                
                //print(fdvalueArray)
                
                
                if String(format:"%0.4f",fdvalueArray[i]) == String(format:"%0.4f",fdvalueArray[i-1])
                {
                    print("solved after \(i)th iteration")
                    print("Root is: \(rootArray[i])")
                    solved = true
                    break
                }
                
            }
            
        }
    }
}

calc(a: 1, b: 1, c: -15, d: 6)
