//
//  ViewController.swift
//  Solitaire
//
//  Created by George on 21/03/2020.
//  Copyright © 2020 George. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let solitaireView = SolitaireView(frame: self.view.bounds)
        self.view.addSubview(solitaireView)
    }
}
