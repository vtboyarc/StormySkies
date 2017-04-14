//
//  CurrentWeatherViewModel.swift
//  StormySkies
//
//  Created by Adam Carter on 4/14/17.
//  Copyright © 2017 Adam Carter. All rights reserved.
//

import Foundation
import UIKit


struct CurrentWeatherViewModel {
    let temperature: String
    let apparentTemperature: String
    let humidity: String
    let nearestStormDistance: String
    let precipitationProbability: String
    let summary: String
    let icon: UIImage
    
    init(model: CurrentWeather) {
        let roundedTemperature = Int(model.temperature)
        self.temperature = "\(roundedTemperature)º"
        
        let feelsLikeTemperature = Int(model.apparentTemperature)
        self.apparentTemperature = "\(feelsLikeTemperature)º"
        
        let humidityPercentValue = Int(model.humidity) * 100
        self.humidity = "\(humidityPercentValue)%"
        
        let closestStorm = Int(model.nearestStormDistance)
        self.nearestStormDistance = "\(closestStorm) miles"
        
        let precipPercentValue = Int(model.precipitationProbability * 100)
        self.precipitationProbability = "\(precipPercentValue)%"
        
        self.summary = model.summary
        
        let weatherIcon = WeatherIcon(iconString: model.icon)
        self.icon = weatherIcon.image
    }
}
