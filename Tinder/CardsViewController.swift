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

    var mainProfileImageInitialCenter: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        mainProfileImageView.imageView.image = UIImage(named: "ryan")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onPanGesture(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)

        if sender.state == .began {
            mainProfileImageInitialCenter = mainProfileImageView.center
        } else if sender.state == .changed {
            mainProfileImageView.center = CGPoint(x: mainProfileImageInitialCenter.x + translation.x, y: mainProfileImageInitialCenter.y)
        }
    }

}

