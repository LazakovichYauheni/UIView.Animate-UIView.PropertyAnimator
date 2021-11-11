//
//  CircleProgressBarView.swift
//  CircleAnimations
//
//  Created by Eugeni Lazakovich on 21.03.21.
//

import Foundation
import UIKit

final class CircleProgressBarView: UIView {
    
    let shapeLayer = CAShapeLayer()

        
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.9) {
            self.makeHarbrosNaming()
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func commonInit() {
        
        let initialPoint = CGPoint(x: 170, y: 295)
        
        let path = UIBezierPath()
        path.move(to: initialPoint)
        path.addLine(to: CGPoint(x: 196, y: 279))
        path.addLine(to: CGPoint(x: 253, y: 308))
        path.addLine(to: CGPoint(x: 253, y: 370))
        path.addLine(to: CGPoint(x: 226, y: 387))
        path.addLine(to: CGPoint(x: 226, y: 323))
        path.addLine(to: CGPoint(x: 170, y: 295))
        
        
        let secondFirstLayer = CAShapeLayer()
        let secondSecondLayer = CAShapeLayer()
        let thirdFirstLayer = CAShapeLayer()
        let thirdSecondLayer = CAShapeLayer()
        let fourthLayer = CAShapeLayer()
        
        let secondFirstPath = UIBezierPath()
        secondFirstPath.move(to: CGPoint(x: 205, y: 333))
        secondFirstPath.addLine(to: CGPoint(x: 197, y: 333))
        secondFirstPath.addLine(to: CGPoint(x: 197, y: 352))
        secondFirstPath.addLine(to: CGPoint(x: 205, y: 352))
        
        let secondSecondPath = UIBezierPath()
        secondSecondPath.move(to: CGPoint(x: 205, y: 333))
        secondSecondPath.addLine(to: CGPoint(x: 213, y: 333))
        secondSecondPath.addLine(to: CGPoint(x: 213, y: 352))
        secondSecondPath.addLine(to: CGPoint(x: 205, y: 352))
        
        let thirdFirstPath = UIBezierPath()
        thirdFirstPath.move(to: CGPoint(x: 205, y: 367))
        thirdFirstPath.addLine(to: CGPoint(x: 197, y: 367))
        thirdFirstPath.addLine(to: CGPoint(x: 197, y: 386))
        thirdFirstPath.addLine(to: CGPoint(x: 205, y: 386))
        
        let thirdSecondPath = UIBezierPath()
        thirdSecondPath.move(to: CGPoint(x: 205, y: 367))
        thirdSecondPath.addLine(to: CGPoint(x: 213, y: 367))
        thirdSecondPath.addLine(to: CGPoint(x: 213, y: 386))
        thirdSecondPath.addLine(to: CGPoint(x: 205, y: 386))
        
        let fourthPath = UIBezierPath()
        fourthPath.move(to: CGPoint(x: 184, y: 333))
        fourthPath.addLine(to: CGPoint(x: 159, y: 349))
        fourthPath.addLine(to: CGPoint(x: 159, y: 412))
        fourthPath.addLine(to: CGPoint(x: 215, y: 440))
        fourthPath.addLine(to: CGPoint(x: 240, y: 424))
        fourthPath.addLine(to: CGPoint(x: 184, y: 396))
        fourthPath.addLine(to: CGPoint(x: 184, y: 333))

        shapeLayer.fillColor = nil
        shapeLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        shapeLayer.lineWidth = 1
        shapeLayer.path = path.cgPath
        
        secondFirstLayer.fillColor = nil
        secondFirstLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        secondFirstLayer.lineWidth = 1
        secondFirstLayer.path = secondFirstPath.cgPath
        
        secondSecondLayer.fillColor = nil
        secondSecondLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        secondSecondLayer.lineWidth = 1
        secondSecondLayer.path = secondSecondPath.cgPath
        
        thirdFirstLayer.fillColor = nil
        thirdFirstLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        thirdFirstLayer.lineWidth = 1
        thirdFirstLayer.path = thirdFirstPath.cgPath
        
        thirdSecondLayer.fillColor = nil
        thirdSecondLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        thirdSecondLayer.lineWidth = 1
        thirdSecondLayer.path = thirdSecondPath.cgPath
        
        fourthLayer.fillColor = nil
        fourthLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        fourthLayer.lineWidth = 1
        fourthLayer.path = fourthPath.cgPath
        
        layer.addSublayer(shapeLayer)
        layer.addSublayer(fourthLayer)
        
        CATransaction.begin()
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.duration = 2
        animation.fillMode = .backwards
        
        CATransaction.setCompletionBlock {
            thirdFirstLayer.add(animation, forKey: "anim")
            self.layer.addSublayer(thirdFirstLayer)
            thirdSecondLayer.add(animation, forKey: "anim")
            self.layer.addSublayer(thirdSecondLayer)
            secondFirstLayer.add(animation, forKey: "anim")
            self.layer.addSublayer(secondFirstLayer)
            secondSecondLayer.add(animation, forKey: "anim")
            self.layer.addSublayer(secondSecondLayer)
        }
        
        shapeLayer.add(animation, forKey: "MyAnimation")
        fourthLayer.add(animation, forKey: "MyAnimation")
        CATransaction.commit()
    }
    
    private func makeHarbrosNaming() {
        let hPath = UIBezierPath()
        hPath.move(to: .init(x: 87, y: 488))
        hPath.addLine(to: .init(x: 87, y: 527))
        hPath.addArc(withCenter: .init(x: 92, y: 527), radius: 4.8, startAngle: .pi, endAngle: .pi * 2, clockwise: false)
        hPath.addLine(to: .init(x: 96.8, y: 510))
        hPath.addLine(to: .init(x: 116, y: 510))
        hPath.addLine(to: .init(x: 116, y: 527))
        hPath.addArc(withCenter: .init(x: 121, y: 527), radius: 4.8, startAngle: .pi, endAngle: .pi * 2, clockwise: false)
        hPath.addLine(to: .init(x: 125.8, y: 488))
        hPath.addArc(withCenter: .init(x: 121, y: 488), radius: 4.8, startAngle: .pi * 2, endAngle: .pi, clockwise: false)
        hPath.addLine(to: .init(x: 116, y: 503))
        hPath.addLine(to: .init(x: 96.8, y: 503))
        hPath.addLine(to: .init(x: 96.8, y: 488))
        hPath.addArc(withCenter: .init(x: 92, y: 488), radius: 4.8, startAngle: .pi * 2, endAngle: .pi, clockwise: false)
        
        let aPath = UIBezierPath()
        aPath.move(to: .init(x: 159, y: 498.5))
        aPath.addLine(to: .init(x: 159, y: 501.5))
        aPath.addArc(withCenter: .init(x: 147, y: 513), radius: 17, startAngle: .pi * 7 / 4, endAngle: .pi * 1.1 / 4, clockwise: false)
        aPath.addLine(to: .init(x: 159, y: 527))
        aPath.addArc(withCenter: .init(x: 161.5, y: 527), radius: 2.5, startAngle: .pi, endAngle: .pi * 2, clockwise: false)
        aPath.addLine(to: .init(x: 164, y: 498.5))
        aPath.addArc(withCenter: .init(x: 161.5, y: 498.5), radius: 2.5, startAngle: .pi * 2, endAngle: .pi, clockwise: false)
        
        let aCenterPath = UIBezierPath()
        aCenterPath.addArc(withCenter: .init(x: 147, y: 513), radius: 9.7, startAngle: .pi * 7.15 / 4, endAngle: (.pi * 7.15 / 4) + (2 * .pi), clockwise: false)
        
        let rPath = UIBezierPath()
        rPath.move(to: .init(x: 169, y: 498.5))
        rPath.addLine(to: .init(x: 169, y: 527))
        rPath.addArc(withCenter: .init(x: 172.5, y: 527), radius: 3.5, startAngle: .pi, endAngle: .pi * 2, clockwise: false)
        rPath.addLine(to: .init(x: 176, y: 512))
        rPath.addArc(withCenter: .init(x: 184, y: 512), radius: 8, startAngle: (.pi) , endAngle: .pi * 3 / 2, clockwise: true)
        rPath.addLine(to: .init(x: 189, y: 504))
        rPath.addArc(withCenter: .init(x: 189, y: 500), radius: 4, startAngle: .pi / 2 , endAngle: .pi * 5.3 / 3, clockwise: false)
        rPath.addArc(withCenter: .init(x: 185, y: 510), radius: 14, startAngle: .pi * 4.8 / 3, endAngle: .pi * 5.1 / 4, clockwise: false)
        rPath.addArc(withCenter: .init(x: 172.5, y: 498.5), radius: 3.5, startAngle: .pi * 2, endAngle: .pi, clockwise: false)
        
        let bPath = UIBezierPath()
        bPath.move(to: .init(x: 197, y: 490))
        bPath.addLine(to: .init(x: 197, y: 527))
        bPath.addArc(withCenter: .init(x: 200.5, y: 527), radius: 3.5, startAngle: .pi, endAngle: .pi * 2, clockwise: false)
        bPath.addLine(to: .init(x: 204, y: 523.5))
        bPath.addArc(withCenter: .init(x: 216, y: 512), radius: 17, startAngle: .pi * 2.1 / 3, endAngle: .pi * 3.75 / 3, clockwise: false)
        bPath.addLine(to: .init(x: 204, y: 490))
        bPath.addArc(withCenter: .init(x: 200.5, y: 490), radius: 3.5, startAngle: .pi * 2, endAngle: .pi, clockwise: false)
        
        let bCenterPath = UIBezierPath()
        bCenterPath.addArc(withCenter: .init(x: 216, y: 512), radius: 9.7, startAngle: .pi * 2.35 / 3, endAngle: (.pi * 2.35 / 3) - 2 * .pi, clockwise: false)
        
        let rSecondPath = UIBezierPath()
        rSecondPath.move(to: .init(x: 237, y: 498.5))
        rSecondPath.addLine(to: .init(x: 237, y: 527))
        rSecondPath.addArc(withCenter: .init(x: 240.5, y: 527), radius: 3.5, startAngle: .pi, endAngle: .pi * 2, clockwise: false)
        rSecondPath.addLine(to: .init(x: 244, y: 512))
        rSecondPath.addArc(withCenter: .init(x: 252, y: 512), radius: 8, startAngle: (.pi) , endAngle: .pi * 3 / 2, clockwise: true)
        rSecondPath.addLine(to: .init(x: 257, y: 504))
        rSecondPath.addArc(withCenter: .init(x: 257, y: 500), radius: 4, startAngle: .pi / 2 , endAngle: .pi * 5.3 / 3, clockwise: false)
        rSecondPath.addArc(withCenter: .init(x: 253, y: 510), radius: 14, startAngle: .pi * 4.8 / 3, endAngle: .pi * 5.1 / 4, clockwise: false)
        rSecondPath.addArc(withCenter: .init(x: 240.5, y: 498.5), radius: 3.5, startAngle: .pi * 2, endAngle: .pi, clockwise: false)
        
        let oPath = UIBezierPath()
        oPath.addArc(withCenter: .init(x: 279, y: 512), radius: 17, startAngle: .zero, endAngle: 2 * .pi, clockwise: true)
        
        let oCenterPath = UIBezierPath()
        oCenterPath.addArc(withCenter: .init(x: 279, y: 512), radius: 9.7, startAngle: .zero, endAngle: 2 * .pi, clockwise: true)
        
        let sPath = UIBezierPath()
        sPath.addArc(withCenter: .init(x: 313, y: 512), radius: 15.5, startAngle: .pi * 10.5 / 6, endAngle: .pi * 7.6 / 6, clockwise: false)
        sPath.addArc(withCenter: .init(x: 313, y: 505.5), radius: 12.5, startAngle: .pi * 3.2 / 3, endAngle: .pi * 2.8 / 3, clockwise: false)
        sPath.addArc(withCenter: .init(x: 313, y: 501), radius: 14, startAngle: .pi * 4.5 / 6, endAngle: .pi * 3 / 4, clockwise: false)
        sPath.addArc(withCenter: .init(x: 315, y: 519.5), radius: 3.5, startAngle: .pi * 5 / 3, endAngle: .pi * 1.1 / 2, clockwise: true)
        sPath.addArc(withCenter: .init(x: 313, y: 508.5), radius: 14.7, startAngle: .pi / 2, endAngle: .pi * 4 / 6, clockwise: true)
        sPath.addArc(withCenter: .init(x: 302, y: 522), radius: 2.3, startAngle: .pi * 7 / 4, endAngle: .pi * 3 / 4 , clockwise: false)
        sPath.addArc(withCenter: .init(x: 313, y: 514), radius: 15.5, startAngle: .pi * 4.6 / 6, endAngle: .pi / 4, clockwise: false)
        sPath.addArc(withCenter: .init(x: 313, y: 511), radius: 18.2, startAngle: .pi * 1.2 / 4, endAngle: .pi * 1.5 / 6, clockwise: false)
        sPath.addArc(withCenter: .init(x: 315, y: 521), radius: 11, startAngle: .pi * 2, endAngle: .pi * 10 / 6, clockwise: false)
        sPath.addLine(to: .init(x: 308, y: 507))
        sPath.addArc(withCenter: .init(x: 313, y: 508), radius: 6, startAngle: .pi * 7 / 6, endAngle: .pi * 3.9 / 3, clockwise: true)
        sPath.addArc(withCenter: .init(x: 313, y: 512), radius: 10, startAngle: .pi * 4.5 / 3, endAngle: .pi * 10.5 / 6, clockwise: true)
        sPath.addArc(withCenter: .init(x: 323, y: 503), radius: 2.4, startAngle: .pi / 2, endAngle: .pi * 5 / 3 , clockwise: false)

        let aLayer = CAShapeLayer()
        aLayer.fillColor = nil
        aLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        aLayer.lineWidth = 1
        aLayer.path = aPath.cgPath
        
        let aCenterLayer = CAShapeLayer()
        aCenterLayer.fillColor = nil
        aCenterLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        aCenterLayer.lineWidth = 1
        aCenterLayer.path = aCenterPath.cgPath
        
        let hLayer = CAShapeLayer()
        hLayer.fillColor = nil
        hLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        hLayer.lineWidth = 1
        hLayer.path = hPath.cgPath
        
        let rLayer = CAShapeLayer()
        rLayer.fillColor = nil
        rLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        rLayer.lineWidth = 1
        rLayer.path = rPath.cgPath
        
        let bLayer = CAShapeLayer()
        bLayer.fillColor = nil
        bLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        bLayer.lineWidth = 1
        bLayer.path = bPath.cgPath
        
        let bCenterLayer = CAShapeLayer()
        bCenterLayer.fillColor = nil
        bCenterLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        bCenterLayer.lineWidth = 1
        bCenterLayer.path = bCenterPath.cgPath
        
        let rSecondLayer = CAShapeLayer()
        rSecondLayer.fillColor = nil
        rSecondLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        rSecondLayer.lineWidth = 1
        rSecondLayer.path = rSecondPath.cgPath
        
        let oLayer = CAShapeLayer()
        oLayer.fillColor = nil
        oLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        oLayer.lineWidth = 1
        oLayer.path = oPath.cgPath
        
        let oCenterLayer = CAShapeLayer()
        oCenterLayer.fillColor = nil
        oCenterLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        oCenterLayer.lineWidth = 1
        oCenterLayer.path = oCenterPath.cgPath
        
        let sLayer = CAShapeLayer()
        sLayer.fillColor = nil
        sLayer.strokeColor = UIColor(red: 1, green: 107, blue: 253).cgColor
        sLayer.lineWidth = 1
        sLayer.path = sPath.cgPath
        
//        layer.addSublayer(aLayer)
//        layer.addSublayer(aCenterLayer)
//        layer.addSublayer(rLayer)
//        layer.addSublayer(bLayer)
//        layer.addSublayer(bCenterLayer)
//        layer.addSublayer(rSecondLayer)
//        layer.addSublayer(oLayer)
//        layer.addSublayer(oCenterLayer)
//        layer.addSublayer(sLayer)
        
        CATransaction.begin()
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.duration = 1
        animation.fillMode = .backwards

        CATransaction.setCompletionBlock {
            CATransaction.setCompletionBlock {
                CATransaction.setCompletionBlock {
                    CATransaction.setCompletionBlock {
                        CATransaction.setCompletionBlock {
                            CATransaction.setCompletionBlock {
                                sLayer.add(animation, forKey: "MyAnimation")
                                self.layer.addSublayer(sLayer)
                            }
                            oLayer.add(animation, forKey: "MyAnimation")
                            oCenterLayer.add(animation, forKey: "MyAnimation")
                            self.layer.addSublayer(oLayer)
                            self.layer.addSublayer(oCenterLayer)
                        }
                        rSecondLayer.add(animation, forKey: "MyAnimation")
                        self.layer.addSublayer(rSecondLayer)
                    }
                    bLayer.add(animation, forKey: "MyAnimation")
                    bCenterLayer.add(animation, forKey: "MyAnimation")
                    self.layer.addSublayer(bLayer)
                    self.layer.addSublayer(bCenterLayer)
                }
                rLayer.add(animation, forKey: "MyAnimation")
                self.layer.addSublayer(rLayer)
            }
            aLayer.add(animation, forKey: "MyAnimation")
            aCenterLayer.add(animation, forKey: "MyAnimation")
            self.layer.addSublayer(aLayer)
            self.layer.addSublayer(aCenterLayer)
        }
        layer.addSublayer(hLayer)
        hLayer.add(animation, forKey: "MyAnimation")
//        aLayer.add(animation, forKey: "MyAnimation")
//        aCenterLayer.add(animation, forKey: "MyAnimation")
//        rLayer.add(animation, forKey: "MyAnimation")
//        bLayer.add(animation, forKey: "MyAnimation")
//        bCenterLayer.add(animation, forKey: "MyAnimation")
//        rSecondLayer.add(animation, forKey: "MyAnimation")
//        oLayer.add(animation, forKey: "MyAnimation")
//        oCenterLayer.add(animation, forKey: "MyAnimation")
//        sLayer.add(animation, forKey: "MyAnimation")
        
        CATransaction.commit()
    }
}

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}
