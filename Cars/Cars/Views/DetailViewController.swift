//
//  DetailViewController.swift
//  Cars
//
//  Created by Harish Pathak on 15/02/22.
//

import UIKit

class DetailViewController: UIViewController {
    
    var carDetailViewModel: CarDetailViewModel?
    
    @IBOutlet weak var detailsLoder: UIActivityIndicatorView!
    @IBOutlet weak var make: UILabel!
    @IBOutlet weak var capacity: UILabel!
    @IBOutlet weak var engine: UILabel!
    @IBOutlet weak var type: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.carDetailViewModel?.fetchData()
        
        self.carDetailViewModel?.carModelDetail.bind(observer: { carDetail in
            DispatchQueue.main.async {
                self.make.text = self.carDetailViewModel?.makeAndYear ?? ""
                self.capacity.text = "\(self.carDetailViewModel?.capacity ?? 0) person"
                self.engine.text = self.carDetailViewModel?.engine ?? "NA"
                self.type.text = self.carDetailViewModel?.type ?? "NA"
            }
        })
        
        self.carDetailViewModel?.isLoading.bind(observer: { [weak self] isLoading in
            DispatchQueue.main.async {
                if let loading = isLoading {
                    loading ? self?.detailsLoder.startAnimating() : self?.detailsLoder.stopAnimating()
                    self?.detailsLoder.isHidden = !loading
                } else {
                    self?.detailsLoder.isHidden = true
                }
            }
        })
        
        self.carDetailViewModel?.errorFound.bind(observer: {[weak self] isError in
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
        CarsAlert.shared.showAlert(title: "Error", message: "No details found.", viewController: self, action: UIAlertAction(title: "OK", style: .default, handler: {[weak self] _ in
            self?.navigationController?.popViewController(animated: true)
        }))
    }
    
    
    @IBAction func showExteriorImages(_ sender: Any) {
        Home_Router.shared.route(to: .preview, from: self, parameters: true)
    }
    
    @IBAction func showInteriorImages(_ sender: Any) {
        Home_Router.shared.route(to: .preview, from: self, parameters: false)
    }
    
}
