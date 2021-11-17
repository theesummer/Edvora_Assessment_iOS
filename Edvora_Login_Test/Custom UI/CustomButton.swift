//
//  CustomButton.swift
//  Edvora_Login_Test
//
//  Created by Swaroop Kurra on 18/11/21.
//

import Foundation
import SwiftUI

struct LoginButton: View {
    var text: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12.99).foregroundColor(.purple)
            Text(text).font(.system(size: 20)).bold().foregroundColor(.white)
        }
    }
}
