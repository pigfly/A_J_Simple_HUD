<p align="center">
    <img src="https://github.com/pigfly/A_J_Simple_HUD/blob/master/assets/logo.png?raw=true">
</p>

# A-J-Simple-HUD

![Travis](https://img.shields.io/travis/USER/REPO.svg)
![Code](https://img.shields.io/badge/code-%E2%98%85%E2%98%85%E2%98%85%E2%98%85%E2%98%85-brightgreen.svg)
![Swift](https://img.shields.io/badge/Swift-%3E%3D%203.1-orange.svg)
![npm](https://img.shields.io/npm/l/express.svg)

A-J-Simple-HUD is an drop-in solution for displaying overlay information in iOS

## Features

- [x] No Dependency, 100% iOS Native
- [x] Support both iPad and iPhone family
- [x] High performance, image generaiton is GPU-based
- [x] Support auto dismiss
- [x] Full documentation
- [x] Easy to customise, dynamically support different overlay size

## Requirements

- iOS 9.0+ / macOS 10.10+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 9.0+
- Swift 4.0+

## Installation

- drag and drop the entire `AJHUD` and `AJHUDNotice` into your project

## Full Usage Example

```swift
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
```

## Folder Structure

```shell
├── AJHUD.swift
├── AJHUDNotice.swift
└── ViewController.swift
```

| Class                                 | Responsiblity                                                                       |
|--------------------------------------|--------------------------------------------------------------------------------------|
| AJHUD                                | display overlay information on `UIWindow` and auto dismiss                           |
| AJHUDNoticeType                      | `enum` type for the supported overlay image icon type                                |
| AJHUDConfigure                       | overlay related UI element configuration                                             |
| AJHUDNoticeImage                     | GPU-based dynamically generate image icon for different overlay icon type            |

## Demo

<p align="center">
    <img src="https://github.com/pigfly/A_J_Simple_HUD/blob/master/assets/demo1.gif?raw=true">
</p>

<p align="center">
    <img src="https://github.com/pigfly/A_J_Simple_HUD/blob/master/assets/demo2.gif?raw=true">
</p>

## Credits

A-J-Simple-HUD is owned and maintained by the [Alex Jiang](https://pigfly.github.io). Thanks [iTMan.design](https://itman.design) for providing computational resources.

## License

A-J-Simple-HUD is released under the MIT license.