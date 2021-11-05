import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    var mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        containerView.addSubview(mainView)
        view = containerView
        
        setupFrameView()
        setupCenterView()
        setupBackgroundColorView()
        setupAlphaView()
        setupTransformView()
        setupAllInOneView()
        setupAllInOneInOrderView()
        setupKeyFrameView()
        
        /// Закомменть верхние setup-ы и раскоменть этот чтобы увидеть анимации PropertyAnimator-а
//        setupPropertyAnimatorView()
    }
    
    // MARK: - Setup
    
    func setupPropertyAnimatorView() {
        mainView.viewPropertyAnimator.backgroundColor = UIColor(red: 0, green: 190, blue: 240)
        mainView.viewPropertyAnimator.layer.cornerRadius = 40
        mainView.viewPropertyAnimator.frame = .init(
            x: UIScreen.main.bounds.width / 2,
            y: UIScreen.main.bounds.height / 2,
            width: 100,
            height: 100
        )
        
        animate()
    }
    
    func setupTestKeyFrame() {
        mainView.viewWithKeyFramesAnimationForAnimating.backgroundColor = UIColor(red: 0, green: 190, blue: 240)
        mainView.viewWithKeyFramesAnimationForAnimating.layer.cornerRadius = 50
        mainView.viewWithKeyFramesAnimationForAnimating.frame = .init(
            x: UIScreen.main.bounds.width / 3,
            y: UIScreen.main.bounds.height / 2,
            width: 100,
            height: 100
        )
        
        UIView.animateKeyframes(withDuration: 5, delay: .zero, options: [.autoreverse, .repeat], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                self.mainView.viewWithKeyFramesAnimationForAnimating.layer.cornerRadius = 25
                self.mainView.viewWithKeyFramesAnimationForAnimating.frame = .init(
                    x: UIScreen.main.bounds.width / 3,
                    y: UIScreen.main.bounds.height / 3,
                    width: 50,
                    height: 50
                )
            })
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
                self.mainView.viewWithKeyFramesAnimationForAnimating.layer.cornerRadius = 12.5
                self.mainView.viewWithKeyFramesAnimationForAnimating.frame = .init(
                    x: UIScreen.main.bounds.width / 1.5,
                    y: UIScreen.main.bounds.height / 3,
                    width: 25,
                    height: 25
                )
            })
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25, animations: {
                self.mainView.viewWithKeyFramesAnimationForAnimating.layer.cornerRadius = 6.75
                self.mainView.viewWithKeyFramesAnimationForAnimating.frame = .init(
                    x: UIScreen.main.bounds.width / 1.5,
                    y: UIScreen.main.bounds.height / 2,
                    width: 12.5,
                    height: 12.5
                )
            })
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                self.mainView.viewWithKeyFramesAnimationForAnimating.layer.cornerRadius = 3.325
                self.mainView.viewWithKeyFramesAnimationForAnimating.frame = .init(
                    x: UIScreen.main.bounds.width / 3,
                    y: UIScreen.main.bounds.height / 2,
                    width: 6.75,
                    height: 6.75
                )
            })
        })
    }
    
    func setupFrameView() {
        mainView.viewWithFrameForAnimating.clipsToBounds = true
        mainView.viewWithFrameForAnimating.isUserInteractionEnabled = true
        mainView.viewWithFrameForAnimating.layer.cornerRadius = 6
        mainView.viewWithFrameForAnimating.backgroundColor = UIColor(red: 62, green: 57, blue: 68)
        mainView.viewWithFrameForAnimating.frame = .init(x: 16, y: 400, width: 100, height: 60)
        
        animateFrame()
    }
    
    func setupCenterView() {
        mainView.viewCenter.clipsToBounds = true
        mainView.viewCenter.isUserInteractionEnabled = true
        mainView.viewCenter.layer.cornerRadius = 6
        mainView.viewCenter.backgroundColor = UIColor(red: 62, green: 57, blue: 68)
        mainView.viewCenter.frame = .init(x: 16, y: 100, width: 100, height: 60)
        
        animateCenter()
    }
    
    func setupBackgroundColorView() {
        mainView.viewBackground.clipsToBounds = true
        mainView.viewBackground.isUserInteractionEnabled = true
        mainView.viewBackground.layer.cornerRadius = 6
        mainView.viewBackground.backgroundColor = UIColor(red: 62, green: 57, blue: 68)
        mainView.viewBackground.frame = .init(x: 16, y: 280, width: 100, height: 60)
        
        animateBackground()
    }
    
    func setupAlphaView() {
        mainView.viewAlpha.clipsToBounds = true
        mainView.viewAlpha.isUserInteractionEnabled = true
        mainView.viewAlpha.layer.cornerRadius = 6
        mainView.viewAlpha.backgroundColor = UIColor(red: 62, green: 57, blue: 68)
        mainView.viewAlpha.frame = .init(x: 16, y: 500, width: 100, height: 60)
        
        animateAlpha()
    }
    
    func setupTransformView() {
        mainView.viewTransform.clipsToBounds = true
        mainView.viewTransform.isUserInteractionEnabled = true
        mainView.viewTransform.layer.cornerRadius = 6
        mainView.viewTransform.backgroundColor = UIColor(red: 62, green: 57, blue: 68)
        mainView.viewTransform.frame = .init(x: 40, y: 600, width: 100, height: 60)
        
        animateTransform()
    }
    
    func setupAllInOneView() {
        mainView.viewAllInOne.clipsToBounds = true
        mainView.viewAllInOne.isUserInteractionEnabled = true
        mainView.viewAllInOne.layer.cornerRadius = 6
        mainView.viewAllInOne.backgroundColor = UIColor(red: 62, green: 57, blue: 68)
        mainView.viewAllInOne.frame = .init(x: 16, y: 700, width: 100, height: 60)
        
        animateviewAllInOne()
    }
    
    func setupAllInOneInOrderView() {
        mainView.viewAllInOneInOrder.clipsToBounds = true
        mainView.viewAllInOneInOrder.isUserInteractionEnabled = true
        mainView.viewAllInOneInOrder.layer.cornerRadius = 6
        mainView.viewAllInOneInOrder.backgroundColor = UIColor(red: 62, green: 57, blue: 68)
        mainView.viewAllInOneInOrder.frame = .init(x: 16, y: 800, width: 100, height: 60)
        
        animateAllInOneInOrder()
    }
    
    func setupKeyFrameView() {
        mainView.viewWithKeyFramesAnimationForAnimating.backgroundColor = UIColor(red: 0, green: 190, blue: 240)
        mainView.viewWithKeyFramesAnimationForAnimating.layer.cornerRadius = 50
        mainView.viewWithKeyFramesAnimationForAnimating.frame = .init(x: 16, y: 100, width: 100, height: 100)
        
        animateKeyFrame()
    }
    
    // MARK: - Animate
    
    func animateFrame() {
        UIView.animate(withDuration: 2, delay: .zero, usingSpringWithDamping: 1, initialSpringVelocity: 10) {
            self.mainView.viewWithFrameForAnimating.frame.origin.x = 120
        }
    }
    
    func animateCenter() {
        UIView.animate(withDuration: 2) {
            self.mainView.viewCenter.center = .init(x: 200, y: 200)
        }
    }
    
    func animateBackground() {
        UIView.animate(withDuration: 2) {
            self.mainView.viewBackground.backgroundColor = UIColor(red: 83, green: 94, blue: 110)
        }
    }
    
    func animateAlpha() {
        UIView.animate(withDuration: 2) {
            self.mainView.viewAlpha.alpha = 0.5
        }
    }
    
    func animateTransform() {
        let scaleTransform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        let rotateTransform = CGAffineTransform(rotationAngle: CGFloat.pi)
        let hybridTransform = scaleTransform.concatenating(rotateTransform)
        UIView.animate(withDuration: 2) {
            self.mainView.viewTransform.transform = hybridTransform
        }
    }
    
    func animateviewAllInOne() {
        let scaleTransform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        let rotateTransform = CGAffineTransform(rotationAngle: CGFloat.pi)
        let hybridTransform = scaleTransform.concatenating(rotateTransform)
        UIView.animate(withDuration: 2) {
            self.mainView.viewAllInOne.frame.origin.x = 120
            self.mainView.viewAllInOne.backgroundColor = UIColor(red: 83, green: 94, blue: 110)
            self.mainView.viewAllInOne.alpha = 0.5
            self.mainView.viewAllInOne.transform = hybridTransform
        }
    }
    
    func animateAllInOneInOrder() {
        let scaleTransform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        let rotateTransform = CGAffineTransform(rotationAngle: CGFloat.pi)
        let hybridTransform = scaleTransform.concatenating(rotateTransform)
        UIView.animate(withDuration: 2, animations: {
            self.mainView.viewAllInOneInOrder.frame.origin.x = 120
        }, completion: { _ in
            UIView.animate(withDuration: 2, animations: {
                self.mainView.viewAllInOneInOrder.backgroundColor = UIColor(red: 83, green: 94, blue: 110)
            }, completion: { _ in
                UIView.animate(withDuration: 2, animations: {
                    self.mainView.viewAllInOneInOrder.alpha = 0.5
                }, completion: { _ in
                    UIView.animate(withDuration: 2) {
                        self.mainView.viewAllInOneInOrder.transform = hybridTransform
                    }
                })
            })
        })
    }
    
    func animateKeyFrame() {
        UIView.animateKeyframes(withDuration: 5, delay: .zero, options: [.autoreverse, .repeat], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                self.mainView.viewWithKeyFramesAnimationForAnimating.layer.cornerRadius = 25
                self.mainView.viewWithKeyFramesAnimationForAnimating.frame = .init(x: 300, y: 100, width: 50, height: 50)
            })
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25, animations: {
                self.mainView.viewWithKeyFramesAnimationForAnimating.layer.cornerRadius = 25
                self.mainView.viewWithKeyFramesAnimationForAnimating.frame = .init(x: 300, y: 130, width: 50, height: 50)
            })
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25, animations: {
                self.mainView.viewWithKeyFramesAnimationForAnimating.layer.cornerRadius = 25
                self.mainView.viewWithKeyFramesAnimationForAnimating.frame = .init(x: 16, y: 130, width: 50, height: 50)
            })
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25, animations: {
                self.mainView.viewWithKeyFramesAnimationForAnimating.layer.cornerRadius = 25
                self.mainView.viewWithKeyFramesAnimationForAnimating.frame = .init(x: 16, y: 100, width: 50, height: 50)
            })
        })
    }
    
    /// Раскоменть необходимые методы, чтобы увидеть различные анимации для PropertyAnimator
    
//    func animate() {
//        let animator = UIViewPropertyAnimator(duration: 2, curve: .linear) {
//            self.mainView.viewPropertyAnimator.backgroundColor = .darkGray
//        }
//        animator.startAnimation()
//
//        animator.addAnimations {
//            self.mainView.viewPropertyAnimator.layer.cornerRadius = 10
//        }
//
//        animator.addCompletion { position in
//            if position == .end {
//                print("End of animation")
//            }
//        }
//    }

//    func animate() {
//        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 2, delay: .zero, options: []) {
//            self.mainView.viewPropertyAnimator.backgroundColor = .darkGray
//            self.mainView.viewPropertyAnimator.layer.cornerRadius = 10
//        }
//    }
    
    
//    func animate() {
//        let point1 = CGPoint(x: 1, y: 0.1)
//        let point2 = CGPoint(x: 1, y: 0.5)
//        let animator = UIViewPropertyAnimator(duration: 4, controlPoint1: point1, controlPoint2: point2) {
//            self.mainView.viewPropertyAnimator.center = .init(x: 200, y: 200)
//        }
//        animator.startAnimation()
//
//
//    }

//    func animate() {
//        let point1 = CGPoint(x: 1, y: 0.1)
//        let point2 = CGPoint(x: 1, y: 0.5)
//        let cubicTiming = UICubicTimingParameters(controlPoint1: point1, controlPoint2: point2)
//        let animator = UIViewPropertyAnimator(duration: 4, timingParameters: cubicTiming)
//        animator.addAnimations {
//            self.mainView.viewPropertyAnimator.center = .init(x: 200, y: 200)
//        }
//        animator.startAnimation()
//    }
    
    func animate() {
        let timingFunction = CAMediaTimingFunction(controlPoints: 0.47, 0, 0.745, 0.715)
        CATransaction.begin()
        CATransaction.setAnimationTimingFunction(timingFunction)
        UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 2, delay: .zero, options: []) {
            self.mainView.viewPropertyAnimator.center = .init(x: 200, y: 200)
        }
        CATransaction.commit()
    }
    

//    func animate() {
//        let springTiming = UISpringTimingParameters(
//            mass: 1,
//            stiffness: 10,
//            damping: 0.8,
//            initialVelocity: CGVector(dx: 4, dy: 0)
//        )
//        let animator = UIViewPropertyAnimator(duration: 3, timingParameters: springTiming)
//        animator.addAnimations {
//            self.mainView.viewPropertyAnimator.center = .init(x: 200, y: 200)
//        }
//        animator.startAnimation()
//    }
}


//    static let easeInSine = CAMediaTimingFunction(controlPoints: 0.47, 0, 0.745, 0.715)
//    static let easeOutSine = CAMediaTimingFunction(controlPoints: 0.39, 0.575, 0.565, 1)
//    static let easeInOutSine = CAMediaTimingFunction(controlPoints: 0.445, 0.05, 0.55, 0.95)
//    static let easeInQuad = CAMediaTimingFunction(controlPoints: 0.55, 0.085, 0.68, 0.53)
//    static let easeOutQuad = CAMediaTimingFunction(controlPoints: 0.25, 0.46, 0.45, 0.94)
//    static let easeInOutQuad = CAMediaTimingFunction(controlPoints: 0.455, 0.03, 0.515, 0.955)
//    static let easeInCubic = CAMediaTimingFunction(controlPoints: 0.55, 0.055, 0.675, 0.19)
//    static let easeOutCubic = CAMediaTimingFunction(controlPoints: 0.215, 0.61, 0.355, 1)
//    static let easeInOutCubic = CAMediaTimingFunction(controlPoints: 0.645, 0.045, 0.355, 1)
//    static let easeInQuart = CAMediaTimingFunction(controlPoints: 0.895, 0.03, 0.685, 0.22)
//    static let easeOutQuart = CAMediaTimingFunction(controlPoints: 0.165, 0.84, 0.44, 1)
//    static let easeInOutQuart = CAMediaTimingFunction(controlPoints: 0.77, 0, 0.175, 1)
//    static let easeInQuint = CAMediaTimingFunction(controlPoints: 0.755, 0.05, 0.855, 0.06)
//    static let easeOutQuint = CAMediaTimingFunction(controlPoints: 0.23, 1, 0.32, 1)
//    static let easeInOutQuint = CAMediaTimingFunction(controlPoints: 0.86, 0, 0.07, 1)
//    static let easeInExpo = CAMediaTimingFunction(controlPoints: 0.95, 0.05, 0.795, 0.035)
//    static let easeOutExpo = CAMediaTimingFunction(controlPoints: 0.19, 1, 0.22, 1)
//    static let easeInOutExpo = CAMediaTimingFunction(controlPoints: 1, 0, 0, 1)
//    static let easeInCirc = CAMediaTimingFunction(controlPoints: 0.6, 0.04, 0.98, 0.335)
//    static let easeOutCirc = CAMediaTimingFunction(controlPoints: 0.075, 0.82, 0.165, 1)
//    static let easeInOutCirc = CAMediaTimingFunction(controlPoints: 0.785, 0.135, 0.15, 0.86)
//    static let easeInBack = CAMediaTimingFunction(controlPoints: 0.6, -0.28, 0.735, 0.045)
//    static let easeOutBack = CAMediaTimingFunction(controlPoints: 0.175, 0.885, 0.32, 1.275)
//    static let easeInOutBack = CAMediaTimingFunction(controlPoints: 0.68, -0.55, 0.265, 1.55)
