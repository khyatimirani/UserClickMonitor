//
//  ClickMonitor.swift
//  UserClickMonitor
//
//  Created by Khyati Mirani on 25/05/23.
//

import Foundation

public class ClickMonitor: NSObject {
    let cppWrapper = ClickMonitorCPPWrapper()
    
   public func addEventToSystem(map: [String: String]) -> Bool {
        return cppWrapper.addEvent(toSystem: map.first?.key ?? "key1", map.first?.value ?? "1")
    }
    
    //  move this to c++ and store it in a different dictionary with key as the same from map param
    private func getCurrentTime() -> String {
        let mytime = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        return  format.string(from: mytime)
    }
    
    public func getAggregatedAnswer(key: String) -> [Float] {
        let clickCount = cppWrapper.getAggregatedAnswer(key)
        return clickCount as! [Float]
    }
}
