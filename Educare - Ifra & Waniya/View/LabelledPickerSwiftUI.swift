//
//  LabelledPickerSwiftUI.swift
//  Educare - Ifra & Waniya
//
//  Created by DPI Student 037 on 7/15/24.
//

import SwiftUI

struct LabelledPickerSwiftUIView: View {
    var label : String
    var data : [String]
    @Binding var selectedItem : String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .foregroundStyle(.white)
                .frame(width: 300, height: 80)
                .background(.white)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(Color("AccentColor"),lineWidth: 2)
                })
            
            ZStack{
                Circle()
                    .foregroundStyle(.white)
                    .frame(width: 60, height: 60)
                Text(label)
                    .font(.system(size: 24))
                    .fontWeight(.medium)
                    .foregroundStyle(Color("AccentColor"))
            }
            .offset(x:-150)
            
            UniversalPickerFile(data: data, selectedItem: $selectedItem)
                .frame(width: 180)
        }
    }
}

#Preview {
    LabelledPickerSwiftUIView(label: "grade", data: PickerData.grade, selectedItem: .constant("5th"))
}

