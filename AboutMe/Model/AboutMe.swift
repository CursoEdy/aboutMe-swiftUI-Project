//
//  AboutMe.swift
//  AboutMe
//
//  Created by ednardo alves on 27/11/24.
//

import Foundation
import SwiftUI

struct AboutMe: Hashable, Codable, Identifiable {
    var id: Int
    var nome: String
    var profissao: String
    var estado: String
    var descricao: String
    
    var isFavorite: Bool
    
    var categoria: Category

    enum Category: String, CaseIterable, Codable {
        case tecnologia = "Tecnologia"
        case saude = "Saude"
        case imagem = "Imagem"
    }
    
    private var imagemNome: String

    var imagem: Image {
        Image(imagemNome)
    }
}
