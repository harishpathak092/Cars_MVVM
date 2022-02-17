//
//  PreviewViewController.swift
//  Cars
//
//  Created by Harish Pathak on 15/02/22.
//

import UIKit

class PreviewViewController: UIViewController {
    
    var previewViewModel: PreviewViewModel?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var previewLoader: UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addGestureRecognizer(createSwipeGestureRecognizer(for: .left))
        self.view.addGestureRecognizer(createSwipeGestureRecognizer(for: .right))
        
        showInitialImage()
    }
    
    func showInitialImage() {
        if let imageUrl = self.previewViewModel?.firstImageUrl() {
            showImage(imageUrl: imageUrl)
        }
    }
    
    func showImage(imageUrl: String) {
        if let url = URL(string: imageUrl) {
            self.previewLoader.startAnimating()
            self.imageView.sd_setImage(with: url) {[weak self] _, error, _, _ in
                if error != nil {
                    self?.showAlert(message: error?.localizedDescription ?? "Some error occured")
                }
                self?.previewLoader.stopAnimating()
            }
        } else {
            showAlert(message: "No image found.")
        }
    }
    
    @objc private func didSwipe(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .left:
            showImage(imageUrl: self.previewViewModel?.nextImageUrl() ?? "")
        case .right:
            showImage(imageUrl: self.previewViewModel?.previousImageUrl() ?? "")
        default:
            break
        }
    }
    
    
    func showAlert(message: String) {        
        CarsAlert.shared.showAlert(title: "Error", message: message, viewController: self, action: UIAlertAction(title: "OK", style: .destructive, handler:nil))
    }
    
    private func createSwipeGestureRecognizer(for direction: UISwipeGestureRecognizer.Direction) -> UISwipeGestureRecognizer {
        // Initialize Swipe Gesture Recognizer
        let swipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(didSwipe(_:)))

        // Configure Swipe Gesture Recognizer
        swipeGestureRecognizer.direction = direction

        return swipeGestureRecognizer
    }
}
