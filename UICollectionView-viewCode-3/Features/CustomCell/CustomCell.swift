//
//  CustomCell.swift
//  UICollectionView-viewCode-3
//
//  Created by Gabriel on 11/01/22.
//

import UIKit

class CustomCell: UICollectionViewCell {
    
    var data:CustomData? {
        didSet {
            guard let data = data else { return }
            backgroundImage.image = data.image
            
        }
    }
    
    let backgroundImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "islandA")!
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupBackgroundImage()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupBackgroundImage(){
        contentView.addSubview(backgroundImage)
        backgroundImage.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
    }
}
