//
//  PopUpManager.swift
//  ExampleProtocol
//
//  Created by 황재현 on 2020/10/19.
//

import Foundation
import UIKit

final class PopupManager: NSObject {
    static let shared = PopupManager()
    
    private override init() {}
    
    // 팝업 띄우기
    // 기본 팝업 띄우기
    func sendData(title: String, delegate: SendDataDelegate, parentVC: UIViewController) {
        print("PopupManager - sendData() called / title: \(title)")
        // 스토리보드 가져오기
        let storyboard = UIStoryboard.init(name: "DataViewController", bundle: nil)
        // 스토리보드를 통해 뷰컨트롤러 가져오기
        let customPopUpVC = storyboard.instantiateViewController(withIdentifier: "DataViewController") as! DataViewController
        customPopUpVC.searchResult = title
        // 뷰컨트롤러가 보여지는 스타일
        customPopUpVC.modalPresentationStyle = .overCurrentContext
        // 뷰컨트롤러가 사라지는 스타일
        customPopUpVC.modalTransitionStyle = .crossDissolve
        customPopUpVC.delegate = delegate
        parentVC.present(customPopUpVC, animated: true, completion: nil)
    }
}
