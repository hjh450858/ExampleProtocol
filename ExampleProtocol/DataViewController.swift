//
//  DataViewController.swift
//  ExampleProtocol
//
//  Created by 황재현 on 2020/10/19.
//

import UIKit

// 데이터 전달을 대신해주는 프로토콜 생성
protocol SendDataDelegate {
    func messageData(title: String)
}

class DataViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var btnPass: UIButton!
    // 프로토콜 채택?
    var delegate: SendDataDelegate?
    // 검색값
    var searchResult: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // 보내기 버튼 클릭 시
    @IBAction func btnPassClicked(_ sender: UIButton) {
        // 입력한 값을 프로토콜 함수롤 이용해 전달
        self.delegate?.messageData(title: textField.text!)
        dismiss(animated: true, completion: nil)
    }
}
