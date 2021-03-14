//
//  BaseViewController.swift
//  AjaxTest
//
//  Created by Andrey Kulinskiy on 14.03.2021.
//

import UIKit

import SnapKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.addViews()
        self.addConstraints()
    }
    
    func addViews() {
        
    }
    
    func addConstraints() {
        
    }
    
    func reloadData() {}
    
    var heightStatusBar: CGFloat {
        get {
//            return UIApplication.shared.statusBarFrame.size.height
//            let window = UIApplication.shared.windows.first
            
            let sceneDelegate = UIApplication.shared.connectedScenes.first!.delegate as! SceneDelegate
            let window = sceneDelegate.window
            
            var result: CGFloat = 0
            if let controller = window?.rootViewController as? UINavigationController {
                result = controller.navigationBar.frame.height
            }
            
            result += window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
//            return window?.windowScene?.statusBarManager?.statusBarFrame.height ?? 0
            return result
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
