//
//  CounterPresenter.swift
//  CountdownTimer
//
//  Created by t.nakamura on 2019/01/28.
//  Copyright © 2019 t.nakamura. All rights reserved.
//

class CounterPresenter {
    private var count = 0 {
        didSet {
            delegate?.updateCount(count: count)
        }
    }
    
    private var delegate: CounterDelegate?
    
    func attachView(_ delegate: CounterDelegate) {
        self.delegate = delegate
    }
    
    func detachView() {
        self.delegate = nil
    }
    
    func incrementCount() {
        count += 1
    }

    func decrementCount() {
        count -= 1
    }
    
    func resetCount() {
        count = 0
    }

}
