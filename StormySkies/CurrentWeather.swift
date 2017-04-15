//
//  CurrentWeather.swift
//  StormySkies
//
//  Created by Adam Carter on 4/14/17.
//  Copyright © 2017 Adam Carter. All rights reserved.
//

import Foundation

struct CurrentWeather {
    let temperature: Double
    let apparentTemperature: Double
    let humidity: Double
    let nearestStormDistance: Double
    let precipitationProbability: Double
    let summary: String
    let icon: String
}


extension CurrentWeather {
    
    //the name in quotes has to match the darksky api docs
    struct Key {
        static let temperature = "temperature"
        static let humidity = "humidity"
        static let precipitationProbability = "precipProbability"
        static let summary = "summary"
        static let icon = "icon"
        static let nearestStormDistance = "nearestStormDistance"
        static let apparentTemperature = "apparentTemperature"
    }
    
    init?(json: [String: AnyObject]) {
        guard let tempValue = json[Key.temperature] as? Double,
        let humidityValue = json[Key.humidity] as? Double,
        let precipitationProbabilityValue = json[Key.precipitationProbability] as? Double,
        let summaryString = json[Key.summary] as? String,
        let iconString = json[Key.icon] as? String,
        let nearestStormDistanceValue = json[Key.nearestStormDistance] as? Double,
            let apparentTemperatureValue = json[Key.apparentTemperature] as? Double else { return nil }
        
        self.temperature = tempValue
        self.humidity = humidityValue
        self.precipitationProbability = precipitationProbabilityValue
        self.summary = summaryString
        self.icon = iconString
        self.nearestStormDistance = nearestStormDistanceValue
        self.apparentTemperature = apparentTemperatureValue
    }
}

