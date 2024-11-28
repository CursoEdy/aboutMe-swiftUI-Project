//
//  ModelData.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import Foundation

var aboutMe: [AboutMe] = load("aboutMeData.json")

func load<T: Decodable>(_ Arquivo: String) -> T {
    let data: Data
    
    guard let bundle = Bundle.main.url(forResource: Arquivo, withExtension: nil) else {
        fatalError("Arquivo não encontrado")
    }
    
    do {
        data = try Data(contentsOf: bundle)
    } catch {
        fatalError("Erro ao ler arquivo: \(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Erro ao decodificar arquivo: \(error)")
    }
}
