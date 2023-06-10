//
//  CustomImageView.swift
//  task7.1
//
//  Created by Islam Erlan Uulu on 6/6/23.
//

import SwiftUI

struct CustomImageView: View {
    var name: String
    var width: CGFloat
    var height: CGFloat
    var body: some View {
        Image(name)
            .resizable()
            .frame(width: width,height: height)
    }
}

struct CustomImageView_Previews: PreviewProvider {
    static var previews: some View {
        CustomImageView(name: "", width: 10, height: 10)
    }
}
