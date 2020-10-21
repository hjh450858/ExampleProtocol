//
//  ViewController.swift
//  ExampleProtocol
//
//  Created by 황재현 on 2020/10/19.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var btnData: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.backgroundColor = .yellow
    }
    
    @IBAction func btnDataClicked(_ sender: UIButton) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "DataViewController") as! DataViewController
        // 'DataViewController'에 있는 dataDelegate 대리자를 'ViewController'에 적용
        newVC.delegate = self
        present(newVC, animated: true, completion: nil)
    }
}

// 'DataViewController'에 있는 프로토콜 채택
extension ViewController: SendDataDelegate {
    func messageData(title: String) {
        self.lblTitle.text = title
        print("ViewController - \(title)")
    }
}
