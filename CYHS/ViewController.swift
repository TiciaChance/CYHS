//
//  ViewController.swift
//  CYHS
//
//  Created by Laticia Chance on 11/29/16.
//  Copyright © 2016 Laticia Chance. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    
    var images = [UIImage]()
    
    @IBOutlet weak var chosenHSLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    
    @IBOutlet weak var aspectFitImgView: UIImageView!
    
    @IBOutlet weak var startButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        chosenHSLabel.isHidden = true
        aspectFitImgView.isUserInteractionEnabled = true

        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gestureRecognizer:)))
        aspectFitImgView.addGestureRecognizer(tapRecognizer)
        
    }
    
    @IBAction func startButtonTapped(_ sender: Any) {
        
        animation()
        startButton.isHidden = true
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        
        UIImageWriteToSavedPhotosAlbum(aspectFitImgView.image!, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
        
    }
    
    @IBAction func shareButtonTapped(_ sender: UIButton) {
        
        let actionSheet = UIAlertController(title: "", message: "Share your Note", preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let tweetAction = UIAlertAction(title: "Share on Twitter", style: UIAlertActionStyle.default) { (action) -> Void in
            
            if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeTwitter) {
                let twitterComposeVC = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
                
                twitterComposeVC?.setInitialText("Next time you see me I'll be rocking this hairstyle!")

                twitterComposeVC?.add(self.aspectFitImgView.image)
                self.present(twitterComposeVC!, animated: true, completion: nil)

            }
                
            else {
                self.showAlertMessage(message: "You are not logged in to your Twitter account.")
            }
        }
        
        let facebookPostAction = UIAlertAction(title: "Share on Facebook", style: UIAlertActionStyle.default) { (action) -> Void in
            
            if SLComposeViewController.isAvailable(forServiceType: SLServiceTypeFacebook) {
                let facebookComposeVC = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
                
                facebookComposeVC?.setInitialText("Next time you see me I'll be rocking this hairstyle!")
                
                    facebookComposeVC?.add(self.aspectFitImgView.image)
                self.present(facebookComposeVC!, animated: true, completion: nil)
                
            }
            else {
                self.showAlertMessage(message: "You are not connected to your Facebook account.")
            }
            
        }
        
        
        let dismissAction = UIAlertAction(title: "Close", style: UIAlertActionStyle.cancel) { (action) -> Void in
            
        }
        
        actionSheet.addAction(tweetAction)
        actionSheet.addAction(facebookPostAction)
        actionSheet.addAction(dismissAction)
        
        present(actionSheet, animated: true, completion: nil)
    }
    
    func showAlertMessage(message: String!) {
        let alertController = UIAlertController(title: "EasyShare", message: message, preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Okay", style: UIAlertActionStyle.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    
    func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {

            let ac = UIAlertController(title: "Save error", message: error.localizedDescription, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        } else {
            let ac = UIAlertController(title: "Saved!", message: "Your next hairstyle has been saved to your photos.", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        }
    }
    
    func imageTapped(gestureRecognizer: UITapGestureRecognizer) {
        
        let randomNum = arc4random_uniform(UInt32(images.count - 1))
        
        aspectFitImgView.stopAnimating()
        aspectFitImgView.image = images[Int(randomNum)]
        aspectFitImgView.isUserInteractionEnabled = false
            chosenHSLabel.isHidden = false
    }
    
    
    func animation() {
        
        images = [#imageLiteral(resourceName: "dreads3.jpg"), #imageLiteral(resourceName: "curls.jpg"), #imageLiteral(resourceName: "red.jpg"), #imageLiteral(resourceName: "headwrapanddreads.jpg"), #imageLiteral(resourceName: "fro.jpg"), #imageLiteral(resourceName: "halfandhalf.jpg"), #imageLiteral(resourceName: "longdreads.jpg"), #imageLiteral(resourceName: "headwrap.jpg"), #imageLiteral(resourceName: "shorttwists.jpg"), #imageLiteral(resourceName: "bighair.jpg"), #imageLiteral(resourceName: "twists.jpg"), #imageLiteral(resourceName: "tapered.jpg"), #imageLiteral(resourceName: "facedreads.jpg"), #imageLiteral(resourceName: "bantu.jpg"), #imageLiteral(resourceName: "cut.jpg"), #imageLiteral(resourceName: "quarterbantuknot.jpg"), #imageLiteral(resourceName: "greyDreads.jpg"), #imageLiteral(resourceName: "amazing.jpg"), #imageLiteral(resourceName: "fancy2.jpg"), #imageLiteral(resourceName: "classic.jpg"), #imageLiteral(resourceName: "wow.jpg"), #imageLiteral(resourceName: "shapedAfro.jpg"), #imageLiteral(resourceName: "shortwithflower.jpg"), #imageLiteral(resourceName: "bantuknotmohawk.jpg"), #imageLiteral(resourceName: "lion.jpg"), #imageLiteral(resourceName: "flexirodfro.jpg"), #imageLiteral(resourceName: "solange.jpg"), #imageLiteral(resourceName: "90shightop.jpg"), #imageLiteral(resourceName: "shortandcute.jpg"), #imageLiteral(resourceName: "sza.jpg"), #imageLiteral(resourceName: "colorful.jpg"), #imageLiteral(resourceName: "fancy.jpg"), #imageLiteral(resourceName: "superShortBlonde.jpg"), #imageLiteral(resourceName: "shavedsided.jpg"), #imageLiteral(resourceName: "officialAFRO.jpg"), #imageLiteral(resourceName: "medBlkAfro.jpg"), #imageLiteral(resourceName: "flowerPigtail.jpg"), #imageLiteral(resourceName: "corneows.jpg"), #imageLiteral(resourceName: "blondeShortCut.jpg"), #imageLiteral(resourceName: "braidedTWObuns.jpg"), #imageLiteral(resourceName: "bigbun.jpg"), #imageLiteral(resourceName: "ancestors.jpg"), #imageLiteral(resourceName: "brownfro.jpg"), #imageLiteral(resourceName: "updowithbraid.jpg"), #imageLiteral(resourceName: "twa.jpg"), #imageLiteral(resourceName: "sleekupdo.jpg"), #imageLiteral(resourceName: "straightened.jpg")]
        
        aspectFitImgView.animationImages = images.shuffled()
        aspectFitImgView.animationDuration = 1.0
        aspectFitImgView.startAnimating()
        
        
    }
}






/// Shuffles the contents of this collection.

extension MutableCollection where Indices.Iterator.Element == Index {
    
    mutating func shuffle() {
        let c = count
        guard c > 1 else { return }
        
        for (firstUnshuffled , unshuffledCount) in zip(indices, stride(from: c, to: 1, by: -1)) {
            let d: IndexDistance = numericCast(arc4random_uniform(numericCast(unshuffledCount)))
            guard d != 0 else { continue }
            let i = index(firstUnshuffled, offsetBy: d)
            swap(&self[firstUnshuffled], &self[i])
        }
    }
}

/// Returns an array with the contents of this sequence, shuffled.

extension Sequence {
    
    func shuffled() -> [Iterator.Element] {
        var result = Array(self)
        result.shuffle()
        return result
    }
}

