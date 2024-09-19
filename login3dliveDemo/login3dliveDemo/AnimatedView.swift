//
//  AnimatedView.swift
//  login3dliveDemo
//
//  Created by MRT102 on 19/09/24.
//

import SwiftUI

struct AnimatedView: View {
    
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    var flowers = ["one", "two","three", "four","five"]
    
    var titles = ["Welcome to Blooming Beginnings","Embrace the Sunflower Spirit",
                  "Nurture with the Lotus","Blossom like a Cherry Blossom",
                  "Flourish with Lavender Peace"
    ]
    
    var subtitle = [
        "Discover a world where every idea blossoms like a beautiful rose. Let's embark on this journey of growth together!",
        "With every step forward, shine brightly and stand tall like a sunflower, reaching toward your goals with confidence.",
        "Just like the lotus rises above muddy waters, you too can overcome challenges and bloom in unexpected places.",
        "Experience the beauty of transformation and growth, as fleeting yet impactful as the cherry blossom in full bloom.",
        "Breathe in the calm and serenity of lavender fields. Let your journey be guided by peace, clarity, and purpose."
    ]
    
    @State private var id = 1
    
    @State private var selected = "one"
    @State private var selectedTitle = "Welcome to Blooming Beginnings"
    @State private var selectedSubtitle = "Discover a world where every idea blossoms like a beautiful rose. Let's embark on this journey of growth together!"
    
    var body: some View {
        ZStack {
            Color.black
            
            VStack{
                
                Text("CIRCLEUP")
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
                    .font(.title)
                    .fontDesign(.serif)
                    //.padding(.bottom,40)
                
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .frame(width: 280, height: 300,alignment: .center)
                    .cornerRadius(25, corners: .allCorners)
                    .overlay(
                        Image( "\(selected.lowercased())")
                            .resizable()
                            .frame(width:240, height: 290)
                            .transition(.slide).id(id)
                            
                    )
                HStack{
                    Text("\(selectedTitle)")
                        .fontWeight(.thin)
                        .font(.custom("", fixedSize: 22))
                        .foregroundColor(.white)
                }.padding(.top, 50)
                
                
                HStack{
                    Text("\(selectedSubtitle)")
                        .frame(maxWidth: .infinity,alignment: .center)
                        .padding(.horizontal, 40)
                        .foregroundColor(.white)
                }
                .padding(.top, 3)
                .transition(.slide)
                .id(id)
                    
                
                Button(action: {
                    withAnimation(.easeInOut(duration: 1)){
                        selected = flowers.randomElement()!
                        selectedTitle = titles.randomElement()!
                        selectedSubtitle = subtitle.randomElement()!
                        id += 1
                            
                    }                }, label: {
                    Text("next")
                        .frame(width: 80, height: 48)
                        .background(Color.white).opacity(0.4)
                        .cornerRadius(25)
                        .foregroundColor(.white)
                        //.padding(.top, 80)
                })
               
                
            }
            //.transition(.slide)
            .edgesIgnoringSafeArea(.all)
            //.id(id)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    AnimatedView()
}
