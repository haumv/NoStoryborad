//
//  ViewController.swift
//  NoStoryborad
//
//  Created by Mai Van Hau on 9/8/20.
//  Copyright © 2020 Mai Van Hau. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func didTapMenu(_ sender: Any) {
        guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") else { return }
        present(menuViewController, animated: true, completion: nil)
    }
    

}
