//
//  DesempenhoViewController.swift
//  iQuiz
//
//  Created by Juliano Sgarbossa on 22/05/25.
//

import UIKit

class DesempenhoViewController: UIViewController {

    var pontuacao: Int?
    
    @IBOutlet weak var resultadoLabel: UILabel!
    
    @IBOutlet weak var percentualLabel: UILabel!
    
    @IBOutlet weak var botaoReiniciarQuiz: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configurarLayout()
        self.configurarDesempenho()
    }
    
    @IBAction func botaoPressionado(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        botaoReiniciarQuiz.layer.cornerRadius = 12
    }
    
    func configurarDesempenho() {
        guard let pontuacao = pontuacao else { return }
        resultadoLabel.text = "Você acertou \(pontuacao) de \(BancoDeQuestoes.questoes.count) questões."
        let percentual = (pontuacao * 100) / BancoDeQuestoes.questoes.count
        percentualLabel.text = "Percentual Final: \(percentual)%"
    }
}
