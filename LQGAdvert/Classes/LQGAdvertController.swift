//
//  LQGAdvertController.swift
//  LQGAdvert
//
//  Created by 罗建
//  Copyright (c) 2021 罗建. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import RxSwift
import RxCocoa
import LQGBaseView

@objcMembers public class LQGAdvertController: LQGBaseViewController {
    
    //MARK: - 属性
    
    lazy var confirmBtn: UIButton = {
        let btn: UIButton = .init()
        btn.backgroundColor = .red
        btn.layer.cornerRadius = 4
        btn.setTitle("关闭广告", for: .normal)
        return btn
    }()
    
    //MARK: - 初始化
    
    override public func lqg_addSubviews() {
        self.view.addSubview(self.confirmBtn)
        self.confirmBtn.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.center.equalToSuperview()
            make.height.equalTo(44)
        }
    }
    
    //MARK: - Life Cycle
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        self.confirmBtn.rx.tap.subscribe { [weak self] in
            self?.dismiss(animated: false, completion: nil)
        } onDisposed: {}
    }
    
}
