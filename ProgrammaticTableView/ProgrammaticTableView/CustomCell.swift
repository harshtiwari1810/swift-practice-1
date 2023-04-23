//
//  CustomCell.swift
//  ProgrammaticTableView
//
//  Created by Anarock on 10/04/23.
//

import UIKit

class CustomCell: UITableViewCell {
    
    static let identifier = "CustomCell"
    
    private let myImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(systemName: "questionmark")
        iv.tintColor = .label
        return iv
    }()
    
    private let myLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24, weight: .medium)
        label.text = "Error"
        
        return label
    }()
    
    var regularConstraints: [NSLayoutConstraint] = []
    var compactConstraints: [NSLayoutConstraint] = []
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public func configure(with image: UIImage, and label: String) {
        self.myImageView.image = image
        self.myLabel.text = label
    }
    
    private func setupUI(){
        
        self.contentView.addSubview(myImageView)
        self.contentView.addSubview(myLabel)
        
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        
//        NSLayoutConstraint.activate([
//            myImageView.topAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.topAnchor),
//            myImageView.bottomAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.bottomAnchor),
//            myImageView.leadingAnchor.constraint(equalTo: self.contentView.layoutMarginsGuide.leadingAnchor),
//            //myImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
//            myImageView.heightAnchor.constraint(equalTo: self.heightAnchor, constant: -20),
//            //myImageView.widthAnchor.constraint(equalToConstant: 150),
//            
//            myLabel.leadingAnchor.constraint(equalTo: self.myImageView.trailingAnchor, constant: 16),
//            myLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -12),
//            myLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor),
//            myLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
//        ])
        
        regularConstraints = [
            //side by side
            //ipad
            myImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            myImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            myImageView.heightAnchor.constraint(equalToConstant: 100),
            myImageView.widthAnchor.constraint(equalToConstant: 150),
            
            myLabel.leadingAnchor.constraint(equalTo: myImageView.trailingAnchor, constant: 20),
            myLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
        ]
        
        compactConstraints = [
            //label below image
         //compact regular iphone
            myImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            myImageView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            myImageView.heightAnchor.constraint(equalToConstant: 100),
            myImageView.widthAnchor.constraint(equalToConstant: 120),
            
            myLabel.topAnchor.constraint(equalTo: myImageView.bottomAnchor, constant: 20),
            myLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            myLabel.heightAnchor.constraint(equalToConstant: 40),
            myLabel.widthAnchor.constraint(equalToConstant: 200),
        ]
//        NSLayoutConstraint.activate(compactConstraints)
        
        overrideTraitCollection(size: UIScreen.main.bounds.size)
//            print(UIScreen.main.traitCollection.horizontalSizeClass==UIUserInterfaceSizeClass.compact)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        overrideTraitCollection(size: UIScreen.main.bounds.size)
    }
    
    private func overrideTraitCollection(size: CGSize){
        if (UIScreen.main.traitCollection.horizontalSizeClass == UIUserInterfaceSizeClass.compact || UIScreen.main.traitCollection.verticalSizeClass == UIUserInterfaceSizeClass.compact) {
            NSLayoutConstraint.activate(compactConstraints)
            NSLayoutConstraint.deactivate(regularConstraints)
        }
        else{
            NSLayoutConstraint.activate(regularConstraints)
            NSLayoutConstraint.deactivate(compactConstraints)
        }
    }
}
