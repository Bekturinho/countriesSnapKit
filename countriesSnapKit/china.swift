//
//  china.swift
//  countriesSnapKit
//
//  Created by fortune cookie on 1/25/24.
//

import UIKit
import SnapKit
class china: UIView {
    private lazy var bigStar: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "star.fill")
        image.tintColor = .systemYellow
        return image
    }()
    private lazy var firstStar: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "star.fill")
        image.tintColor = .systemYellow
        return image
    }()
    private lazy var secondStar: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "star.fill")
        image.tintColor = .systemYellow
        return image
    }()
    private lazy var thirdStar: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "star.fill")
        image.tintColor = .systemYellow
        return image
    }()
    private lazy var fourthStar: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "star.fill")
        image.tintColor = .systemYellow
        return image
    }()
    
    
    
    
    override func layoutSubviews() {
        setupSubViews()
        
    }
    
    private func setupSubViews(){
        addSubview(bigStar)
        bigStar.snp.makeConstraints({make in
            make.top.equalToSuperview().offset(50)
            make.left.equalToSuperview().offset(40)
            make.width.height.equalToSuperview().offset(100)
        })
        addSubview(firstStar)
        firstStar.snp.makeConstraints({make in
            make.top.equalToSuperview().offset(55)
            make.left.equalTo(bigStar.snp_rightMargin).offset(20)
            make.width.height.equalToSuperview().offset(20)
        })

        addSubview(secondStar)
        secondStar.snp.makeConstraints({make in
            make.top.equalTo(firstStar.snp_bottomMargin).offset(12)
            make.left.equalTo(bigStar.snp_rightMargin).offset(30)
            make.width.height.equalToSuperview().offset(20)
        })

        addSubview(thirdStar)
        thirdStar.snp.makeConstraints({make in
            make.top.equalTo(secondStar.snp_bottomMargin).offset(12)
            make.left.equalTo(bigStar.snp_rightMargin).offset(30)
            make.width.height.equalToSuperview().offset(20)
        })

        addSubview(fourthStar)
        fourthStar.snp.makeConstraints({make in
            make.top.equalTo(thirdStar.snp_bottomMargin).offset(12)
            make.left.equalTo(bigStar.snp_rightMargin).offset(20)
            make.width.height.equalToSuperview().offset(20)
        })

    }

}
