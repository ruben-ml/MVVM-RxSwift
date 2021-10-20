//
//  HomeViewModel.swift
//  MVVM-Rx
//
//  Created by Rubén Muñoz López on 20/10/21.
//

import Foundation
import RxSwift
import RxCocoa

class HomeViewModel: ViewModelType {
    
    struct Input {
        let username: AnyObserver<String>
        let password: AnyObserver<String>
    }
    struct Output {
        let login: Driver<Bool>
    }
    
    let input: Input
    let output: Output
    
    private let userName = PublishSubject<String>()
    private let password = PublishSubject<String>()
    
    init() {
        let login = Observable.combineLatest(userName, password) {
            userName, password in
            return userName.count > 3 && password.count > 3
        }.asDriver(onErrorJustReturn: false)
        
        input = Input(username: userName.asObserver(), password: password.asObserver())
        output = Output(login: login)
    }
}
