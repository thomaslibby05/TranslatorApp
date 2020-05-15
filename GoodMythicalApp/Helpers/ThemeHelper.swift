//
//  ThemeHelper.swift
//  GoodMythicalApp
//
//  Created by Elizabeth Thomas on 5/15/20.
//  Copyright © 2020 Libby Thomas. All rights reserved.
//

import UIKit

class ThemeHelper {
    
    private let themePreferenceKey = "themePrefernce"
    
    var themePreference: String? {
        return UserDefaults.standard.string(forKey: themePreferenceKey)
    }
    
    init() {
        guard themePreference == nil else { return }
        setThemeToDark()
    }
    
    func setThemeToDark() {
        UserDefaults.standard.set("Dark", forKey: themePreferenceKey)
    }
    
    func setThemeToLight() {
        UserDefaults.standard.set("Light", forKey: themePreferenceKey)
    }
    
    func setThemeToRed() {
        UserDefaults.standard.set("Red", forKey: themePreferenceKey)
    }
    
    func setThemeToOrange() {
        UserDefaults.standard.set("Orange", forKey: themePreferenceKey)
    }
    
    func setThemeToYellow() {
        UserDefaults.standard.set("Yellow", forKey: themePreferenceKey)
    }
    
    func setThemeToGreen() {
        UserDefaults.standard.set("Green", forKey: themePreferenceKey)
    }
    
    func setThemeToTeal() {
        UserDefaults.standard.set("Teal", forKey: themePreferenceKey)
    }
    
    func setThemeToBlue() {
        UserDefaults.standard.set("Blue", forKey: themePreferenceKey)
    }
    
    func setThemeToPink() {
        UserDefaults.standard.set("Pink", forKey: themePreferenceKey)
    }
    
    func setThemeToPurple() {
        UserDefaults.standard.set("Purple", forKey: themePreferenceKey)
    }
}
