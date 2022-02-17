//
//  ModelCell.swift
//  Cars
//
//  Created by Harish Pathak on 15/02/22.
//

import UIKit
import SDWebImage

class ModelCell: UITableViewCell {
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    static let identifier = "CarModelCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.title.backgroundColor = UIColor.white.withAlphaComponent(0.2)
    }
    
    override func prepareForReuse() {
        title.text = ""
    }
    
    func configure(title: String?, imageURL: String?) {
        if let url = imageURL {
            self.backgroundImage?.sd_setImage(with: URL(string: url),
                                        placeholderImage: UIImage(named: "placeholder_car"))
        }
        self.title.text = title ?? "Unknown"
    }
}
