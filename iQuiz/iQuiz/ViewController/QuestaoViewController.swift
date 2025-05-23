//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Juliano Sgarbossa on 21/05/25.
//

import UIKit

class QuestaoViewController: UIViewController {

    var pontuacao = 0
    var numeroQuestao = 0
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    
    @IBOutlet var botoesRespostas: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configurarLayout()
        self.configurarQuestao()
    }
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertouResposta = BancoDeQuestoes.questoes[numeroQuestao].respostaCorreta == sender.tag
        
        if usuarioAcertouResposta {
            pontuacao += 1
            sender.backgroundColor = UIColor.corDeFundoVerde
        } else {
            sender.backgroundColor = UIColor.corDeFundoVermelha
        }
        
        if numeroQuestao < BancoDeQuestoes.questoes.count - 1 {
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(configurarQuestao), userInfo: nil, repeats: false)
        } else {
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(navegaParaTelaDesempenho), userInfo: nil, repeats: false)
        }
    }
    
    func configurarLayout() {
        navigationItem.hidesBackButton = true
        
        for botao in botoesRespostas {
            botao.layer.cornerRadius = 12
        }
    }
    
    @objc
    func configurarQuestao() {
        tituloQuestaoLabel.text = BancoDeQuestoes.questoes[numeroQuestao].titulo
        for botao in botoesRespostas {
            let tituloBotao = BancoDeQuestoes.questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor.corDeFundoPadrao
        }
    }
    
    @objc
    func navegaParaTelaDesempenho() {
        performSegue(withIdentifier: "IrParaTelaDesempenho", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let desempenhoVC = segue.destination as? DesempenhoViewController else { return }
        desempenhoVC.pontuacao = pontuacao
    }
}
