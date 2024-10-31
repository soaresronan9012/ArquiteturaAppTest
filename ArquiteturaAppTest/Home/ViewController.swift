
//
//  ViewController.swift
//  ArquiteturaAppTest
//
//  Created by Ronan Soares on 27/10/24.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout { //extensao dos protocols
    
    
    private var vcScreen: VCScreen? // var do tipo da view alvo
    private var viewModel: VCViewModel = VCViewModel() // var do tipo va viewmodel alvo / se é do tipo, tem todo conteudo
    
    override func loadView() {
        vcScreen = VCScreen() // instancia a view
        view = vcScreen  // torna a view alvo como a view dessa controller
        vcScreen?.configProtocolCollectionView(delegate: self, dataSource: self)
        // assinatura dos protocolos da collectionView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    // ambos padrao do sitema, assim que assinar o protocolo, ja se pede esses métodos
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        viewModel.numberOfItems // da camada viewmodel, onde esta a logica
        // se fosse mvc, ja colocaria a logica nessa camada mesmo
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell() // cira uma instancia
        
        //método obrigatório do protocolo UICollectionViewDataSource, que define como uma UICollectionView deve configurar e exibir suas células. O método collectionView(_:cellForItemAt:) é responsável por criar e configurar cada célula que aparecerá em uma UICollectionView
    }
    
    func sizeForItem(in collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return viewModel.sizeForItem(indexPath: indexPath, frame: collectionView.frame) // metodo da mvvm
    }
}

