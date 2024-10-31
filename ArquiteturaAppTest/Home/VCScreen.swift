//
//  VCScreen.swift
//  ArquiteturaAppTest
//
//  Created by Ronan Soares on 28/10/24.
//

import UIKit

class VCScreen: UIView {
    
    // criaccao da primeira collectionView 
    lazy var collectionView : UICollectionView = { //mostra uma coleção de itens organizados em células
        let layout : UICollectionViewFlowLayout = UICollectionViewFlowLayout() //organiza itens em uma grade (grid). É o layout mais básico e comum para uma CollectionView. define o layout (a disposição dos itens)
        layout.scrollDirection = .horizontal // direcao
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //frame: .zero significa que a CollectionView está sendo inicializada sem um tamanho específico aqui (o tamanho será definido mais tarde).
        //collectionViewLayout: layout é onde você aplica o layout que criamos antes (horizontal, com organização em grid).
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false // desabilita a barra de rolagem
        collectionView.backgroundColor = .systemGray
        return collectionView
        }()
        

    public func configProtocolCollectionView(delegate : UICollectionViewDelegate, dataSource : UICollectionViewDataSource )  {
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
    } //Esse método configProtocolCollectionView serve para configurar a collectionView para que ela saiba quem vai gerenciar os eventos e os dados que ela precisa mostrar. 
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .appBackground  // tipo da extensao criada
        addElements()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements () {
        addSubview(collectionView)
        
    }
    
    func configConstraints() {
        collectionView.pin( to: self) // funcao da extensao, que contem as constraints / self é a propria view
    }
    
}
