
//
//  ViewController.swift
//  ArquiteturaAppTest
//
//  Created by Ronan Soares on 27/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    var vcScreen: VCScreen? // var do tipo da view alvo
    
    override func loadView() {
        vcScreen = VCScreen() // instancia a view
        view = vcScreen  // torna a view alvo como a view dessa controller
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

