//
//  MyTableViewCell.swift
//  TurkTrade
//
//  Created by Onur Kazman on 2021-03-28.
//

import UIKit

protocol MyTableViewCellDelegate: AnyObject{
    func didTapButton(with title: String)
}

class MyTableViewCell: UITableViewCell {
    
    weak var delegate: MyTableViewCellDelegate?
    
    static let identifier = "MyTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "MyTableViewCell", bundle: nil)
    }
    
    @IBOutlet var button: UIButton!
    private var title: String = ""
    
    @IBAction func didTapButton() {
        delegate?.didTapButton(with: title)
    }
    
    func configure(with title: String){
        self.title = title
        button.setTitle(title, for: .normal)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        button.setTitleColor(.link, for: .normal)
    }

    
}
