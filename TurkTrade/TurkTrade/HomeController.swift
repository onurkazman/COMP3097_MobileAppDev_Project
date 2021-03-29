//
//  HomeController.swift
//  TurkTrade
//
//  Created by Onur Kazman on 2021-03-28.
//

import Foundation

import UIKit

class HomeController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var StockTable: UITableView!
    let myData = ["A : $125.73", "AAL : $22.93", "AAP : $188.17", "AAPL : $121.21", "ABBV : $106.07", "ABC : $118.69", "ABMD : $301.4", "ABT : $122.1", "ACN : $281.03", "BSX : $38.23", "BMY : $64.00", "C : $73.17", "CAT : $229.71", "DTE : $133.27", "EXPD : $107.8", "FLS : $39.42", "GS : $327.48", "HOLX : $73.48", "IBM : $136.35", "IP : $55.14", "KEY : $20.16", "LHX : $198.93", "PFG : $60.63", "ROG : $273.73", "USB : $56.21", "XOM : $57.71", "ZION : $55.85" ]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        StockTable.register(MyTableViewCell.nib(), forCellReuseIdentifier: MyTableViewCell.identifier)
        StockTable.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: MyTableViewCell.identifier,
                                                  for: indexPath) as! MyTableViewCell
        cell.configure(with: myData[indexPath.row])
        cell.delegate = self
        cell.accessoryType = UITableViewCell.AccessoryType.detailDisclosureButton
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print(indexPath.row)
        
    }

    

        
    
}

extension HomeController: MyTableViewCellDelegate {
    func didTapButton(with title: String){
        
        let index = title.firstIndex(of: ":") ?? title.endIndex
        let beginning = title[..<index]
        let aa = String(beginning)
        
        let index1 = title.firstIndex(of: ":") ?? title.endIndex
        let ending = "Price" + title[index1...]
        let bb = String(ending)
        
        let alert = UIAlertController(title: aa, message: bb, preferredStyle: UIAlertController.Style.alert)

        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
}
