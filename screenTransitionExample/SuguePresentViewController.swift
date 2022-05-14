//
//  SuguePresentViewController.swift
//  screenTransitionExample
//
//  Created by qualson on 2022/02/16.
//

import UIKit

class SuguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
}
