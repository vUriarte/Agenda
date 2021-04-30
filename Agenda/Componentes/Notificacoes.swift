//
//  Notificacoes.swift
//  Agenda
//
//  Created by Victor Uriarte on 30/04/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class Notificacoes: NSObject {
    
    func exibeNotificacaoDeMediaDosAlunos(dicionarioDeMedia: Dictionary<String, Any>) -> UIAlertController? {
        if let mediaRaw = dicionarioDeMedia["media"] {
            let media = String(describing: mediaRaw)
            let alerta = UIAlertController(title: "Atenção", message: "a média geral dos alunos é: \(media)", preferredStyle: .alert)
            let botao = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alerta.addAction(botao)
            
            return alerta
        }
 
        return nil
    }
    

}
