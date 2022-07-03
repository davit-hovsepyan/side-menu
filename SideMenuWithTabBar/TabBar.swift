//
//  TabBar.swift
//  SideMenuWithTabBar
//
//  Created by Davit Hovsepyan on 03.05.22.
//

import UIKit

class TabBar: UITabBarController{
    
    @IBOutlet var tab: UITabBar!

    var sideBarView: UIView!
    var tableView: UITableView!
    
    var isEnableSideBareView:Bool = false
    
    var menuArray = [ImageNames(name: "Dashboard",icon: "image"), ImageNames(name: "Shortcuts",icon: "image2"),ImageNames(name: "Overview",icon: "images-3"),ImageNames(name: "Events",icon: "images-4"),ImageNames(name: "About",icon: "images-5"),ImageNames(name: "Services",icon: "images-6"),ImageNames(name: "Contacts",icon: "image2")]
  
    var arrData = ["Dashbord","Shortcuts","Overview","Events","About","Services","Contacts"]
    var arrImage:[UIImage] = []
                
    var imageV:UIImageView!
    var lable:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tab.layer.cornerRadius = 30.0
        tab.layer.borderWidth = 2.0
     
        sideBarView = UIView(frame: CGRect(x: 107, y: 0, width: 0, height: self.view.bounds.height/1.5))
        tableView = UITableView(frame: CGRect(x: 107, y: 0, width: 0, height: self.view.bounds.height/1.5))
        
        tableView.backgroundColor = .gray
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        self.view.addSubview(sideBarView)
        self.sideBarView.addSubview(tableView)
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tab.frame.size.height = 100
        tab.frame.origin.y = view.frame.size.height - 100
    }
    
    
    @IBAction func didAction(_ sender: Any) {
        if isEnableSideBareView{
            UIView.animate(withDuration: 0.5){
            self.sideBarView.frame = CGRect(x: 107, y: 0, width: 0, height: self.view.bounds.height/1.5)
            self.tableView.frame = CGRect(x: 107, y: 0, width:0, height: self.view.bounds.height/1.5)
        }
            isEnableSideBareView = false
        
    }else{
        UIView.animate(withDuration: 0.5){
            self.sideBarView.frame = CGRect(x: 107, y: 0, width: self.view.bounds.width/2.0, height: self.view.bounds.height/1.5)
            self.tableView.frame = CGRect(x: 107, y: 0, width: self.view.bounds.width/2.0, height: self.view.bounds.height/1.5)
        }
        
        isEnableSideBareView = true
    }
  }
}
    

extension TabBar : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.menuArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .gray
        
        imageV = UIImageView(frame: CGRect(x: 8, y: 8, width: cell.bounds.height-16, height: cell.bounds.height-16))
        imageV.contentMode = .scaleToFill
        imageV.image = UIImage(named: self.menuArray[indexPath.row].icon)
        cell.addSubview(imageV)
        
        lable = UILabel(frame: CGRect(x: self.imageV.bounds.width+16, y: 8, width: cell.bounds.width-(self.imageV.bounds.width+24), height: cell.bounds.height-16))
        lable.text = self.menuArray[indexPath.row].name
        lable.font = UIFont.systemFont(ofSize: 21)
        cell.addSubview(lable)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
     
}
