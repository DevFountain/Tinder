//
//  CardsViewController.swift
//  Tinder
//
//  Created by Curtis Wilcox on 4/26/17.
//  Copyright © 2017 DevFountain LLC. All rights reserved.
//

import UIKit

class CardsViewController: UIViewController {

    @IBOutlet weak var mainProfileImageView: DraggableImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        mainProfileImageView.image = UIImage(named: "ryan")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

