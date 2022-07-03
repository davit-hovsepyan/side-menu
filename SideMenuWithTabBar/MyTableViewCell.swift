//
//  MyTableViewCell.swift
//  SideMenuWithTabBar
//
//  Created by Davit Hovsepyan on 03.05.22.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    
    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myImage1: UIImageView!
    @IBOutlet weak var myLable: UILabel!
    @IBOutlet weak var myLable1: UILabel!

    var person: PersonName! {
        didSet {
           configureCell(person)
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
       
        myImage.backgroundColor = .white
        myImage.layer.masksToBounds = true
        myImage.layer.cornerRadius = myImage.bounds.width / 2
        myImage1.image = UIImage(named: "drop_down")
        myView.layer.cornerRadius = myView.frame.height / 6
    }
    private func configureCell(_ person: PersonName){
        myImage.image = imageNamed(person.imageName)
        myLable.text = person.name
        myLable1.text = person.profesion
        
  }
}
