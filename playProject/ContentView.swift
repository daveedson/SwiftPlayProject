//
//  ContentView.swift
//  playProject
//
//  Created by David Onoh on 04/11/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
          Image("Image 1")
                .resizable()
                .aspectRatio( contentMode: .fill)
                .frame(height: 300)
                .cornerRadius(20)
            VStack(alignment: .center) {
                
                Text("iOS 17 brings new features to enhance the things you do every day. Express yourself like never before when you call or message someone...")
                    .font(.subheadline)
                HStack(spacing:12){
                    VStack(alignment: .leading){
                        Text("Size")
                            .foregroundColor(.secondary)
                        Text("1024 x 1024")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    Divider()
                    VStack(alignment: .leading){
                        Text("Type")
                            .foregroundColor(.secondary)
                        Text("Upscale")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    Divider()
                    VStack(alignment: .leading){
                        Text("Date")
                            .foregroundColor(.secondary)
                        Text("Today 5:19")
                    }
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
                .frame(height: 44)
                
                HStack {
                    HStack {
                        Image(systemName: "ellipsis")
                             
                        Divider()
                        Image(systemName: "sparkle.magnifyingglass")
                        Divider()
                        Image(systemName: "face.smiling")
                    }
                    .padding()
                   .frame(height: 44)
                   .overlay(RoundedRectangle(cornerRadius: 20).stroke(linearGradient,style:StrokeStyle(lineWidth:2,lineCap:.round,lineJoin:.round)))
                   .offset(x:-20,y:20)
                    Spacer()
                    Image(systemName: "square.and.arrow.down")
                        .padding()
                       .frame(height: 44)
                       .overlay(RoundedRectangle(cornerRadius: 20).stroke(linearGradient,style:StrokeStyle(lineWidth:2,lineCap:.round,lineJoin:.round)))
                       .offset(x:20,y:20)
                       
                }
            }
            .padding(20)
            .background(.regularMaterial)
            .overlay(RoundedRectangle(cornerRadius: 20).stroke(linearGradient,style:StrokeStyle(lineWidth:2,lineCap:.round,lineJoin:.round)))
            .cornerRadius(20)
        .padding(20)
        .offset(y:80)
        }
        .frame(maxWidth: 380)
        .padding(20)
        .dynamicTypeSize(.xSmall ... .xxLarge)
       
    }
    
}


var linearGradient: LinearGradient{
    LinearGradient(colors: [.clear,.primary.opacity(0.3),.clear], startPoint: .topLeading, endPoint: .bottomTrailing)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
