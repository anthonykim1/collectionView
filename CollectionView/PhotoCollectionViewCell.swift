//
//  PhotoCollectionViewCell.swift
//  CollectionView
//
//  Created by Anthony Kim on 1/6/21.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    static let identifier = "PhotoCollectionViewCell" //can name it whatever you want, but we can do as the name of the class for consistency sake
    
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    override init(frame:CGRect){
        super.init(frame: frame)
        contentView.addSubview(imageView)
        
        let images = [
            UIImage(named: "image1"),
            UIImage(named: "image2"),
            UIImage(named: "image3"),
            UIImage(named: "image4"),
            UIImage(named: "image5"),
            UIImage(named: "image6"),
        ].compactMap({ $0 }) 
        imageView.image = images.randomElement()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds // which is the entirety of the cell
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        //imageView.image = nil
    }
}
