//
//  RegisterController.swift
//  TurkTrade
//
//  Created by Onur Kazman on 2021-03-28.
//

import Foundation

import UIKit


class RegisterController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
        
    }
    @IBAction func submitButton(_ sender: Any) {
        let alert = UIAlertController(title: "Success", message: "Your request successfully submitted.", preferredStyle: UIAlertController.Style.alert)

        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        self.present(alert, animated: true, completion: nil)
    }
    
    func assignbackground(){
            let background = UIImage(named: "register")

            var imageView : UIImageView!
            imageView = UIImageView(frame: view.bounds)
            imageView.contentMode =  UIView.ContentMode.scaleAspectFill
            imageView.clipsToBounds = true
            imageView.image = background
            imageView.center = view.center
            view.addSubview(imageView)
            self.view.sendSubviewToBack(imageView)
        }
    
}
