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
