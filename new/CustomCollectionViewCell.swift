//
//  CustomCollectionViewCell.swift
//  new
//
//  Created by Arun kumar Sah on 1/27/17.
//  Copyright © 2017 Arun kumar Sah. All rights reserved.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    var textLabel: UILabel!
    var imageView: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height:frame.size.height*2/3))
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        contentView.addSubview(imageView)
        
        textLabel = UILabel(frame: CGRect(x: 0, y: frame.size.height*2/3 , width: frame.size.width, height : frame.size.height*2/3))
        textLabel.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
        textLabel.textAlignment = .center
        contentView.addSubview(textLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
