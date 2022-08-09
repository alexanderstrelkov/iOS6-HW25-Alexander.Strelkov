//
//  ViewController.swift
//  iOS6-HW25-Alexander.Strelkov
//
//  Created by Alexandr Strelkov on 06.08.2022.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var magicCards: [Cards] = []
    let networkManager = NetworkManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        fetchCards(from: "https://api.magicthegathering.io/v1/cards?name=Black%20Lotus")
    }
    
    //MARK: TableView Settings
    
    private func setupTableView() {
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "customCell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return magicCards.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let magicCards = magicCards[indexPath.row]
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as? CustomTableViewCell else { return UITableViewCell() }
        cell.configureCell(from: magicCards)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    private func fetchCards(from url: String) {
        networkManager.fetchCards(from: url) { (result) in
            switch result {
            case .success(let magicCards):
                self.magicCards = magicCards
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
}

