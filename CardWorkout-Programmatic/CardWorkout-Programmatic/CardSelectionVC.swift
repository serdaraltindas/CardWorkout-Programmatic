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
        configureUI()
    }

    func configureUI() {
        configureCardImageView()
    }
    
    func configureCardImageView() {
        view.addSubview(cardImageView)
        cardImageView.translatesAutoresizingMaskIntoConstraints = false
        cardImageView.image = UIImage(named: "AS")
        
        NSLayoutConstraint.activate([
            cardImageView.widthAnchor.constraint(equalToConstant: 250),
            cardImageView.heightAnchor.constraint(equalToConstant: 350),
            cardImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -85)
        ])
    }
}
