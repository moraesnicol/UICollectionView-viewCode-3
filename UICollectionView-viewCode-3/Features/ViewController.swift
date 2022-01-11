//
//  ViewController.swift
//  UICollectionView-viewCode-3
//
//  Created by Gabriel on 11/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    let data = [
        CustomData(title: "Island", image: UIImage(named: "islandA")!, url: "gabriel.io/coures"),
        CustomData(title: "Island-Two", image: UIImage(named: "islandB")!, url: "gabriel.io/coures"),
        CustomData(title: "Island-Three", image: UIImage(named: "islandC")!, url: "gabriel.io/coures"),
        CustomData(title: "Island", image: UIImage(named: "islandA")!, url: "gabriel.io/coures"),
        CustomData(title: "Island-Two", image: UIImage(named: "islandB")!, url: "gabriel.io/coures"),
        CustomData(title: "Island-Three", image: UIImage(named: "islandC")!, url: "gabriel.io/coures"),
        CustomData(title: "Island", image: UIImage(named: "islandA")!, url: "gabriel.io/coures"),
        CustomData(title: "Island-Two", image: UIImage(named: "islandB")!, url: "gabriel.io/coures"),
        CustomData(title: "Island-Three", image: UIImage(named: "islandC")!, url: "gabriel.io/coures"),
        CustomData(title: "Island", image: UIImage(named: "islandA")!, url: "gabriel.io/coures"),
        CustomData(title: "Island-Two", image: UIImage(named: "islandB")!, url: "gabriel.io/coures"),
        CustomData(title: "Island-Three", image: UIImage(named: "islandC")!, url: "gabriel.io/coures"),
        CustomData(title: "Island", image: UIImage(named: "islandA")!, url: "gabriel.io/coures"),
        CustomData(title: "Island-Two", image: UIImage(named: "islandB")!, url: "gabriel.io/coures"),
        CustomData(title: "Island-Three", image: UIImage(named: "islandC")!, url: "gabriel.io/coures"),
    ]
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        
        layout.scrollDirection = .horizontal
        
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupCollectionView()
        
    }
    
    func setupCollectionView(){
        view.addSubview(collectionView)
        
        collectionView.backgroundColor = .white
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        collectionView.heightAnchor.constraint(equalTo:collectionView.widthAnchor, multiplier: 0.5).isActive = true
    }
    
    
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
    }
    
}

extension ViewController: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        
        cell.data = self.data[indexPath.row]
        
        return cell
    }
    
    
}


extension ViewController: UICollectionViewDelegate {
    
}
