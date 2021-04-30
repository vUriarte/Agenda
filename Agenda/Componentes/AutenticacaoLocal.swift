//
//  AutenticacaoLocal.swift
//  Agenda
//
//  Created by Victor Uriarte on 30/04/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit
import LocalAuthentication

class AutenticacaoLocal: NSObject {
    
    var erro: NSError?
    
    func autorizaUsuario(completion: @escaping(_ autenticado: Bool) -> Void) {
        let contexto = LAContext()
        
        if contexto.canEvaluatePolicy(.deviceOwnerAuthentication, error: &erro) {
            contexto.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "é necessário autenticação para apagar o aluno") { (resposta, erro) in
                completion(resposta)
            }
        }
    }
}
