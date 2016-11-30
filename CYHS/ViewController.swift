//
//  ViewController.swift
//  CYHS
//
//  Created by Laticia Chance on 11/29/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   var images = [UIImage]()
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var aspectFitImgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        images = [#imageLiteral(resourceName: "dreads3.jpg"), #imageLiteral(resourceName: "curls.jpg"), #imageLiteral(resourceName: "red.jpg"), #imageLiteral(resourceName: "headwrapanddreads.jpg"), #imageLiteral(resourceName: "fro.jpg"), #imageLiteral(resourceName: "halfandhalf.jpg"), #imageLiteral(resourceName: "longdreads.jpg"), #imageLiteral(resourceName: "headwrap.jpg"), #imageLiteral(resourceName: "shorttwists.jpg"), #imageLiteral(resourceName: "bighair.jpg"), #imageLiteral(resourceName: "twists.jpg"), #imageLiteral(resourceName: "tapered.jpg"), #imageLiteral(resourceName: "facedreads.jpg"), #imageLiteral(resourceName: "bantu.jpg"), #imageLiteral(resourceName: "cut.jpg"), #imageLiteral(resourceName: "quarterbantuknot.jpg"), #imageLiteral(resourceName: "greyDreads.jpg"), #imageLiteral(resourceName: "amazing.jpg"), #imageLiteral(resourceName: "fancy2.jpg"), #imageLiteral(resourceName: "classic.jpg"), #imageLiteral(resourceName: "wow.jpg"), #imageLiteral(resourceName: "shapedAfro.jpg"), #imageLiteral(resourceName: "shortwithflower.jpg"), #imageLiteral(resourceName: "bantuknotmohawk.jpg"), #imageLiteral(resourceName: "lion.jpg"), #imageLiteral(resourceName: "flexirodfro.jpg"), #imageLiteral(resourceName: "solange.jpg"), #imageLiteral(resourceName: "90shightop.jpg"), #imageLiteral(resourceName: "shortandcute.jpg"), #imageLiteral(resourceName: "sza.jpg"), #imageLiteral(resourceName: "colorful.jpg"), #imageLiteral(resourceName: "fancy.jpg"), #imageLiteral(resourceName: "superShortBlonde.jpg"), #imageLiteral(resourceName: "shavedsided.jpg"), #imageLiteral(resourceName: "officialAFRO.jpg"), #imageLiteral(resourceName: "medBlkAfro.jpg"), #imageLiteral(resourceName: "flowerPigtail.jpg"), #imageLiteral(resourceName: "corneows.jpg"), #imageLiteral(resourceName: "blondeShortCut.jpg"), #imageLiteral(resourceName: "braidedTWObuns.jpg"), #imageLiteral(resourceName: "bigbun.jpg")]
        aspectFitImgView.animationImages = images
        aspectFitImgView.animationDuration = 25.0
        aspectFitImgView.startAnimating()
            
    }

}

