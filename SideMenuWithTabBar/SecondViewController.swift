//
//  SecondViewController.swift
//  SideMenuWithTabBar
//
//  Created by Davit Hovsepyan on 03.05.22.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myimage2: UIImageView!
    @IBOutlet weak var lockation: UIImageView!
    @IBOutlet weak var messege: UIImageView!
    @IBOutlet weak var bookmark: UIImageView!
    
   
    
    @IBOutlet weak var line: UIImageView!
    @IBOutlet weak var x: UIImageView!
    
    @IBOutlet weak var myLable: UILabel!
    @IBOutlet weak var myLable1: UILabel!
    @IBOutlet weak var myLable2: UILabel!
    @IBOutlet weak var myLable3: UILabel!
    @IBOutlet weak var myLable4: UILabel!
    @IBOutlet weak var myLable5: UILabel!
    
    
    
    
    
    var image: UIImage!
    var imageName = ""
    var name = ""
    var profesion = ""
    var mobile = ""
    var phon = ""
    var mail = ""
    var address = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        


        imageView.layer.cornerRadius = 20
        imageView.image = image
        
        myimage2.image = UIImage(systemName: "phone.fill")
        messege.image = UIImage(systemName: "mail.fill")
        lockation.image = UIImage(systemName: "location.fill")
        bookmark.image = UIImage(systemName: "bookmark.fill")
        x.image = UIImage(systemName: "xmark")
        line.image = UIImage(named: "line")
        
        myLable.text = name
        myLable1.text = profesion
        myLable2.text = mobile
        myLable3.text = phon
        myLable4.text = mail
        myLable5.text = address
       
    }
    


}
