
import UIKit

class HorizontalViewMore: UIView {
    private weak var lblContainer : UIView!
    private weak var titleLbl : UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initializeUI(){
        createViews()
        setFonts()
    }
    
    func setFonts() {
        self.titleLbl.font = UIFont.systemFont(ofSize: 14.0)
        self.titleLbl.textColor = UIColor.green
        self.titleLbl.textAlignment = .center
        self.titleLbl.numberOfLines = 0
        self.titleLbl.text = "VIEW MORE"
    }
    
    func createViews() {
        var view : UIView = UIView.init(frame: CGRect.zero)
        self.lblContainer = view;
        self.lblContainer.isUserInteractionEnabled = false
        self.lblContainer.translatesAutoresizingMaskIntoConstraints = false;
        self.addSubview(self.lblContainer)
        self.lblContainer.backgroundColor = UIColor.clear;
        self.lblContainer.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true;
        self.lblContainer.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true;
        self.lblContainer.leftAnchor.constraint(greaterThanOrEqualTo: self.leftAnchor, constant: 8.0).isActive = true
        self.lblContainer.rightAnchor.constraint(lessThanOrEqualTo: self.rightAnchor, constant: -8.0).isActive = true
        
        let lbl = UILabel.init(frame: CGRect.zero);
        self.titleLbl = lbl;
        self.titleLbl.isUserInteractionEnabled = false
        self.titleLbl.numberOfLines = 2;
        self.titleLbl.translatesAutoresizingMaskIntoConstraints = false;
        self.lblContainer.addSubview(self.titleLbl)
        self.titleLbl.leadingAnchor.constraint(equalTo: self.lblContainer.leadingAnchor).isActive = true
        self.titleLbl.trailingAnchor.constraint(equalTo: self.lblContainer.trailingAnchor).isActive = true
        self.titleLbl.topAnchor.constraint(equalTo: self.lblContainer.topAnchor).isActive = true
    }
    
    deinit {
        print("MemTest : HorizontalViewMore is deinitialized")
    }
}
