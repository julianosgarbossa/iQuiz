//
//  HomeViewController.swift
//  iQuiz
//
//  Created by Juliano Sgarbossa on 21/05/25.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuraLayout()
    }

    @IBAction func botaoPressionado(_ sender: UIButton) {
        
    }
    
    func configuraLayout() {
        navigationItem.hidesBackButton = true
        botaoIniciarQuiz.layer.cornerRadius = 12
    }
}

