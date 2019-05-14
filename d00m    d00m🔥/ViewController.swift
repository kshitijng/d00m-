//
//  ViewController.swift
//  d00m    d00m🔥
//
//  Created by Kshitij Gupta on 2019-05-14.
//  Copyright © 2019 alpacamel. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    
    let imageView = UIImageView.init()

    override func viewDidLoad() {
        super.viewDidLoad()
        bringMeFire()
        imageView.image = UIImage(named:"doom")
        self.view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
    }
    
    func bringMeFire() {
        let emitterLayer = CAEmitterLayer()
        
        emitterLayer.emitterPosition = CGPoint(x: UIScreen.main.bounds.width/2, y: UIScreen.main.bounds.height)
        emitterLayer.emitterShape = kCAEmitterLayerLine
        emitterLayer.emitterSize = CGSize(width: UIScreen.main.bounds.width, height: 10);
        emitterLayer.renderMode = kCAEmitterLayerAdditive;
        
        let cell = CAEmitterCell()
        cell.birthRate = 12000
        cell.lifetime = 1;
        cell.lifetimeRange = 0.6
        cell.velocity = 10
        cell.yAcceleration = -200;
        cell.scale = 0.008
        cell.color = UIColor(red: 0.9, green: 0.4, blue: 0.2, alpha: 0.2).cgColor
        cell.alphaSpeed = -0.109
        cell.spin = CGFloat.pi * 2
        cell.emissionRange = CGFloat.pi * 0.5
        cell.contents = UIImage(named: "circle.png")!.cgImage
        
        emitterLayer.emitterCells = [cell]
        
        view.layer.addSublayer(emitterLayer)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = UIColor.black
        /*imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named:"doom")
        imageView.center.y -= view.bounds.height
        self.view.addSubview(imageView)*/
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        /*UIView.animate(withDuration: 0.5, delay: 2, options: [.curveEaseInOut , .allowUserInteraction],
                       animations: {
                        self.imageView.center.y += self.view.bounds.height
        }, completion: {
            finished in
            print("Bug faced right!")
        })*/
    }
}

