//
//  CustomButtonViewWithImage.swift
//  task7.1
//
//  Created by Islam Erlan Uulu on 6/6/23.
//

import SwiftUI

struct CustomButtonViewWithImage: View {
    var action: () -> ()
    var Image: Image
    var width: CGFloat = 20
    var height: CGFloat = 20
    var corner: CGFloat = 0
    var foregColor: Color = .accentColor
    var body: some View {
        Button {
            action()
        } label: {
            Image
                .resizable()
                .frame(width: width,height: height,alignment: .center)
                .cornerRadius(corner)
                .foregroundColor(foregColor)
        }

    }
}

struct CustomButtonViewWithImage_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonViewWithImage(action: {}, Image: .init(""))
    }
}
