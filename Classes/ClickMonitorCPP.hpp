//
//  ClickMonitor.hpp
//  Expecta
//
//  Created by Khyati Mirani on 16/05/23.
//
#pragma once
#include <iostream>
#include <string>
#include <array>
#include <map>
class ClickMonitorCPP {
public:
    std::multimap<std::string, std::string>  dictionary;
    std::multimap<std::string, std::string>  dictionaryTimeStamp;
    void hello_cpp(const std::string& name);
    bool checkIfGivenIntervalMatches(const std::string& timeString, int forSeconds);
    bool addEventToSystem(const std::string& key,const std::string& value);
    std::array<float, 3> getAggregatedAnswer(const std::string &key);
};
