//
//  AJHUDNotice.swift
//  AJHUD
//
//  Created by Alex Jiang on 24/4/18.
//  Copyright © 2018 Junliang Jiang. All rights reserved.
//

import UIKit


public enum AJHUDNoticeType {
    case success
    case error
    case info
}

public struct AJHUDConfigure {
    public struct Canvas {
        static let width: CGFloat = 180.0
        static let height: CGFloat = 180.0
        static let frame: CGRect = CGRect(x: 0, y: 0, width: width, height: height)
        static let backgroundColor: UIColor = UIColor(red:0, green:0, blue:0, alpha: 0.7)
        static let cornerRadius: CGFloat = 12.0
    }

    public struct Text {
        static let height: CGFloat = 30.0
        static let fontSize: CGFloat = 15.0
    }
}

public struct AJHUDNoticeImage {
    static func drawCheckMark(frame: CGRect = AJHUDConfigure.Canvas.frame) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: frame.minX + 38.5, y: frame.minY + 16.5, width: 103, height: 103))
        UIColor.white.setStroke()
        ovalPath.lineWidth = 1
        ovalPath.stroke()

        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: frame.minX + 67.5, y: frame.minY + 70.83))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 84.85, y: frame.minY + 87.5), controlPoint1: CGPoint(x: frame.minX + 85.72, y: frame.minY + 88.33), controlPoint2: CGPoint(x: frame.minX + 84.85, y: frame.minY + 87.5))
        bezier2Path.addLine(to: CGPoint(x: frame.minX + 126.5, y: frame.minY + 47.5))
        UIColor.white.setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()

        let result = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return result
    }

    static func drawCrossMark(frame: CGRect = AJHUDConfigure.Canvas.frame) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: frame.minX + 39.5, y: frame.minY + 21.5, width: 103, height: 103))
        UIColor.white.setStroke()
        ovalPath.lineWidth = 1
        ovalPath.stroke()

        //// Group
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: frame.minX + 67.5, y: frame.minY + 47.5))
        bezierPath.addCurve(to: CGPoint(x: frame.minX + 115.5, y: frame.minY + 95.5), controlPoint1: CGPoint(x: frame.minX + 113.51, y: frame.minY + 93.51), controlPoint2: CGPoint(x: frame.minX + 115.5, y: frame.minY + 95.5))
        UIColor.white.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()

        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: frame.minX + 68.5, y: frame.minY + 94.5))
        bezier2Path.addCurve(to: CGPoint(x: frame.minX + 114.5, y: frame.minY + 48.5), controlPoint1: CGPoint(x: frame.minX + 114.54, y: frame.minY + 48.46), controlPoint2: CGPoint(x: frame.minX + 114.5, y: frame.minY + 48.5))
        UIColor.white.setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()

        let result = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return result
    }

    static func drawInformation(frame: CGRect = AJHUDConfigure.Canvas.frame) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(frame.size, false, 0)
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: frame.minX + 38.5, y: frame.minY + 21.5, width: 103, height: 103))
        UIColor.white.setStroke()
        ovalPath.lineWidth = 1
        ovalPath.stroke()

        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(rect: CGRect(x: frame.minX + 87.5, y: frame.minY + 39.5, width: 6, height: 44))
        UIColor.white.setStroke()
        rectanglePath.lineWidth = 1
        rectanglePath.stroke()

        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: frame.minX + 87.5, y: frame.minY + 95, width: 6, height: 6))
        UIColor.white.setStroke()
        rectangle2Path.lineWidth = 1
        rectangle2Path.stroke()

        let result = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return result
    }

}
