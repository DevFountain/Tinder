//
//  DraggableImageView.swift
//  Tinder
//
//  Created by Curtis Wilcox on 4/26/17.
//  Copyright © 2017 DevFountain LLC. All rights reserved.
//

import UIKit

class DraggableImageView: UIView {

    @IBOutlet var contentView: UIView!

    @IBOutlet weak var imageView: UIImageView!

    var mainProfileImageInitialCenter: CGPoint!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }

    func initSubviews() {
        let nib = UINib(nibName: "DraggableImageView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)

        contentView.frame = bounds
        addSubview(contentView)

        imageView.frame = contentView.bounds
        contentView.addSubview(imageView)
    }

    @IBAction func onPanGesture(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: contentView)

        if sender.state == .began {
            mainProfileImageInitialCenter = imageView.center
        } else if sender.state == .changed {
            imageView.center = CGPoint(x: mainProfileImageInitialCenter.x + translation.x, y: mainProfileImageInitialCenter.y)
        }
    }

}

