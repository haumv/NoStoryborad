//
//  MainViewController.swift
//  NoStoryborad
//
//  Created by Mai Van Hau on 9/8/20.
//  Copyright © 2020 Mai Van Hau. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func tapOnButton(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let mainStoryboard = UIStoryboard(name: "mainStoryboard", bundle: nil)
        let homeController =  mainStoryboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
     
        
        if #available(iOS 13.0, *){
            if let scene = UIApplication.shared.connectedScenes.first{
                guard let windowScene = (scene as? UIWindowScene) else { return }
                print(">>> windowScene: \(windowScene)")
                let window: UIWindow = UIWindow(frame: windowScene.coordinateSpace.bounds)
                window.windowScene = windowScene //Make sure to do this
                window.rootViewController = homeController
                window.makeKeyAndVisible()
                appDelegate?.window = window
            }
        } else {
            appDelegate?.window?.rootViewController = homeController
            appDelegate?.window?.makeKeyAndVisible()
        }
        
        
        
       
    }
    

    
}
