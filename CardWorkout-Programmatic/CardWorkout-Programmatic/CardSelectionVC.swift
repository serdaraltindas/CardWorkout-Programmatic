import UIKit

class CardSelectionVC: UIViewController {
    //3 Button and ImageView
    let cardImageView  = UIImageView()
    let stopButton    = CWButton(backgroundColor: .systemRed , title: "Stop!")
    let resetButton   = CWButton(backgroundColor: .systemGreen, title: "Reset")
    let rulesButton   = CWButton(backgroundColor: .systemBlue, title: "Rules")

    override func viewDidLoad() {
        super.viewDidLoad()
        //Background
        view.backgroundColor = .systemBackground
    }

    func configureUI() {
        
    }
    
    func configureCardImageView() {
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "")
    }
}
