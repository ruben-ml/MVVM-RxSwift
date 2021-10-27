//
//  MVVMTests.swift
//  MVVMTests
//
//  Created by Rubén Muñoz López on 27/10/21.
//

import XCTest
import RxSwift
import RxTest
import RxBlocking

@testable import MVVMRx

class MVVMTests: XCTestCase {

    var viewModel: HomeViewModel!
    var scheduler: TestScheduler!
    var disposeBag: DisposeBag!
    
    override func setUpWithError() throws {
        self.scheduler = TestScheduler(initialClock: 0)
        self.disposeBag = DisposeBag()
        self.viewModel = HomeViewModel()
    }

    override func tearDownWithError() throws {
        viewModel = nil
    }

    func testExample() throws {
       
        let login = scheduler.createObserver(Bool.self)

        viewModel.output.login
            .drive(login)
            .disposed(by: disposeBag)
            
        scheduler.createColdObservable([.next(10, ("changed"))])
            .bind(to: viewModel.input.username)
            .disposed(by: disposeBag)
        scheduler.createColdObservable([.next(10, ("changed"))])
            .bind(to: viewModel.input.password)
            .disposed(by: disposeBag)
        scheduler.start()
        XCTAssert(true)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
