//
//  ModelViewController.swift
//  Cars
//
//  Created by Harish Pathak on 15/02/22.
//

import UIKit
import SDWebImage

class ModelViewController: UIViewController {
    
    var carModelViewModel: CarModelViewModel?
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var modelsLoader: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.carModelViewModel?.fetchData(pageNumber: 1)
        
        self.carModelViewModel?.carModel.bind { [weak self] _ in
            DispatchQueue.main.async {
                self?.tableView.reloadData()
            }
        }
        
        self.carModelViewModel?.isLoading.bind { [weak self] isLoading in
            DispatchQueue.main.async {
                if let loading = isLoading {
                    if loading {
                        self?.modelsLoader.startAnimating()
                    } else {
                        self?.modelsLoader.stopAnimating()
                        if let latestModelsCount = self?.carModelViewModel?.latestModels.count {
                            if latestModelsCount == 0 {
                                self?.showAlert()
                            }
                        }
                    }
                    self?.modelsLoader.isHidden = !loading
                } else {
                    self?.modelsLoader.isHidden = true
                }
            }
        }
        
        self.carModelViewModel?.errorFound.bind(observer: {[weak self] isError in
            if let error = isError {
                if error {
                    DispatchQueue.main.async {
                        self?.showAlert()
                    }
                }
            }
        })
    }
    
    func showAlert() {
        CarsAlert.shared.showAlert(title: "Error", message: "No models available.", viewController: self, action: UIAlertAction(title: "OK", style: .default, handler: {[weak self] _ in
            self?.navigationController?.popViewController(animated: true)
        }))
    }

}

extension ModelViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.carModelViewModel?.numberOfRows() ?? 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ModelCell.identifier, for: indexPath) as! ModelCell
        cell.configure(title: self.carModelViewModel?.modelName(at: indexPath),
                       imageURL:self.carModelViewModel?.imageURL(at: indexPath))
        
        // Check if the last row number is the same as the last current data element
        let lastRowNumber = self.carModelViewModel?.numberOfRows() ?? Int.max
        if indexPath.row == lastRowNumber - 1 {
            self.carModelViewModel?.loadNextModels()
        }
        
        return cell
    }
}

extension ModelViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.carModelViewModel?.navigateToDetails(from: self, with: indexPath)
    }
}
