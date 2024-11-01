//
//  StoryCardCollectionViewCell.swift
//  ArquiteturaAppTest
//
//  Created by Ronan Soares on 31/10/24.
//

import UIKit

class StoryCardCollectionViewCell: UICollectionViewCell { // celula criada
    
    static let identifier: String = "StoryCardCollectionViewCell" // cria o identificador dessa celula
    
    private var screen: StoryCardCollectionViewCellScreen = StoryCardCollectionViewCellScreen()
    // cria uma var do tipo, e a instancia
    
    override init(frame: CGRect){
        super.init(frame: frame)
        screen.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(screen)
        //contentView: é a view principal em que o conteúdo será exibido. Geralmente, isso aparece em componentes como células de UITableViewCell ou UICollectionViewCell, onde contentView é uma propriedade da célula usada para organizar e adicionar as views principais.
        screen.pin(to: contentView) // metodo da extensao
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
