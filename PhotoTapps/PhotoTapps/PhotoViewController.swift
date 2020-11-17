//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Михаил Зиновьев on 13.11.2020.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoImageView.image = image
    }
    
    @IBAction func shareAction(_ sender: UIButton) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        //отображаем контроллер shareController на экране
        present(shareController, animated: true, completion: nil)
        
        shareController.completionWithItemsHandler  = { _, bool, _, _ in
            if bool {
                print("Успешно")
            }
        }
            
    
    }
    

}
