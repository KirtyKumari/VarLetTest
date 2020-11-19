

import UIKit

class ViewController: UIViewController {
    
    private weak var horizontalViewMore : HorizontalViewMore!

    override func viewDidLoad() {
        super.viewDidLoad()
        let footerView = HorizontalViewMore()
        self.horizontalViewMore = footerView
        self.horizontalViewMore.isUserInteractionEnabled = false
        self.horizontalViewMore.translatesAutoresizingMaskIntoConstraints = false;
        self.horizontalViewMore.layer.borderWidth = 1.0;
        self.horizontalViewMore.layer.borderColor = UIColor.red.cgColor
        self.horizontalViewMore.backgroundColor = .white
        self.view.addSubview(self.horizontalViewMore)
        self.horizontalViewMore.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.horizontalViewMore.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        self.horizontalViewMore.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.horizontalViewMore.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
    }


}

