import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    var circularView = CircleProgressBarView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "harbros.jpg")
        //imageView.alpha = 0.5
        circularView.addSubview(imageView)
        containerView.addSubview(circularView)
        view = containerView
    }
}

extension Array {
    public subscript(safeIndex index: Int) -> Element? {
        guard index >= 0, index < endIndex else {
            return nil
        }

        return self[index]
    }
}
