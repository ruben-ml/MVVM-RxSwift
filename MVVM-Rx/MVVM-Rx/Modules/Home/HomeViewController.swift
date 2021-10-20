//
//  HomeViewController.swift
//  MVVM-Rx
//
//  Created by Rubén Muñoz López on 20/10/21.
//

import UIKit

class HomeViewController: UIViewController {

    private var viewModel: HomeViewModel
    
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.font = UIFont(name: "HelveticaNeue-Bold", size: 30)
        titleLabel.text = "Login App"
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    private lazy var usernameTextfield: UITextField = {
        let usernameTextfield = UITextField()
        usernameTextfield.becomeFirstResponder()
        usernameTextfield.attributedPlaceholder = NSAttributedString(string: "Your username", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        usernameTextfield.textAlignment = .center
        usernameTextfield.layer.borderWidth = 1
        usernameTextfield.layer.cornerRadius = 10
        usernameTextfield.layer.borderColor = UIColor.black.cgColor
        usernameTextfield.translatesAutoresizingMaskIntoConstraints = false
        return usernameTextfield
    }()
    
    private lazy var passwordTextfield: UITextField = {
       let passwordTextfield = UITextField()
        passwordTextfield.attributedPlaceholder = NSAttributedString(string: "Your password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        passwordTextfield.textAlignment = .center
        passwordTextfield.layer.borderWidth = 1
        passwordTextfield.layer.borderColor = UIColor.black.cgColor
        passwordTextfield.translatesAutoresizingMaskIntoConstraints = false
        return passwordTextfield
    }()
    
    private lazy var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.layer.backgroundColor = UIColor.orange.cgColor
        loginButton.layer.borderWidth = 1
        loginButton.layer.cornerRadius = 10
        loginButton.layer.borderColor = UIColor.black.cgColor
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.setTitleColor(.systemFill, for: .disabled)
        loginButton.isEnabled = false
        return loginButton
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 20
        return stackView
    }()
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .systemTeal
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(usernameTextfield)
        stackView.addArrangedSubview(passwordTextfield)
        stackView.addArrangedSubview(loginButton)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor)
        ])
        NSLayoutConstraint.activate([
            loginButton.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            usernameTextfield.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            usernameTextfield.heightAnchor.constraint(equalToConstant: 50)
        ])
        NSLayoutConstraint.activate([
            passwordTextfield.widthAnchor.constraint(equalTo: stackView.widthAnchor),
            passwordTextfield.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

}
