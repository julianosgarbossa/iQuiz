//
//  Questao.swift
//  iQuiz
//
//  Created by Juliano Sgarbossa on 22/05/25.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

struct BancoDeQuestoes {
    static let questoes: [Questao] = [
        Questao(titulo: "Qual palavra-chave usamos para declarar uma constante em Swift?",
                respostas: ["let",
                            "var",
                            "const"],
                respostaCorreta: 0),
        Questao(titulo: "Qual é o framework utilizado para criar interfaces visuais no iOS?",
                respostas: ["UIKit",
                            "CoreData",
                            "AVFoundation"],
                respostaCorreta: 0),
        Questao(titulo: "Como declaramos uma função em Swift?",
                respostas: ["function minhaFuncao()",
                            "fun minhaFuncao()",
                            "func minhaFuncao()"],
                respostaCorreta: 2),
        Questao(titulo: "Qual tipo representa um valor opcional em Swift?",
                respostas: ["Int?",
                            "Optional<Int>",
                            "Ambos"],
                respostaCorreta: 2),
        Questao(titulo: "Qual é a função do método viewDidLoad()?",
                respostas: ["Renderizar a tela",
                            "Inicializar a view",
                            "Responder toques"],
                respostaCorreta: 1),
        Questao(titulo: "Como adicionamos um botão na tela usando UIKit?",
                respostas: ["UIButton()",
                            "addButton()",
                            "UIButton.add()"],
                respostaCorreta: 0),
        Questao(titulo: "Qual classe representa uma tela no UIKit?",
                respostas: ["UIView",
                            "UIViewController",
                            "UIResponder"],
                respostaCorreta: 1),
        Questao(titulo: "O que significa 'optional binding' em Swift?",
                respostas: ["Verificar se um valor é nil",
                            "Converter tipo",
                            "Atribuir um valor default"],
                respostaCorreta: 0),
        Questao(titulo: "Como iteramos sobre um array em Swift?",
                respostas: ["foreach",
                            "for-in",
                            "forEach()"],
                respostaCorreta: 1),
        Questao(titulo: "Qual estrutura usamos para criar layouts no iOS com restrições?",
                respostas: ["Auto Layout",
                            "Grid System",
                            "FlexBox"],
                respostaCorreta: 0),
    ]
}

