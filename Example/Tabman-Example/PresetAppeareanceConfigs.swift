//
//  PresetAppeareanceConfigs.swift
//  Tabman-Example
//
//  Created by Merrick Sapsford on 10/03/2017.
//  Copyright © 2017 Merrick Sapsford. All rights reserved.
//

import Foundation
import Tabman

class PresetAppeareanceConfigs: Any {
    
    static func forStyle(_ style: TabmanBarConfig.Style, currentAppearance: TabmanBar.AppearanceConfig?) -> TabmanBar.AppearanceConfig? {
        let appearance = currentAppearance ?? TabmanBar.AppearanceConfig.defaultAppearance
        
        var view: UIView? = UIView()
        let defaultTintColor = view!.tintColor
        view = nil
        
        switch style {

        case .buttonBar, .bar:
            appearance.state.color = UIColor.white.withAlphaComponent(0.6)
            appearance.state.selectedColor = UIColor.white
            appearance.style.background = .blur(style: .light)
            appearance.indicator.color = UIColor.white

        case .blockTabBar:
            appearance.state.color = UIColor.white.withAlphaComponent(0.6)
            appearance.state.selectedColor = defaultTintColor
            appearance.style.background = .solid(color: UIColor.white.withAlphaComponent(0.3))
            appearance.indicator.color = UIColor.white.withAlphaComponent(0.8)
            
        default:()
        }
        
        return appearance
    }
}