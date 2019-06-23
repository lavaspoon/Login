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
        //메인메뉴로 가는 객체선언
        let menuScreen = self.storyboard!.instantiateViewController(withIdentifier: "Menu")
        menuScreen.modalTransitionStyle = .coverVertical
        //
        
        let userId = uiIdInput.text
        let userPassword = uiPasswordInput.text
        
        
        //alert 변수에 UIAlertController 객체가 할당됨
        let alert = UIAlertController(
            title: "알림창",
            message:"아이디: \(userId!), 비밀번호: \(userPassword!)",
            preferredStyle: .alert
        )
        
        
       
        //alert에서 확인버튼 클릭시
        let okAction = UIAlertAction(title: "확인",style: .default){
            (alert:UIAlertAction!) -> Void in //alert 파라미터를
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
       
        alert.addAction(okAction) //위의 akAction 버튼을 대화상자의 addAction으로 설정
        present(alert, animated: true, completion: nil) //present 메소드 호출하면 대화상자가 뜨게됨
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        NSLog("뷰 컨트롤러가 로딩되었습니다.")
        // Do any additional setup after loading the view, typically from a nib.
    }


}

