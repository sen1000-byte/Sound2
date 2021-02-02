//
//  ViewController.swift
//  Sound
//
//  Created by Chihiro Nishiwaki on 2021/01/27.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var drumButton: UIButton!
    @IBOutlet var pianoButton: UIButton!
    @IBOutlet var guitarButton: UIButton!
    @IBOutlet var cymbalButton: UIButton!

    let drumSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name:  "drumSound")!.data)
    let pianoSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name:  "pianoSound")!.data)
    let guitarSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name:  "guitarSound")!.data)
    let cymbalSoundPlayer = try! AVAudioPlayer(data: NSDataAsset(name:  "symbal")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func touchDownDrumButton () {
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        drumSoundPlayer.currentTime = 0
        drumSoundPlayer.play()
    }
    
    @IBAction func touchDownPianoButton() {
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        pianoSoundPlayer.currentTime = 10
        pianoSoundPlayer.play()
    }
    
    @IBAction func touchDownGuitarButton() {
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        guitarSoundPlayer.currentTime = 10
        guitarSoundPlayer.play()
    }
    
    @IBAction func touchDownCymbalButton() {
        cymbalButton.setImage(UIImage(named: "cymbalPlayingImage"), for: .normal)
        cymbalSoundPlayer.currentTime = 10
        cymbalSoundPlayer.play()
    }
    
    @IBAction func touchUpDrumButton () {
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }

    @IBAction func touchUpPianoButton () {
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    @IBAction func touchUpGuitarButton () {
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
    
    @IBAction func touchUpCymbalButton() {
        cymbalButton.setImage(UIImage(named: "cymbalImage"), for: .normal)
    }
}

