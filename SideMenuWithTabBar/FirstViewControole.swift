//
//  FirstViewControole.swift
//  SideMenuWithTabBar
//
//  Created by Davit Hovsepyan on 03.05.22.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var image: UIImageView!
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "MyTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "MyTableViewCell")
        
        tableView.delegate = self
        tableView.dataSource = self
        
       
     }
}


extension FirstViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PersonName.person.count

    }
 
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        let p = PersonName.person[indexPath.row]
        cell.person = p
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120.0
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let pers = PersonName.person[indexPath.row]
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.image = PersonName.image[indexPath.row]
        vc.name = pers.name
        vc.profesion = pers.profesion
        vc.mobile = pers.mobile
        vc.phon = pers.phon
        vc.mail = pers.mail
        vc.address = pers.address
       
        navigationController?.pushViewController(vc, animated: true)

        }
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            tableView.beginUpdates()
            PersonName.person.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
            
        }
      }
    }







