//
//  EnglandViewController.swift
//  countriesSnapKit
//
//  Created by fortune cookie on 1/26/24.
//

import UIKit
import SnapKit
class EnglandViewController: UIViewController {

    private var englandView: england = {
        england()
    }()
   
    private lazy var teleportButton: UIButton = {
        let button = UIButton()
        button.setTitle("Teleport to next flag", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.addTarget(self, action: #selector(teleportToNextFlag), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubViews()
        
    }
    private func setupSubViews(){
        view.addSubview(englandView)
        englandView.snp.makeConstraints({make in
            make.center.equalTo(view.safeAreaLayoutGuide.snp.center)
            
        })
        
        view.addSubview(teleportButton)
        teleportButton.snp.makeConstraints({make in
            make.center.equalTo(view.safeAreaLayoutGuide.snp.center)
    })
    


}
    @objc func teleportToNextFlag(){
        let mexico = MexicoViewController()
        navigationController?.pushViewController(mexico, animated: true)
    }
                                           
        }
