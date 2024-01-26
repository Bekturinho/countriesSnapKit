//
//  england.swift
//  countriesSnapKit
//
//  Created by fortune cookie on 1/26/24.
//

import UIKit
import SnapKit
class england: UIView {

    private lazy var firstButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemRed
       
        return button
    }()
    private lazy var secondButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemRed
       
        return button
    }()
    override func layoutSubviews() {
        setupSubViews()
    }
    private func setupSubViews(){
        addSubview(firstButton)
        firstButton.snp.makeConstraints({make in
            
            make.center.equalToSuperview()
            make.height.equalToSuperview().offset(1000)
            make.width.equalToSuperview().offset(50
            )
            
            
        })
        addSubview(secondButton)
        secondButton.snp.makeConstraints({make in
            
            make.center.equalToSuperview()
            make.height.equalToSuperview().offset(50)
            make.width.equalToSuperview().offset(1000)
        })
            
            
    
    }
 

}
