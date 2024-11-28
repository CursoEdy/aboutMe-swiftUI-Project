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
    
    private var imagemNome: String

    var imagem: Image {
        Image(imagemNome)
    }
}
