//
//  SuguePushViewController.swift
//  screenTransitionExample
//
//  Created by qualson on 2022/02/15.
//

import UIKit

class SuguePushViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    var name:String?
    // 세그웨이로 구현된 화면전환 방법에서 전환되는 화면의 값을 전달하는 제일 좋은 방법은 전처리 prepare 메소드이다. prepare는 오버라이드하면 세그웨이를 실행하기 직전에 시스템이 의해 자동으로 호출된다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("SuguePushViewController 뷰가 로드")
        // 전달하는 데이터를 네임라벨에 표시
        if let name = name {
            self.nameLabel.text = name
            self.nameLabel.sizeToFit()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("SuguePushViewController 뷰가 나타날 것 이다.")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("SuguePushViewController 뷰가 나타났다.")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("SuguePushViewController 뷰가 사라질 것 이다.")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("SuguePushViewController 뷰가 사라졌다.")
    }
    
    @IBAction func tabBackButton(_ sender: UIButton) {
        self.navigationController?
            .popViewController(animated: true)
        //self.navigationController?.popToRootViewController(animated: true) //back 버튼 클릭 시 rootview로 이동하고 싶을 때 사용
    }
}


