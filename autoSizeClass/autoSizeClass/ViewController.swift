//
//  ViewController.swift
//  autoSizeClass
//
//  Created by Anarock on 07/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .orange
        let btn = UIButton()
        btn.backgroundColor = .red
        btn.setTitle("myButton", for: .normal)

        self.view.addSubview(btn)
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            btn.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            btn.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            btn.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            btn.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
        ])
        
        btn.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    @objc func didTapButton(){
        let vc = SecondViewController()
        self.present(vc, animated: true, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

