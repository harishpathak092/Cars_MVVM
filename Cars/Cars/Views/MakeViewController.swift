//
//  MakeViewController.swift
//  Cars
//
//  Created by Harish Pathak on 15/02/22.
//

import UIKit

class MakeViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var makesLoader: UIActivityIndicatorView!
    
    let carMakeViewModel = CarMakeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
                        
        self.carMakeViewModel.carMake.bind { [weak self] _ in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
        self.carMakeViewModel.isLoading.bind { [weak self] isLoading in
            DispatchQueue.main.async {
                if let loading = isLoading {
                    loading ? self?.makesLoader.startAnimating() : self?.makesLoader.stopAnimating()
                    self?.makesLoader.isHidden = !loading
                } else {
                    self?.makesLoader.isHidden = true
                }
            }
        }

    }
}

extension MakeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.carMakeViewModel.numberOfRows()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CarMakeCell", for: indexPath) as UITableViewCell
        cell.textLabel?.text = self.carMakeViewModel.makeName(at: indexPath)
        
        // Check if the last row number is the same as the last current data element
        let lastRowNumber = self.carMakeViewModel.numberOfRows()
        if indexPath.row == lastRowNumber - 1 {
            self.carMakeViewModel.loadNextModels()
        }
        
        return cell
    }
}

extension MakeViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.carMakeViewModel.navigateToModels(from: self, with: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}
