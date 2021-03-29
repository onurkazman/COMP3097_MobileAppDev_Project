//
//  ViewController.swift
//  TurkTrade
//
//  Created by Onur Kazman on 2021-03-28.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
    }

    func assignbackground(){
            let background = UIImage(named: "toronto")

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

