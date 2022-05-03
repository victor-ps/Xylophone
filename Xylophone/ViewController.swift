//
//  ViewController.swift
//  Xylophone
//
//  Created by Victor Andre de Paula e Silva on 1/5/2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var tittleButton: String!
    var audioPlayer: AVAudioPlayer!
    
    
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    @IBOutlet weak var eButton: UIButton!
    @IBOutlet weak var fButton: UIButton!
    @IBOutlet weak var gButton: UIButton!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    
    
    func setCornerRadius(){
        
            cButton.layer.cornerRadius = 20
            dButton.layer.cornerRadius = 20
            eButton.layer.cornerRadius = 20
            fButton.layer.cornerRadius = 20
            gButton.layer.cornerRadius = 20
            aButton.layer.cornerRadius = 20
            bButton.layer.cornerRadius = 20
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCornerRadius()
        
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        tittleButton = sender.currentTitle
        
        playSound()
        
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            // Bring's sender's opacity back up to fully opaque
            sender.alpha = 1.0
            
        }
    }
    
    func playSound (){
        let url = Bundle.main.url(forResource: tittleButton, withExtension: "wav")
        audioPlayer = try! AVAudioPlayer(contentsOf: url!)
        audioPlayer.play()
        
        
    }
    
    

}

