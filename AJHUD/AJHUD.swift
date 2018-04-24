//
//  AJHUD.swift
//  AJHUD
//
//  Created by Alex Jiang on 23/4/18.
//  Copyright © 2018 Junliang Jiang. All rights reserved.
//

import UIKit


public final class AJHUD: NSObject {

    static var windows = Array<UIWindow?>()
    static let responderView = UIApplication.shared.keyWindow?.subviews.first as UIView?

    static func clear() {
        cancelPreviousPerformRequests(withTarget: self)
        windows.removeAll(keepingCapacity: false)
    }

    @discardableResult
    public static func showText(_ text: String, autoClear: Bool=true, autoClearTime: Int=2) -> UIWindow {
        let window = UIWindow()
        window.backgroundColor = .clear
        let mainView = UIView()
        mainView.layer.cornerRadius = AJHUDConfigure.Canvas.cornerRadius
        mainView.backgroundColor = AJHUDConfigure.Canvas.backgroundColor

        let label = UILabel()
        label.text = text
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: AJHUDConfigure.Text.fontSize)
        label.textAlignment = .center
        label.textColor = .white
        let size = label.sizeThatFits(CGSize(width: UIScreen.main.bounds.width - 60, height: CGFloat.greatestFiniteMagnitude))
        label.bounds = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        mainView.addSubview(label)

        let superFrame = CGRect(x: 0, y: 0, width: label.frame.width + 50 , height: label.frame.height + 30)
        window.frame = superFrame
        mainView.frame = superFrame

        label.center = mainView.center
        window.center = responderView!.center

        window.windowLevel = UIWindowLevelAlert
        window.isHidden = false
        window.addSubview(mainView)
        windows.append(window)

        if autoClear {
            perform(.hideNotice, with: window, afterDelay: TimeInterval(autoClearTime))
        }
        return window
    }

    @discardableResult
    public static func showNoticeWithText(_ type: AJHUDNoticeType ,text: String, autoClear: Bool, autoClearTime: Int) -> UIWindow {
        let frame = AJHUDConfigure.Canvas.frame
        let window = UIWindow()
        window.backgroundColor = .clear
        let mainView = UIView()
        mainView.layer.cornerRadius = AJHUDConfigure.Canvas.cornerRadius
        mainView.backgroundColor = AJHUDConfigure.Canvas.backgroundColor

        var image: UIImage?
        switch type {
        case .success:
            image = AJHUDNoticeImage.drawCheckMark()
        case .error:
            image = AJHUDNoticeImage.drawCrossMark()
        case .info:
            image = AJHUDNoticeImage.drawInformation()
        }
        let iconView = UIImageView(image: image)
        iconView.frame = AJHUDConfigure.Canvas.frame
        mainView.addSubview(iconView)

        let labelFrame = CGRect(x: 0,
                                y: AJHUDConfigure.Canvas.height - AJHUDConfigure.Text.height - 10.0,
                                width: AJHUDConfigure.Canvas.width,
                                height: AJHUDConfigure.Text.height)
        let label = UILabel(frame: labelFrame)
        label.font = .systemFont(ofSize: AJHUDConfigure.Text.fontSize)
        label.textColor = .white
        label.text = text
        label.textAlignment = .center
        mainView.addSubview(label)

        window.frame = frame
        mainView.frame = frame
        window.center = responderView!.center

        window.windowLevel = UIWindowLevelAlert
        window.isHidden = false
        window.addSubview(mainView)
        windows.append(window)

        mainView.alpha = 0.0
        UIView.animate(withDuration: 0.2, animations: {
            mainView.alpha = 1
        })

        if autoClear {
            perform(.hideNotice, with: window, afterDelay: TimeInterval(autoClearTime))
        }

        return window
    }

}

fileprivate extension Selector {
    static let hideNotice = #selector(AJHUD.hideNotice(_:))
}

@objc extension AJHUD {

    static func hideNotice(_ sender: AnyObject) {
        guard let window = sender as? UIWindow else { return }
        guard let view = window.subviews.first else { return }

        UIView.animate(withDuration: 0.2, animations: { view.alpha = 0 }) { _ in

            if let index = windows.index(where: { (item) -> Bool in
                return item == window
            }) { windows.remove(at: index) }
        }

    }

}
