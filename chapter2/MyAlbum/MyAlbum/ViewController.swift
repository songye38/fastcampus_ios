//
//  ViewController.swift
//  MyAlbum
//
//  Created by songye on 2021/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    
    @IBOutlet weak var priceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        priceLabel.text = "\(currentValue)"
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: Any) {
        let message = "가격은 \(currentValue) 입니다"
        let alert = UIAlertController(title:message, message: "My First App", preferredStyle: .alert)
        
        let action = UIAlertAction(title : "ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        let randomPrice = arc4random_uniform(10000)+1
        currentValue = Int(randomPrice)
        priceLabel.text = "\(currentValue)"
}
}
