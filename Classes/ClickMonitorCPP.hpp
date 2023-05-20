//
//  ClickMonitor.hpp
//  Expecta
//
//  Created by Khyati Mirani on 16/05/23.
//
#pragma once
#include <string>
#include <map>
class ClickMonitorCPP {
public:
    void hello_cpp(const std::string& name);
    bool checkIfGivenIntervalMatches(const std::string& timeString, int forSeconds);
    bool addEventToSystem(const std::string& key,const std::string& value);
    float getAggregatedAnswer(int timeStamp, const std::vector<int>& clickTimeStamps);
};
