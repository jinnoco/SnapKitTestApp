//
//  ViewController.swift
//  test9-11
//
//  Created by J on 2020/09/11.
//  Copyright © 2020 nof. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let centerLabel: UILabel = {
        let label = UILabel()
        label.text = "Center"
        label.textColor = .white
        label.backgroundColor = .darkGray
        label.textAlignment = .center
        return label
    }()
    
    let topLabel: UILabel = {
        let label = UILabel()
        label.text = "Top"
        label.textColor = .white
        label.backgroundColor = .darkGray
        label.textAlignment = .center
        return label
    }()
    
    let rightLabel: UILabel = {
        let label = UILabel()
        label.text = "Right"
        label.textColor = .white
        label.backgroundColor = .darkGray
        label.textAlignment = .center
        return label
    }()
    
    let bottomLabel: UILabel = {
        let label = UILabel()
        label.text = "Bottom"
        label.textColor = .white
        label.backgroundColor = .darkGray
        label.textAlignment = .center
        return label
    }()
    
    let leftLabel: UILabel = {
        let label = UILabel()
        label.text = "Left"
        label.textColor = .white
        label.backgroundColor = .darkGray
        label.textAlignment = .center
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white

        self.view.addSubview(centerLabel)
        self.view.addSubview(topLabel)
        self.view.addSubview(rightLabel)
        self.view.addSubview(bottomLabel)
        self.view.addSubview(leftLabel)

        setupView()
  
    }
    
    //SnapKit
    func setupView(){
        
        centerLabel.snp.makeConstraints { (make) in
            make.width.height.equalTo(100)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        topLabel.snp.makeConstraints { (make) in
            make.size.equalTo(centerLabel)
            make.bottom.equalTo(centerLabel.snp.top).offset(-10)
            make.centerX.equalToSuperview()
        }
        
        rightLabel.snp.makeConstraints { (make) in
            make.size.equalTo(100)
            make.top.equalTo(centerLabel)
            make.left.equalTo(centerLabel.snp.right).offset(10)
        }
        
        bottomLabel.snp.makeConstraints { (make) in
            make.size.equalTo(centerLabel)
            make.top.equalTo(centerLabel.snp.bottom).offset(10)
            make.centerX.equalToSuperview()
        }
        
        leftLabel.snp.makeConstraints { (make) in
            make.size.equalTo(centerLabel)
            make.top.equalTo(centerLabel)
            make.right.equalTo(centerLabel.snp.left).offset(-10)
        }
    }


}

