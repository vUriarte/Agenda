//
//  AlunoDAO.swift
//  Agenda
//
//  Created by Victor Uriarte on 04/05/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit
import CoreData

class AlunoDAO: NSObject {
    
    var contexto: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        return appDelegate.persistentContainer.viewContext
    }
    
    func salvaAluno(dicionarioDeAluno: Dictionary<String, Any>) {
        let aluno = Aluno(context: contexto)
        aluno.nome = dicionarioDeAluno["nome"] as? String
        aluno.endereco = dicionarioDeAluno["endereco"] as? String
        aluno.nota = (dicionarioDeAluno["nota"] as! NSString).doubleValue
        aluno.site = dicionarioDeAluno["site"] as? String
        aluno.telefone = dicionarioDeAluno["telefone"] as? String
        atualizaContexto()
    }
    
    func atualizaContexto() {
        do {
            try contexto.save()
        } catch {
            print(error.localizedDescription)
        }
    }
}
