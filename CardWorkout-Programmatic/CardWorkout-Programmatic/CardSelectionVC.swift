import UIKit

class CardSelectionVC: UIViewController {
    
    let carImageView  = UIImageView()
    let stopButton    = CWButton(backgroundColor: .systemRed , title: "Stop!")
    let resetButton   = CWButton(backgroundColor: .systemGreen, title: "Reset")
    let rulesButton   = CWButton(backgroundColor: .systemBlue, title: "Rules")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
    }

}
