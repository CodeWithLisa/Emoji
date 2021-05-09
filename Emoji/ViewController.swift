//
//  ViewController.swift
//  Emoji
//
//  Created by Apple on 5/9/21.
//

import UIKit

class ViewController: UIViewController {
    let emojis = ["❤️": "Love", "💔": "Heartbreak"]
    @IBAction func showMessage(sender: UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let alertController = UIAlertController(title: "Emotion", message: selectedEmotion, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

