//
//  ViewController.swift
//  iQuiz
//
//  Created by Juliano Sgarbossa on 21/05/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var botaoIniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuraLayout()
    }

    @IBAction func botaoPressionado(_ sender: UIButton) {
        print("O botão foi pressionado!")
    }
    
    func configuraLayout() {
        botaoIniciarQuiz.layer.cornerRadius = 12
    }
}

