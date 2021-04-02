//
//  SecondViewController.swift
//  lab8
//
//  Created by Ануар Беисов on 01.04.2021.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var itemArray = [InfoLab8(name: "Iphone 7", price: "350$", qwer: "t", rewq: "123"),
                     InfoLab8(name: "Samsung", price: "400$", qwer: "y", rewq: "123"),
                     InfoLab8(name: "Nokia", price: "100$", qwer: "u", rewq: "321"),
                     InfoLab8(name: "Ipad", price: "900$", qwer: "i", rewq: "777"),
                     InfoLab8(name: "Huawei", price: "438$", qwer: "o", rewq: "000")
                        
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        itemArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! CustomTableViewCell
        cell.titleLabel.text = itemArray[indexPath.row].name
        cell.subtileLabel.text = itemArray[indexPath.row].price
        cell.titleLabel2.text = itemArray[indexPath.row].qwer
        cell.subtitleLabel2.text = itemArray[indexPath.row].rewq
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
            cell.transform = CGAffineTransform(translationX: 0, y: cell.contentView.frame.height)
            UIView.animate(withDuration: 1, delay: 0.5 * Double(indexPath.row), animations: {
                cell.transform = CGAffineTransform(translationX: cell.contentView.frame.width, y: cell.contentView.frame.height)
            })
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! CustomTableViewCell
               cell.viewOutlet.alpha = 1
                cell.viewOutlet.transform = CGAffineTransform(scaleX: 0, y: 1)
                UIView.animate(withDuration: 1, delay: 0.05 * Double(indexPath.row), animations: {
                    cell.viewOutlet.transform = CGAffineTransform(scaleX: 1, y: 1)
                    
                }
            )}
    
    
    
    
    
    
    
    
    
    

    @IBOutlet weak var secView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
