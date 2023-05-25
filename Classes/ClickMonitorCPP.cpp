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
#include <time.h>
using namespace std;
void ClickMonitorCPP::hello_cpp(const std::string& name) {
    cout << "Hello " << name << " in C++" << endl;
}

const std::string currentDateTime() {
    time_t     now = time(0);
    struct tm  tstruct;
    char       buf[80];
    tstruct = *localtime(&now);
    strftime(buf, sizeof(buf), "%Y-%m-%dT%H:%M:%S", &tstruct);

    return buf;
}

bool ClickMonitorCPP::addEventToSystem(const std::string& key,const std::string& value) {
    dictionary.insert({key, value});
    dictionaryTimeStamp.insert({key, currentDateTime()});
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

std::array<float, 3> ClickMonitorCPP::getAggregatedAnswer(const std::string &key) {
    std::array<float, 3> a {0,0,0};
    int counter = 0;
    for (auto element : dictionaryTimeStamp) {
        if (element.first == key && checkIfGivenIntervalMatches(element.second, 10)) {
            counter = counter + 1;
        }
       }
    a[0] = counter;
    counter = 0;
    for (auto element : dictionaryTimeStamp) {
        if (element.first == key && checkIfGivenIntervalMatches(element.second, 20)) {
            counter = counter + 1;
        }
       }
    a[1] = counter;
    counter = 0;
    for (auto element : dictionaryTimeStamp) {
        if (element.first == key && checkIfGivenIntervalMatches(element.second, 150)) {
            counter = counter + 1;
        }
       }
    a[2] = counter;
    counter = 0;
    return a;
}



