//
//  File2.swift
//  SideMenuWithTabBar
//
//  Created by Davit Hovsepyan on 03.05.22.
//

import UIKit

func imageNamed(_ name: String) -> UIImage {
    let cls = ViewController.self
    var bundle = Bundle(for: cls)
    let traitCollection = UITraitCollection(displayScale: 3)
    
    if let resourceBundle = bundle.resourcePath.flatMap({ Bundle(path: $0 + "/CarsTestApp.bundle") }) {
        bundle = resourceBundle
    }
    
    guard let image = UIImage(named: name, in: bundle, compatibleWith: traitCollection) else {
        return UIImage()
    }
    
    return image
}
struct PersonName{
    let imageName: String
    let name: String
    let profesion: String
    let mobile: String
    let phon: String
    let mail: String
    let address: String
    
    
  static  var image = [
    
    UIImage(named: "Mark2"),
    UIImage(named: "Alma1"),
    UIImage(named: "James1"),
    UIImage(named: "Lusy1"),
    UIImage(named: "Natali1"),
   ]
    

}


extension PersonName{
    static var person: [PersonName] = [
        PersonName(imageName: ImageName.mark, name: "Mark  Jameson ", profesion: "Architect", mobile: "Mobile         +859 55556813", phon: "Phone          +859 55556813", mail: "Email            markjameson@info.com", address: "Address       USA California Stanker 245"),
        PersonName(imageName: ImageName.alma, name: "Alma  Hyuston ", profesion: "Meneger", mobile: "Mobile         +759 25566313", phon: "Phone          +759 25566313", mail: "Gmail            hyusAlm@23.com", address: "Address       USA Nyuto des.325"),
        PersonName(imageName: ImageName.james, name: "James  Garey ", profesion: "engineer", mobile: "Mobile         +859 48716813", phon: "Phone           +859 48716813", mail: "Email            jharrb43@.com", address: "Address       USA California Holden 45"),
        PersonName(imageName: ImageName.lusy, name: "Lusy  Peterson ", profesion: "IT specialist", mobile: "Mobile         +456 9843513", phon: "Phone           +456 9843513", mail: "Gmail            lusypesits@67.com", address: "Address       German Hamburg 543"),
        PersonName(imageName: ImageName.natali, name: "Natali  Shmelov ", profesion: "Model", mobile: "Mobile         +673 00816812", phon: "Phone          +673 00816812", mail: "Gmail            natsh987@o.com", address: "Address       German 231")
       
    ]
}


