//
//  ViewController.swift
//  countriesSnapKit
//
//  Created by fortune cookie on 1/25/24.
//

import UIKit
import SnapKit



class ViewController: UIViewController {

    private lazy var teleportButton: UIButton = {
        let button = UIButton()
        button.setTitle("Teleport to next flag", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        button.addTarget(self, action: #selector(teleportToNextFlag), for: .touchUpInside)
        
        return button
    }()
    private var chinaView:china = {
        china()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupSubViews()
        // Do any additional setup after loading the view.
    }

    private func setupSubViews(){
        view.addSubview(chinaView)
        view.addSubview(teleportButton)
        teleportButton.snp.makeConstraints({make in
            make.center.equalTo(view.safeAreaLayoutGuide.snp.center)

        })
        
    }

    @objc func teleportToNextFlag(){
        let englang = EnglandViewController()
        englang.navigationController?.pushViewController(englang, animated: true)
    }
}

