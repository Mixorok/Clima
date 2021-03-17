//
//  WeatherModel.swift
//  Clima
//
//  Created by Maksim on 20.02.2021.
//  Copyright © 2021 Maksim. All rights reserved.
//

import Foundation

struct WeathewrModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
           return "cloud.bolt.rain"
        case 300...321:
           return "cloud.drizzle"
        case 500...531:
           return "cloud.rain"
        case 600...622:
           return "cloud.snow"
        case 700...781:
           return "cloud.fog"
        case 800:
           return "sun.max"
        case 801...804:
           return "cloud"
        default:
           return "eye.slash"
        }
    }
    
}
