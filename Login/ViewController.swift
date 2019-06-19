//
//  ViewController.swift
//  Login
//
//  Created by lavaspoon on 18/06/2019.
//  Copyright © 2019 lavaspoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let id = "test1"
    let password = "1234"

    @IBOutlet var uiIdInput: UITextField!
    
    @IBOutlet var uiPasswordInput: UITextField!
    
    @IBOutlet var uiResult: UILabel!
    
    
    @IBAction func loginClicked(_ sender: Any) {
        let userId = uiIdInput.text
        let userPassword = uiPasswordInput.text
        
        let alert = UIAlertController(
            title: "알림창",
            message:"아이디: \(userId!), 비밀번호: \(userPassword!)",
            preferredStyle: .alert
        )
        
        //메인메뉴로 가는 객체선언
        let menuScreen = self.storyboard!.instantiateViewController(withIdentifier: "Menu")
        menuScreen.modalTransitionStyle = .coverVertical
        //
        
        let okAction = UIAlertAction(title: "확인",style: .default){
            (alert:UIAlertAction!) -> Void in
            NSLog("알림 대화상자의 확인 버튼이 눌렸습니다.")
            if (userId == self.id) && (userPassword == self.password){
                self.uiResult.text = "로그인성공"
                //로그인 성공시 화면 전환
                self.present(menuScreen, animated: true, completion: nil)
                //
            }else{
                self.uiResult.text = "로그인실패"
            }
        }
       
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("뷰 컨트롤러가 로딩되었습니다.")
        // Do any additional setup after loading the view, typically from a nib.
    }


}

