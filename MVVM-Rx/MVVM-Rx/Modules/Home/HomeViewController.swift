//
//  HomeViewController.swift
//  MVVM-Rx
//
//  Created by Rubén Muñoz López on 20/10/21.
//

import UIKit

class HomeViewController: UIViewController {

    private var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
