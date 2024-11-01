//
//  UIView + Extensions.swift
//  ArquiteturaAppTest
//
//  Created by Ronan Soares on 29/10/24.
//

import Foundation
import UIKit  // importou o framework


extension UIView { // extensao desse arquivo / tem que ser UIView
    // como todo elemento herda de uiview, todos podem invocar
    
    
    func setCardShadow () { // configuracao de sombras
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.1).cgColor
        //Define a cor da sombra para um tom de preto com 10% de opacidade
        layer.shadowOpacity = 0.1
        layer.shadowRadius = 8  //Define o "raio" de difusão da sombra
        layer.shadowOffset = CGSize(width: 0, height: 0) //sombra ficará centralizada
        layer.shouldRasterize = true
        layer.masksToBounds = false
        layer.rasterizationScale = UIScreen.main.scale //mantém a qualidade visual da sombra em diferentes densidades de tela.
    }
    
    
    func pin(to superView: UIView) { // funcao que contem a extensao / UIView sera um self qualquer passado
        translatesAutoresizingMaskIntoConstraints = false // desabilita o autolayout
        NSLayoutConstraint.activate([  // layout onde todos valores sao 0
            topAnchor.constraint(equalTo: superView.safeAreaLayoutGuide.topAnchor),
            bottomAnchor.constraint(equalTo: superView.bottomAnchor),
            leadingAnchor.constraint(equalTo: superView.leadingAnchor),
            trailingAnchor.constraint(equalTo: superView.trailingAnchor)
            
        ])
    }
}
