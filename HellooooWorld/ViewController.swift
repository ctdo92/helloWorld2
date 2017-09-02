//
//  ViewController.swift
//  HellooooWorld
//
//  Created by Chuong Do on 8/31/17.
//  Copyright © 2017 goehr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var background: UIImageView!
    @IBOutlet var image1: UIImageView!
    @IBOutlet var image3: UIImageView!
    @IBOutlet var image2: UIImageView!
    @IBOutlet var welcomeBtn: UIButton!
    
    var isOn: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        func alternateArrays(firstArray: [Any], secondArray: [Any]) -> [Any] {
            
            var combinedArray = [Any]()
            
            let maxCount = max(firstArray.count, secondArray.count)
            
            for i in 0..<maxCount {
                if firstArray.count > i {
                    combinedArray.append(firstArray[i])
                }
                if secondArray.count > i {
                    combinedArray.append(secondArray[i])
                }
                
            }
            return combinedArray
        }
        
        let a = ["a", "b", "c", "d"]
        let b = ["bo", "ro", "me", 40.5, 10.5, true, false, "wow", "wee"] as [Any]
        
        var answerArray: [Any] = alternateArrays(firstArray: a, secondArray: b)
        
        print(answerArray)
        
        
        
    }
        
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func welcomePressed(_ sender: Any) {
        
        if (isOn == true) {
            
        background.isHidden = false
        image1.isHidden = false
        image2.isHidden = false
        image3.isHidden = false
        isOn = false
        } else {
                background.isHidden = true
                image1.isHidden = true
                image2.isHidden = true
                image3.isHidden = true
                isOn = true
            }
            
        
        }

}

