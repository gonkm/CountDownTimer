//
//  ViewController.swift
//  CountdownTimer
//
//  Created by t.nakamura on 2019/01/25.
//  Copyright © 2019 t.nakamura. All rights reserved.
//

import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countUpButton: UIButton!
    @IBOutlet weak var countDownButton: UIButton!
    @IBOutlet weak var countResetButton: UIButton!
    
    private let disposeBag = DisposeBag()
    
    private var viewModel: CounterViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
    }
    
    private func setupViewModel() {
        viewModel = CounterViewModel()
        let input = CounterViewModelInput(
            countUpButton: countUpButton.rx.tap.asObservable(),
            countDownButton: countDownButton.rx.tap.asObservable(),
            countResetButton: countResetButton.rx.tap.asObservable()
        )
        viewModel.setup(input: input)
        
        viewModel.outputs?.counterText
            .drive(countLabel.rx.text)
            .disposed(by: disposeBag)
        
        
    }
    
    

    
    

        
    private func updateCountLabel(_ count: Int){
        countLabel.text = String(count)
    }
    

}

