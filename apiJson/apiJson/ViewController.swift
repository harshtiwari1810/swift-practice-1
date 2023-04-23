//
//  ViewController.swift
//  apiJson
//
//  Created by Harsh Tiwari on 19/04/23.
//

import UIKit
import Alamofire

final class ViewController: UIViewController {
    
    private let urlApi = "https://reqres.in/api/users?page=2"

    @IBOutlet private weak var tableView: UITableView!
    
    private var Pictures: [DataP] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.rowHeight = UITableView.automaticDimension
        self.tableView.estimatedRowHeight = 44
        
        self.tableView.register(UINib(nibName: "avatarTableViewCell", bundle: nil), forCellReuseIdentifier: "avatarTableViewCell")
        
        self.fetchData()
    }
    
    private func fetchData() {
        AF.request(self.urlApi + "/Pictures", method: .get).responseDecodable(of: [DataP].self) { [weak self] response in
            self?.Pictures = response.value ?? []
            self?.tableView.reloadData()
            
        }
    }


}

extension ViewController: UITableViewDelegate {
    
    
}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.Pictures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "avatarTableViewCell", for: indexPath) as? avatarTableViewCell {
            cell.avatars = self.Pictures[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
    
    
}

