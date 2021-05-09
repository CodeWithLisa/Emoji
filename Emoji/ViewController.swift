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
        let customMessages = ["Love":["Wonderful!", "Great!", "Congrats!"],"Heartbreak":["Feel Better!", "That's Unfortunate!","Oh no!"]]
        if let selectedEmotion = sender.titleLabel?.text {

        let titleText = selectedEmotion

            let selectedMessage = customMessages[emojis[selectedEmotion]!]!.randomElement()

        let messageControl = UIAlertController(title: "\(titleText)", message: "\(selectedMessage!)", preferredStyle: UIAlertController.Style.alert)

        messageControl.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        present(messageControl, animated: true, completion: nil)

    }
    
 

}

}
