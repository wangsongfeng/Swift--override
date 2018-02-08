//
//  ViewController.swift
//  Swift-override
//
//  Created by apple on 2018/2/8.
//  Copyright © 2018年 yangchao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var titles : String?
    
    var string:String?{
        get{
            return titles
            
        }
        set{
            titles = newValue
            
            print("知改变了")
        }
    }
    
    var name : String?{
        didSet{
            print("那么多")
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let app = Apple()
        app.info()
        app.speed = 20
        
        self.string = "hehe"
        self.name = "haha"
        
        let car = Car()
        
    }
    var str = "Hello World"
    
    class Fruit {
        var speed : Double = 0
        func info() -> () {
            print("11111111")
        }
        
        //修饰词 final 表示 不可重写 可以将类或者类中的部分实现保护起来,从而避免子类破坏
        final func price(){
            print("22222222")
        }
    }
    
    class Apple: Fruit {
        func eat() -> () {
            print("33333333")
        }
        
        //重写父类方法
        override func info() {
            print("重写父类方法11111")
        }
        
        //重写父类属性 重写父类属性或者方法需要使用关键字override进行修饰
        override var speed: Double{
            get{
                print("555555555")
                return super.speed + 3
            }
            set{
                print("66666666")
                super.speed = newValue * newValue
                print(speed)
            }
        }
    }
    

}


extension ViewController{
    
    //定义一个基类
    
    class Vehicle {
        var numberOfWheels : Int = 0
        var maxPassengers : Int = 0
        func description() -> String {
            return "\(numberOfWheels) \(maxPassengers)"
        }
        init() {
            numberOfWheels = 0
            maxPassengers = 1
        }
        
    }
    
    //重写方法
    class Car : Vehicle {
        var speed : Double = 0.0
        override init(){
            super.init()
            numberOfWheels = 4
            self.maxPassengers = 10
            super.maxPassengers = 4
            maxPassengers = 5
            
            print(numberOfWheels,maxPassengers,self.maxPassengers,super.maxPassengers)
        }
    }
    
    
    
    
}

