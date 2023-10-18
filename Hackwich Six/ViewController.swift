//
//  ViewController.swift
//  Hackwich Six
//
//  Created by Cazandra Rufo on 10/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var myFriendsArray = ["Sarah", "Nicole", "Grant"]
    //var myfriendsHomeArray
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //prototype cell that repeats itself
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //taking the items in the array and displaying it onto the cell
                   let text = myFriendsArray[indexPath.row]
                   cell.textLabel?.text = text
                   return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

