
import UIKit

class HorizontalViewMore: UIView {
    private weak var lblContainer : UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createViews() {
//        let view : UIView = UIView.init(frame: CGRect.zero)           //doesn't crash
        var view : UIView = UIView.init(frame: CGRect.zero) //crashes
        self.lblContainer = view;
        self.lblContainer.isUserInteractionEnabled = false
        self.lblContainer.translatesAutoresizingMaskIntoConstraints = false;
        self.addSubview(self.lblContainer)
        self.lblContainer.backgroundColor = UIColor.clear;
        self.lblContainer.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true;
        self.lblContainer.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true;
        self.lblContainer.leftAnchor.constraint(greaterThanOrEqualTo: self.leftAnchor, constant: 8.0).isActive = true
        self.lblContainer.rightAnchor.constraint(lessThanOrEqualTo: self.rightAnchor, constant: -8.0).isActive = true
    }
    
    deinit {
        print("MemTest : HorizontalViewMore is deinitialized")
    }
}
