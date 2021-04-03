import UIKit


let store1 = (x : 3, y: 5, name : "gs")
let store2 = (x : 4, y: 6, name : "seven")
let store3 = (x:1, y: 7, name : "cu")

func distance(current : (x : Int, y: Int), target : (x : Int, y: Int))-> Double{
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX * distanceY * distanceY)
    return distance
}

let myLocation = (x : 2, y: 2)
let stores = [store1, store2, store3]


