
import UIKit

class CWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color : UIColor, title: String, systemImageName : String) {
        super.init(frame: .zero)
        
        configuration = .filled()
        configuration?.title = title
        configuration?.baseBackgroundColor = color
        configuration?.baseForegroundColor = .white
        configuration?.cornerStyle = .capsule
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePadding = 5
        configuration?.imagePlacement = .leading
        translatesAutoresizingMaskIntoConstraints = false
        
    }
}
