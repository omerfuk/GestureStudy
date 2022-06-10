//
//  ViewController.swift
//  GestureStudy
//
//  Created by Ömer Faruk Kılıçaslan on 10.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var ben1 = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let gestureRec = UITapGestureRecognizer(target: self, action: #selector(clickedImage))
        imageView.addGestureRecognizer(gestureRec)
        
    }
    
    @objc func clickedImage() {
        
        if ben1 == true {
            imageView.image = UIImage(named: "ben1")
            textLabel.text = "Ben1"
            
            ben1 = false
            
        }
        
        else {
            
            imageView.image = UIImage(named: "ben")
            textLabel.text = "ben"
            ben1 = true
        }
    }


}

