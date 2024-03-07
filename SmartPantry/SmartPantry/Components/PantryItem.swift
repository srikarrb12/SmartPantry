//
//  PantryItem.swift
//  SmartPantry
//
//  Created by Long Lam on 3/5/24.
//

import SwiftUI

struct PantryItem: View {
    var pantryItem: PantryItemModel
    var pantryItemSectionTitle: PantrySectionModel
    var body: some View {
        HStack(alignment: .center) {
            HStack {
                VStack {
                    Image(systemName: pantryItemSectionTitle.systemImageName)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                        .padding(10)
                }
                .background(Color(white: 0.95)).clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(10)
                .frame(maxHeight: 80)

                VStack(alignment: .leading, spacing: 5) {
                    Text(pantryItem.itemTitle)
                        .font(.headline)
                        .foregroundColor(.black)
                        .fontWeight(/*@START_MENU_TOKEN@*/ .bold/*@END_MENU_TOKEN@*/)
                    Text(pantryItem.loggedDate)
                        .fontWeight(.thin)
                        .font(.footnote)
                        .foregroundColor(.black)
                }.frame(maxWidth: .infinity, alignment: .leading)
            }.frame(maxWidth: .infinity, alignment: .leading)

            Text(pantryItem.quantity + "pc")
                .foregroundColor(.black)
                .font(.subheadline)
                .fontWeight(.semibold)
                .padding(10)
                .frame(minWidth: 60, alignment: .trailing)
        }
        .padding([.trailing, .leading], 10)
        .frame(maxWidth: 400)
        .cornerRadius(3.0)
        .background(Color(.white)).clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    PantryItem(pantryItem: PantryItemModel(id: "1", itemTitle: "Apple", loggedDate: "05/01/2024", quantity: "3"), pantryItemSectionTitle: REFRIGERATOR_SECTION_TITLE)
}
