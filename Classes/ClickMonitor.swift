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
       guard  let object = map.first  else { return false }
        return cppWrapper.addEvent(toSystem: object.key, object.value )
    }
    
    public func getAggregatedAnswer(key: String) -> [Float] {
        let clickCount = cppWrapper.getAggregatedAnswer(key)
        return clickCount as! [Float]
    }
}
