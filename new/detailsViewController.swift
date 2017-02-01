//
//  detailsViewController.swift
//  new
//
//  Created by Arun kumar Sah on 1/27/17.
//  Copyright © 2017 Arun kumar Sah. All rights reserved.
//



import UIKit
protocol detailsViewControllerDelegate {
    func getdetail()
}

class detailsViewController: UIViewController {
     var label = UILabel()
    var delegate : detailsViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        label.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        label.backgroundColor = UIColor.cyan
        label.textColor = UIColor.red
        label.text =  delegate?.getdetail() as? String

     view.addSubview(label)
       // var name = delegate?.getdetail()
            }

}
