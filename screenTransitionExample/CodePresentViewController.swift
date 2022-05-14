//
//  CodePresentViewController.swift
//  screenTransitionExample
//
//  Created by qualson on 2022/02/16.
//

import UIKit

protocol SendDataDelegate: AnyObject {
    func sendData(name: String)
}


class CodePresentViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    weak var delegate: SendDataDelegate? //delegate 변수 앞에는 weak를 붙혀줘야한다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.delegate?.sendData(name: "kyuchul")
        self.presentingViewController?.dismiss(animated: true, completion: nil)
    }
}
