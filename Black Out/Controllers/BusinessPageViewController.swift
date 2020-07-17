//
//  BusinessPageViewController.swift
//  Black Out
//
//  Created by Liana Adaza on 7/16/20.
//  Copyright © 2020 Liana Adaza. All rights reserved.
//

import UIKit

class BusinessPageViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
 
    @IBAction func photoLibraryTapped(_ sender: UIButton) {
        imagePicker.sourceType = .photoLibrary
         present(imagePicker, animated: true, completion: nil)
    }
   
    @IBOutlet var displayImage: UIImageView!
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
// update placeholder photo with selected photo
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            displayImage.image = selectedImage
        }
        
// go back to our ViewController
        imagePicker.dismiss(animated: true, completion: nil)
    }
}

