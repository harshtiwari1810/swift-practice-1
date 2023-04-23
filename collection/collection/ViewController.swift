//
//  ViewController.swift
//  collection
//
//  Created by Anarock on 12/04/23.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let cars = ["car1", "car2", "car3", "car4", "car5", "car6", "car7"]
    
    var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        let layout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //layout.scrollDirection = .horizontal
        view.addSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        collectionView.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
    }
//    func numberOfSections(in collectionView: UICollectionView) -> Int {
//        return 10
//    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cars.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/2 - 10, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.carImageView.image = UIImage(named: cars[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("car \(indexPath.row)")
    }

}

class CustomCell: UICollectionViewCell{
    let carImageView = UIImageView()
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        self.contentView.addSubview(carImageView)
        carImageView.translatesAutoresizingMaskIntoConstraints = false
        
        carImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor).isActive = true
        carImageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        carImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        carImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
        
        carImageView.layer.cornerRadius = 20
        carImageView.layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UITableViewCell {
    open override func addSubview(_ view: UIView) {
        super.addSubview(view)
        sendSubviewToBack(contentView)
    }
}
