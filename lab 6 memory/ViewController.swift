//
//  ViewController.swift
//  
//
//  Created by Riyaz12 on 29/03/17.
//  Copyright © 2017 Riyaz12. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var users = UserDefaults.standard

    var username = NSString()
    var password = NSString()
    
    var demoArray = NSArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        

        self.username = "Riyaz"
        self.password = "RiyaZ@100"
        
        
        //Inserting Data into NSUserDefaults
        self.users.set(self.username, forKey: "USERNAME")
        self.users.set(self.password, forKey: "PASSWORD")
    
        
        //Retriving Data from NSUserDefaults
        let finalusername:AnyObject = users.object(forKey: "USERNAME") as AnyObject
        let finalpassword:AnyObject = users.object(forKey: "PASSWORD") as AnyObject
        print(finalusername)
        print(finalpassword)
        
        
        
        //Adding Data to demoArray
         self.demoArray = ["Test1", "Test2", "Test3"]
        

        
        //Insert Array in NSUserDefaults
        self.users.set(self.demoArray, forKey: "nameArray")
        
        
        //Retriving Array Data from NSUserDefaults
        let arrayObjects:NSArray = users.object(forKey: "nameArray") as! NSArray
        
        for item in arrayObjects
        {
            print(item)
        }
        
        
       
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

