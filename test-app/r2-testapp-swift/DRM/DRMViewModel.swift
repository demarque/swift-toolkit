//
//  DrmViewModel.swift
//  r2-testapp-swift (carthage)
//
//  Created by Mickaël Menu on 19.02.19.
//
//  Copyright 2019 Readium Foundation. All rights reserved.
//  Use of this source code is governed by a BSD-style license which is detailed
//  in the LICENSE file present in the project repository where this source code is maintained.
//

import Foundation
import R2Shared

/// Used to display a DRM license's informations
/// Should be subclassed for specific DRM.
class DrmViewModel {

    /// Class cluster factory.
    /// Use this instead of regular constructors to create the right DRM view model.
    static func make(drm: Drm) -> DrmViewModel {
        #if LCP
        if case .lcp = drm.brand {
            return LcpViewModel(drm: drm)
        }
        #endif
        
        return DrmViewModel(drm: drm)
    }
    
    let drm: Drm

    init(drm: Drm) {
        self.drm = drm
    }
    
    var license: DrmLicense? {
        return drm.license
    }
    
    var type: String {
        return drm.brand.rawValue
    }
    
    var state: String? {
        return nil
    }
    
    var provider: String? {
        return nil
    }
    
    var issued: Date? {
        return nil
    }
    
    var updated: Date? {
        return nil
    }
    
    var start: Date? {
        return nil
    }
    
    var end: Date? {
        return nil
    }

}
