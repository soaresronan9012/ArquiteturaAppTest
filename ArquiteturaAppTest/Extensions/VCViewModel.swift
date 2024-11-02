//
//  VCViewModel.swift
//  ArquiteturaAppTest
//
//  Created by Ronan Soares on 30/10/24.
//

import UIKit

class VCViewModel{ // ciracao da ViewModel, onde fica toda logica da camada view
    
    public var numberOfItems: Int {
        1
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        if indexPath.row == 0 {  // se for a primeira celula, faça
            return CGSize(width: 120, height: frame.height) // tamanho da celula
            }
        else { // se nao faca aqui
            return CGSize(width: frame.width - 120, height: frame.height)
        }
    }

}
