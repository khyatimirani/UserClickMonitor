//
//  ClickMonitor.cpp
//  Expecta
//
//  Created by Khyati Mirani on 16/05/23.
//



#include "ClickMonitorCPP.hpp"
#include <iostream>
#include <string>
#include <chrono>
#include <vector>
#include <map>
using namespace std;
void ClickMonitorCPP::hello_cpp(const std::string& name) {
    cout << "Hello " << name << " in C++" << endl;
}

bool ClickMonitorCPP::addEventToSystem(const std::string& key,const std::string& value) {
    
    printf("calling from CPP");

    return true;
}

bool ClickMonitorCPP::checkIfGivenIntervalMatches(const std::string& timeString, int forSeconds) {
    // Get current time
    std::chrono::system_clock::time_point currentTime = std::chrono::system_clock::now();
    
    // Convert timeString to time_point
    std::tm timeInfo = {};
    const char* format = "%Y-%m-%dT%H:%M:%S";
    if (strptime(timeString.c_str(), format, &timeInfo) == nullptr) {
        return false;  // Parsing failed
    }
    std::time_t inputTime = std::mktime(&timeInfo);
    std::chrono::system_clock::time_point inputTimePoint = std::chrono::system_clock::from_time_t(inputTime);
    
    // Calculate time interval in seconds
    std::chrono::duration<double> secondsBetween = currentTime - inputTimePoint;
    
    // Check if the interval is within the given seconds
    if (secondsBetween.count() <= forSeconds) {
        return true;
    } else {
        return false;
    }
}

float getAggregatedAnswer(int timeStamp, const std::vector<int>& clickTimeStamps) {
    ClickMonitorCPP cpp;
    int counter = 0;
    for (int object : clickTimeStamps) {
        if (cpp.checkIfGivenIntervalMatches("key1", object)) {
            counter++;
        }
    }
    float a = static_cast<float>(counter);
    return a;
}



