//
//  ViewController.swift
//  screenTransitionExample
//
//  Created by qualson on 2022/02/15.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController 뷰가 로드")
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ViewController 뷰가 나타날 것 이다.")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController 뷰가 나타났다.")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController 뷰가 사라질 것 이다.")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController 뷰가 사라졌다.")
    }

    @IBAction func tabCodePresentButton(_ sender: UIButton) {
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePresentViewController") as? CodePresentViewController else { return } //전환되는 화면에 뷰컨트롤 클래스 타입으로 다운캐스팅
        //전체화면
        viewController.modalPresentationStyle = .fullScreen
        //viewController.name
        viewController.name = "kyuchul"
        viewController.delegate = self
        self.present(viewController, animated: true, completion: nil)
    }
    @IBAction func tabCodePushButton(_ sender: UIButton) {
        // 1. instantiateViewController 메소드를 통해 스토리보드에 있는 뷰 컨트롤러를 인스턴스화
        guard let viewController = self.storyboard?.instantiateViewController(withIdentifier: "CodePushViewController") as? CodePushViewController else { return }
        viewController.name = "kyuchul"
        self.navigationController?.pushViewController(viewController, animated: true)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //세그웨이 실행 직전 prepare 호출
        //destination = 전환하려는 뷰컨트롤러의 인스턴스를 가져오는 메소드
        //SuguePushViewController로 다운캐스팅
        if let viewController = segue.destination as? SuguePushViewController {
            viewController.name = "kyuchul2"
        }
    }
    
    
    func sendData(name: String) {
        self.nameLabel.text = name
        self.nameLabel.sizeToFit()
    }
    
}

