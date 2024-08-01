//
//  contentView.swift
//  Educare - Ifra & Waniya
//
//  Created by DPI Student 037 on 7/15/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = PickerViewModelFile()
    var body: some View {
        FinalView(viewModel: viewModel)
    }
}

#Preview {
    ContentView()
}

struct FinalView: View {
    @ObservedObject var viewModel : PickerViewModelFile
    var body: some View {
        
        
        ZStack{
            Color.white
                .ignoresSafeArea()
            
            LabelledPickerSwiftUIView(label: "I'm in", data: PickerData.grade, selectedItem: $viewModel.selectedGrade)
                .offset(x:5,y:70)
            
            LabelledPickerSwiftUIView(label: "Major", data: PickerData.name, selectedItem: $viewModel.selectedName)
                .offset(x:5,y:270)
            
            Image("Image")
                .resizable()
                .scaledToFill()
                .frame(width: 500,height: 500)
                .clipShape(Circle())
                .overlay(content: {
                    Circle().stroke(.white,lineWidth: 5)
                })
                .offset(y:-350)
            
            
            VStack{
                ZStack{
                    Image("Giraffe")
                        .resizable()
                        .scaledToFill()
                    viewModel.image?
                        .resizable()
                        .scaledToFill()
                }
                .onTapGesture {
                    viewModel.isShowingPhotoToggle()
                }
            }
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(content: {
                Circle().stroke(.white.opacity(0.8), lineWidth: 3)
            })
            .offset(y:-140)
            
        }
        
        .onChange(of: viewModel.inputImage){
            viewModel.loadImage()
        }
        .sheet(isPresented: $viewModel.isShowingPhoto, content: {
            ImagePicker(image: $viewModel.inputImage)
        })
    }
    
    
    
    
}



struct MyTabsView: View { // Rename struct to avoid conflict

  var body: some View {
      
          TabView {
            
              NavigationStack {
                  ContentView()
                    }
                      .tabItem {
                          Label("Home", systemImage: "house")
                          //newly added
                              .foregroundStyle(.white)
                              .foregroundColor(Color("AccentColor"))
                      }
                  
              NavigationStack {
                    MajorView()
                  }
                      .tabItem {
                          Label("Search", systemImage: "magnifyingglass")
                              .foregroundStyle(.white)
                              .foregroundColor(Color("AccentColor"))
                      }
              NavigationStack {
                  MainView()
                }
                      .tabItem {
                          Label("Game", systemImage: "gamecontroller")
                              .foregroundStyle(.white)
                              .foregroundColor(Color("AccentColor"))
                      }
                NavigationStack {
                  contentView()
                }
                      .tabItem {
                          Label("Tracker", systemImage: "map")
                              .foregroundStyle(.white)
                              .foregroundColor(Color("AccentColor"))
                      }
          }
      }
  }


struct MyTabsView_Previews: PreviewProvider {
  static var previews: some View {
    MyTabsView() // Use the defined struct name
  }
}


