//
//  TabBar.swift
//  Tab Bar
//
//  Created by Harsh Tiwari on 21/04/23.
//

import UIKit

class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .systemBackground
        tabBar.tintColor = .black
        setupVCs()
    }
    
    
    func setupVCs() {
        viewControllers = [
            createNavController(for: ViewController(), title: NSLocalizedString("Green", comment: ""), image: UIImage(systemName: "house")!),
              createNavController(for: ViewController2(), title: NSLocalizedString("Dark Green", comment: ""), image: UIImage(systemName: "house")!),
              createNavController(for: ViewController3(), title: NSLocalizedString("Light Green", comment: ""), image: UIImage(systemName: "house")!)
          ]
      }
    
    fileprivate func createNavController(for rootViewController: UIViewController,
                                                      title: String,
                                                      image: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: rootViewController)
        navController.tabBarItem.title = title
        navController.tabBarItem.image = image
        navController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        return navController
        }
    
    

}
