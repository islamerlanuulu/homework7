//
//  NavBarView.swift
//  task7.1
//
//  Created by Islam Erlan Uulu on 9/6/23.
//
import SwiftUI

struct NavBarView: View {
    @State var selection: Int? = nil
    var body: some View {
        HStack {
            CustomButtonViewWithImage(action: {}, Image: Image("menu"),width: 33,height: 20)
            Spacer()
            VStack {
                CustomTextView(text: "Delivering to",
                               size: 12,
                               font: .poppinsReguler,
                               foregroundColor: .black.opacity(0.5))
                .padding(.trailing,23)
                HStack {
                    CustomTextView(text: "Manas Ave",
                                   size: 16,
                                   font: .poppinsMedium,
                                   backgroundColor: .clear)
                    NavigationLink {
                        LocationViewScreen()
                    } label: {
                        Image("delivaryMap")
                    }
                }
            }
            .foregroundColor(Color.black)
            Spacer()
            Button {} label: {
                VStack {
                    Text("1")
                        .font(.system(size: 10))
                        .foregroundColor(Color.white)
                    Image(systemName: "cart")
                        .foregroundColor(.white)
                }
            }
            .frame(width: 50,height: 47)
            .background(Color.black).cornerRadius(15)
            .shadow(radius: 5)
        }.padding(.horizontal)
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
