//
//  AddPerson.swift
//  SideMenuWithTabBar
//
//  Created by Davit Hovsepyan on 04.05.22.
//

import UIKit

class AddPerson: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet weak var textFiled: UITextField!
    @IBOutlet weak var textFiled1: UITextField!
    @IBOutlet weak var textFiled2: UITextField!
    @IBOutlet weak var textFiled3: UITextField!
    @IBOutlet weak var textFiled4: UITextField!
    
    @IBOutlet weak var myImage: UIImageView!
    
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        textFiled.text = userDefault.string(forKey: "text")
       
       
    }
     
    
    
    @IBAction func butImagPic(_ sender: Any){
        let picker = UIImagePickerController()
        picker.allowsEditing = true
        picker.delegate = self
        present(picker,animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.editedImage] as? UIImage else{return}

        myImage.image = image
        dismiss(animated: true)
            
        
    }
    
    
    @IBAction func didTabSaved(_ sender: Any){
        
        let vce = tabBarController?.viewControllers![2] as! UINavigationController
        let vc = vce.topViewController as! MyPersons
        
       
        
        vc.image1 = myImage.image
        vc.text = textFiled.text
        vc.text1 = textFiled1.text
        vc.text2 = textFiled2.text
        vc.text3 = textFiled3.text
        vc.text4 = textFiled4.text
        
        userDefault.set(vc.text, forKey: "text")
        userDefault.set(vc.text1, forKey: "text1")
        userDefault.set(vc.text2, forKey: "text2")
        userDefault.set(vc.text3, forKey: "text3")
        userDefault.set(vc.text4, forKey: "text4")



        
        
       vc.modalPresentationStyle = .fullScreen
       tabBarController?.selectedIndex = 2
       

    }
}

