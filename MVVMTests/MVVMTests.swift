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
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
