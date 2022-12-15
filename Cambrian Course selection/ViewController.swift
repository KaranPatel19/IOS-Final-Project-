//
//  ViewController.swift
//  Cambrian Course selection
//
//  Created by Karan Patel on 2022-11-17.
//

import UIKit

class ViewController: UIViewController {
    
    var coursenames = [ "IOS", "Android", "Web", "database", "Bussiness" ]

  
    @IBOutlet weak var coursetableview: UITableView!
    

 
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
}
//
//extension ViewController : UITableViewDataSource{
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return coursenames.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "countrycell", for: indexPath) as! Courseholder
//
//
//        cell.coursename.text = coursenames[indexPath.row]
//        return cell
//    }
//
//}
    


