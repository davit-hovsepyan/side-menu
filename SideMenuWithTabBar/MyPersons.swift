//
//  MyPersons.swift
//  SideMenuWithTabBar
//
//  Created by Davit Hovsepyan on 04.05.22.
//

import UIKit

class MyPersons:  UIViewController  {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var lable2: UILabel!
    @IBOutlet weak var lable3: UILabel!
    @IBOutlet weak var lable4: UILabel!
   
    let defaultvc = UserDefaults.standard
    
    var image1: UIImage!
    
    var text: String?
    var text1: String?
    var text2: String?
    var text3: String?
    var text4: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        image.layer.cornerRadius = 20
        image.image = image1
        
        lable.text = text
        lable1.text = text1
        lable2.text = text2
        lable3.text = text3
        lable4.text = text4
        
        
        lable.text = defaultvc.string(forKey: "text")
        lable1.text = defaultvc.string(forKey: "text1")
        lable2.text = defaultvc.string(forKey: "text2")
        lable3.text = defaultvc.string(forKey: "text3")
        lable4.text = defaultvc.string(forKey: "text4")




    }
}

