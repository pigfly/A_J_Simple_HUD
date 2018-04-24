//
//  ViewController.swift
//  AJHUD
//
//  Created by Alex Jiang on 23/4/18.
//  Copyright © 2018 Junliang Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func onTextButtonTapped(_ sender: UIButton) {
        AJHUD.showText("We ❤️ Swift !")
    }

    @IBAction func onSuccessButtonTapped(_ sender: UIButton) {
        AJHUD.showNoticeWithText(.success, text: "saved successfully 👍", autoClear: true, autoClearTime: 2)
    }

    @IBAction func onInfoButtonTapped(_ sender: UIButton) {
        AJHUD.showNoticeWithText(.info, text: "attention 🤔", autoClear: true, autoClearTime: 2)
    }

    @IBAction func onErrorButtonTapped(_ sender: UIButton) {
        AJHUD.showNoticeWithText(.error, text: "something is wrong 😯", autoClear: true, autoClearTime: 2)
    }
}

