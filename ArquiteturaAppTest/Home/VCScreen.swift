//
//  VCScreen.swift
//  ArquiteturaAppTest
//
//  Created by Ronan Soares on 28/10/24.
//

import UIKit

class VCScreen: UIView {
    
    
    lazy var collectionView : UICollectionView = {
        let layout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal // direcao
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.showsHorizontalScrollIndicator = false // desabilita a barra de rolagem
        collectionView.backgroundColor = .clear
        
        return collectionView
        }()
        
    public func configProtocolCollectionView(delegate : UICollectionViewDelegate, dataSource : UICollectionViewDataSource )  {
        collectionView.delegate = delegate
        collectionView.dataSource = dataSource
    }
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .red
        addElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addElements () {
        addSubview(collectionView)
        
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            
            
        ])
    }
    
}
