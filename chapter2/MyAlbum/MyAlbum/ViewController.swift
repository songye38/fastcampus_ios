//
//  ViewController.swift
//  MyAlbum
//
//  Created by songye on 2021/03/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title:"hello", message: "My First App", preferredStyle: .alert)
        
        let action = UIAlertAction(title : "ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
}
    

    @IBAction func hello(_ sender: Any) {
        
        let alert = UIAlertController(title: "helo", message: "home workd button", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(action)
        present(alert,animated: true, completion: nil)
    }
}
