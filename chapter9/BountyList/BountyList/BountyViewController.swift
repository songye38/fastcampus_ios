//
//  BountyViewController.swift
//  BountyList
//
//  Created by songye on 2021/04/13.
//

import UIKit

class BountyViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //UITableViewDataSource에 대한 프로토콜 대답을 주는 것
    //데이터 몇개를 보여줄꺼니?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    
    //그 데이터를 어떻게 표현할꺼니?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        return cell
    }
    
    
    //UITableViewDelegate에 대한 프로토콜 대답을 주는 것
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       print("-->\(indexPath)")
    }
    
    
    

}
