//
//  ChatView.swift
//  Educare - Ifra & Waniya
//
//  Created by DPI Student 037 on 7/17/24.
//

import SwiftUI

struct contentView: View {
    var body: some View {
        
        ZStack {
            
            
            
            
//            VStack {
//                Spacer()
//                RoundedRectangle(cornerRadius: 40)
//                    .foregroundColor(Color(hue: 0.862, saturation: 0.877, brightness: 0.472, opacity: 0.404))
  //                  .frame(width: 400, height:600)
  //                  .offset(y: 45)
  //          }
            
            
            VStack {
                Text("Keep Track!")
                    .foregroundColor(Color("AccentColor"))
                    .font(.system(size: 35))
                
                HStack (spacing: 10){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("AccentColor"))
                        Text("Read: 20,000 words")
                            .foregroundColor(Color.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("AccentColor"))
                        Text("Monthly Payments")
                            .foregroundColor(Color.white)
                        
                    }
                    
                }
                HStack (spacing: 10){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("AccentColor"))
                        Text("Time Spent on App: 110 Hours!")
                            .foregroundColor(Color.white)
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("AccentColor"))
                        Text("Trivia Game HighScore: 5/5!")
                            .foregroundColor(Color.white)
                        
                    }
                }
                HStack (spacing: 10){
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("AccentColor"))
                        Text("Completed: 5/10 books!")
                            .foregroundColor(Color.white)
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundColor(Color("AccentColor"))
                        Text("Hours Read: 100!")
                            .foregroundColor(Color.white)
                    }
                }
                
            }
            .padding(.all)
        }
    }
}

// hue: 0.862, saturation: 0.448, brightness: 0.744)


#Preview {
    contentView()
}
