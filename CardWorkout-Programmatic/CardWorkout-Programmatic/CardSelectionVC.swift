import UIKit

class CardSelectionVC: UIViewController {
    //3 Button and ImageView
    let cardImageView  = UIImageView()
    let stopButton     = CWButton(backgroundColor: .systemRed , title: "Stop!")
    let resetButton    = CWButton(backgroundColor: .systemGreen, title: "Reset")
    let rulesButton    = CWButton(backgroundColor: .systemBlue, title: "Rules")
    
    var cards          = CardDeck.allValues
    var timer          : Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Background
        view.backgroundColor = .systemBackground
        configureUI()
        starTimer()
    }
    
    func starTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1 , target: self, selector: #selector(showRandomCard), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomCard() {
        cardImageView.image = cards.randomElement()
    }
    
    @objc func resetTimer() {
        stopTimer()
        starTimer()
    }
    
    @objc func stopTimer() {
        timer.invalidate()
    }
    
    func configureUI() {
        configureCardImageView()
        configureStopButton()
        configureResetButton()
        configureRulesButton()
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
    
    func configureStopButton() {
        view.addSubview(stopButton)
        stopButton.addTarget(self, action: #selector(stopTimer), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            stopButton.widthAnchor.constraint(equalToConstant: 260),
            stopButton.heightAnchor.constraint(equalToConstant: 50),
            stopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stopButton.centerYAnchor.constraint(equalTo: cardImageView.bottomAnchor, constant: 50)
        ])
    }
    
    func configureResetButton() {
        view.addSubview(resetButton)
        resetButton.addTarget(self, action: #selector(resetTimer), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            resetButton.widthAnchor.constraint(equalToConstant: 115),
            resetButton.heightAnchor.constraint(equalToConstant: 50),
            resetButton.leadingAnchor.constraint(equalTo: stopButton.leadingAnchor),
            resetButton.centerYAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 50)
            
        ])
    }
    
    func configureRulesButton() {
        view.addSubview(rulesButton)
        rulesButton.addTarget(self, action: #selector(presentRulesVC), for: .touchUpInside)
        NSLayoutConstraint.activate([
            rulesButton.widthAnchor.constraint(equalToConstant: 115),
            rulesButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.trailingAnchor.constraint(equalTo: stopButton.trailingAnchor),
            rulesButton.centerYAnchor.constraint(equalTo: stopButton.bottomAnchor, constant: 50)
        ])
    }
    
    @objc func presentRulesVC(){
        present(RulesVC(), animated: true)
    }
    
}
