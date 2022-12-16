//
//  ViewController.swift
//  Cambrian Course selection
//
//  Created by Karan Patel on 2022-12-15.
//

import UIKit

class ViewController : UIViewController, UITableViewDataSource{
    
    @IBOutlet weak var table: UITableView!
    
    @IBAction func addbtn(_ sender: Any) {
        
        self.showToast(message: "New Course Added", font: .systemFont(ofSize: 12.0))
    }
    struct course{
        let title : String
    }
    
    
    let data: [course] = [
        course(title: "IOS"),
        course(title: "Android"),
        course(title: "Web"),
        course(title: "Database"),
        course(title: "Bussiness"),
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // table.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let course = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "coursecell", for: indexPath) as! TableViewCell
        cell.label.text = course.title
        
        return cell
    }
    


    func showToast(message : String, font: UIFont) {

        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 75, y: self.view.frame.size.height-100, width: 150, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
             toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    } }


