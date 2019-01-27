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
    
    private var viewModel: CounterViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel = CounterViewModel()
    }
    
    
    @IBAction func countUp(_ sender: Any) {
        viewModel.incrementCount(callback: { [weak self] count in
            self?.updateCountLabel(count)
        })
    }
    
    
    @IBAction func countDown(_ sender: Any) {
        viewModel.decrementCount(callback: { [weak self] count in
            self?.updateCountLabel(count)
        })
    }
    
    
    @IBAction func countReset(_ sender: Any) {
        viewModel.resetCount(callback: { [weak self] count in
            self?.updateCountLabel(count)
        })
    }
        
    private func updateCountLabel(_ count: Int){
        countLabel.text = String(count)
    }
    

}

