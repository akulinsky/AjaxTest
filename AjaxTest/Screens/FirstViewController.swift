//
//  FirstViewController.swift
//  AjaxTest
//
//  Created by Andrey Kulinskiy on 14.03.2021.
//

import UIKit

class FirstViewController: BaseViewController {
    
    // MARK: - property
    lazy var lblTitle: UILabel = {
        
        let view: UILabel = UILabel()
        view.backgroundColor = UIColor.lightGray
        view.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        view.text = "Unit ID"
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func addViews() {
        self.view.addSubview(lblTitle)
    }
    
    override func addConstraints() {
        self.lblTitle.snp.makeConstraints { (make) -> Void in
            make.top.equalTo(self.view).offset(heightStatusBar + 100)
            make.left.equalTo(self.view).offset(24)
            make.right.equalTo(self.view).offset(-24)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
