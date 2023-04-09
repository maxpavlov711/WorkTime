//
//  AuthViewController.swift
//  Pods
//
//  Created by Max Pavlov on 9.04.23.
//

import UIKit
import SnapKit
import UIComponents

fileprivate extension Constants {
    static let horizontalOffset: CGFloat = 45
    static let buttonDividerOffset: CGFloat = 5
    static let interItemOffest: CGFloat = 34
    static let fieldHeight: CGFloat = 28
}

public final class AuthViewController: BaseViewController {
    
    private let contentView = UIView()
    private let loginTapButton = UIButton()
    private let buttonDividerView = UILabel()
    private let signUpTapButton = UIButton()
    private let usernameTextField = WTAuthTextField()
    private let passwordTextField = WTAuthTextField()
    private let loginButton = UIButton()
    
    override public func setup() {
        super.setup()
        
        view.backgroundColor = .white
        
        setupContentView()
        setupLoginTapButton()
        setupButtonDividerView()
        setupSignUpButton()
        setupLoginTextField()
        setupPasswordTextField()
        setupLoginButton()
    }
}

private extension AuthViewController {
    
    func setupContentView() {
        view.addSubview(contentView)
        
        contentView.snp.makeConstraints {
            $0.centerY.horizontalEdges.equalToSuperview()
        }
    }
    
    func setupLoginTapButton() {
        contentView.addSubview(loginTapButton)
        
        loginTapButton.setTitle("Login", for: .normal)
        loginTapButton.setTitleColor(.black, for: .normal)
        
        loginTapButton.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview().inset(Constants.horizontalOffset)
        }
    }
    
    func setupButtonDividerView() {
        contentView.addSubview(buttonDividerView)
        
        buttonDividerView.text = "/"
        
        buttonDividerView.snp.makeConstraints {
            $0.centerY.equalTo(loginTapButton)
            $0.leading.equalTo(loginTapButton.snp.trailing).offset(Constants.buttonDividerOffset)
        }
    }
    
    func setupSignUpButton() {
        contentView.addSubview(signUpTapButton)
        
        signUpTapButton.setTitle("Sign Up", for: .normal)
        signUpTapButton.setTitleColor(.black, for: .normal)
        
        signUpTapButton.snp.makeConstraints {
            $0.bottom.equalTo(loginTapButton)
            $0.leading.equalTo(buttonDividerView.snp.trailing).offset(Constants.buttonDividerOffset)
        }
    }
    
    func setupLoginTextField() {
        contentView.addSubview(usernameTextField)
        
        usernameTextField.placeholder = "Username"
        
        usernameTextField.snp.makeConstraints {
            $0.top.equalTo(loginTapButton.snp.bottom).offset(Constants.interItemOffest)
            $0.leading.equalToSuperview().inset(Constants.horizontalOffset)
            $0.height.equalTo(Constants.fieldHeight)
        }
    }
    
    func setupPasswordTextField() {
        contentView.addSubview(passwordTextField)
        
        passwordTextField.placeholder = "Password"
        
        passwordTextField.snp.makeConstraints {
            $0.top.equalTo(usernameTextField.snp.bottom).offset(Constants.interItemOffest)
            $0.leading.equalToSuperview().inset(Constants.horizontalOffset)
            $0.height.equalTo(Constants.fieldHeight)
        }
    }
    
    func setupLoginButton() {
        contentView.addSubview(loginButton)
        
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .blue
        
        loginButton.snp.makeConstraints {
            $0.top.equalTo(passwordTextField.snp.bottom).offset(Constants.interItemOffest)
            $0.trailing.equalToSuperview().inset(Constants.horizontalOffset)
            $0.bottom.equalToSuperview()
        }
    }
}
