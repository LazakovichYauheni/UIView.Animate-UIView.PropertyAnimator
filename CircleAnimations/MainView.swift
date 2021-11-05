//
//  Created by Eugeni Lazakovich on 21.03.21.
//

import Foundation
import UIKit

protocol MainViewDelegate: AnyObject {
    func viewTapped()
}

final class MainView: UIView {
    
    lazy var viewWithFrameForAnimating = UIView()
    lazy var viewCenter = UIView()
    lazy var viewBackground = UIView()
    lazy var viewAlpha = UIView()
    lazy var viewTransform = UIView()
    lazy var viewAllInOne = UIView()
    lazy var viewAllInOneInOrder = UIView()
    lazy var viewWithKeyFramesAnimationForAnimating = UIView()
    lazy var viewPropertyAnimator = UIView()
        
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(viewWithFrameForAnimating)
        addSubview(viewCenter)
        addSubview(viewBackground)
        addSubview(viewAlpha)
        addSubview(viewTransform)
        addSubview(viewAllInOne)
        addSubview(viewAllInOneInOrder)
        addSubview(viewWithKeyFramesAnimationForAnimating)
        addSubview(viewPropertyAnimator)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
