# MVVM-RxSwift

[![Platform](https://img.shields.io/badge/platform-iOS-blue)](https://www.apple.com/es/ios/ios-15/)
[![Language](https://img.shields.io/badge/language-Swift-orange)](https://swift.org)

Login view managed with RxSwift approach with input and output.

# Requirements

- iOS 11.0+ / macOS 10.15+ / Xcode 12.0+
- Swift 5.0+

# Architecture MVVM

![Image text](https://quickbirdstudios.com/blog/wp-content/uploads/2018/05/MVVM_UML.jpg)

# RxSwift dependencies

```
pod 'RxSwift', '~> 6.2.0'
pod 'RxCocoa', '~> 6.2.0'
pod 'RxSwiftExt', '~> 6.0.0'
```

# Usage

Example of a login view with architecture MVVM in which we implement reactive programming and we want to enable the button view when the user and password characters are greater than 3 in the textfield.

# Code 

```
func bindViewModel() {
        usernameTextfield
            .rx.text.map { $0 ?? "" }
            .debug("username")
            .bind(to: viewModel.input.username)
            .disposed(by: disposeBag)
        passwordTextfield
            .rx.text.map { $0 ?? "" }
            .debug("password")
            .bind(to: viewModel.input.password)
            .disposed(by: disposeBag)
        viewModel
            .output.login
            .debug("button")
            .drive(loginButton.rx.isEnabled)
            .disposed(by: disposeBag)
    }
```

This method is subscribed and notified when there is a change that has been previously initialized in the viewModel.
