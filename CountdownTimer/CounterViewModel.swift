//
//  CounterViewModel.swift
//  CountdownTimer
//
//  Created by t.nakamura on 2019/01/25.
//  Copyright © 2019 t.nakamura. All rights reserved.
//

class CounterViewModel {
    private(set) var count = 0
    
    func incrementCount(callback: (Int) -> ()) {
        count += 1
        callback(count)
    }
    
    func decrementCount(callback: (Int) -> ()) {
        count -= 1
        callback(count)
    }
    
    func resetCount(callback: (Int) -> ()) {
        count = 0
        callback(count)
    }
    
}
