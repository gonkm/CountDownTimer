//
//  ViewController.swift
//  CountdownTimer
//
//  Created by t.nakamura on 2019/01/25.
//  Copyright © 2019 t.nakamura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var countLabel: UILabel!
    
    private let presenter = CounterPresenter()
//    private var viewModel: CounterViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.attachView(self)
//        viewModel = CounterViewModel()
    }
    
    
    @IBAction func countUp(_ sender: Any) {
        presenter.incrementCount()
//        viewModel.incrementCount(callback: { [weak self] count in
//            self?.updateCountLabel(count)
//        })
    }
    
    
    @IBAction func countDown(_ sender: Any) {
        presenter.decrementCount()
//        viewModel.decrementCount(callback: { [weak self] count in
//            self?.updateCountLabel(count)
//        })
    }
    
    
    @IBAction func countReset(_ sender: Any) {
        presenter.resetCount()
//        viewModel.resetCount(callback: { [weak self] count in
//            self?.updateCountLabel(count)
//        })
    }
        
//    private func updateCountLabel(_ count: Int){
//        countLabel.text = String(count)
//    }

}

extension ViewController: CounterDelegate {
    func updateCount(count: Int) {
        countLabel.text = String(count)
    }
}

