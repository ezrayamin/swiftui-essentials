//
//  CategoryItem.swift
//  Landmarks
//
//  Created by Ezra Yamin on 25/12/23.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark


    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static let landmarks = ModelData().landmarks
    static var previews: some View {
        CategoryItem(landmark: landmarks[0])
    }
}
