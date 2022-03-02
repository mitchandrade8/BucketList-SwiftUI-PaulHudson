//
//  TouchIDandFaceID.swift
//  BucketList
//
//  Created by Mitch Andrade on 2/26/22.
//

import LocalAuthentication
import SwiftUI

struct TouchIDandFaceID: View {
    @State private var isUnlocked = false
    
    var body: some View {
        VStack {
            if isUnlocked {
                Text("Unlocked")
            } else {
                Text("Locked")
            }
        }.onAppear(perform: authenticate)
    }
    
    func authenticate() {
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "We need to unlock your data"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                if success {
                    isUnlocked = true
                } else {
                    // there was a problem
                }
            }
        } else {
            // no biometrics
        }
    }
}

struct TouchIDandFaceID_Previews: PreviewProvider {
    static var previews: some View {
        TouchIDandFaceID()
    }
}
