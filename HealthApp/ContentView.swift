//
//  ContentView.swift
//  HealthApp
//
//  Created by Bao Vu on 7/2/20.
//  Copyright © 2020 Bao Vu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home : View {
    
    @State var index = 0 // this is an index for Tab View
    
    //var columns = Array(repeating: , count: <#T##Int#>)
    
    var body: some View{
        
        VStack{
            
            HStack{
                
                Text("Healthy Fitness")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color("Color"))
                
                Spacer(minLength: 0)
            }
            .padding(.horizontal)
            
            // Tab View.... Day ... Week... Month
            HStack(spacing: 0){
                
                Text("Day")
                    .foregroundColor(self.index == 0 ? .white : Color("Color").opacity(0.7))
                    .fontWeight(.bold)
                    .padding(.vertical,10)
                    .padding(.horizontal, 35)
                    .background(Color("Color").opacity(self.index == 0 ? 1 : 0))
                .clipShape(Capsule())
                    .onTapGesture {
                        
                        self.index = 0
                }
                
                Spacer(minLength: 0)
                
                Text("Week")
                    .foregroundColor(self.index == 1 ? .white : Color("Color").opacity(0.7))
                    .fontWeight(.bold)
                    .padding(.vertical,10)
                    .padding(.horizontal, 35)
                    .background(Color("Color").opacity(self.index == 1 ? 1 : 0))
                .clipShape(Capsule())
                    .onTapGesture {
                        
                        self.index = 1
                }
                
                Spacer(minLength: 0)
                
                Text("Month")
                    .foregroundColor(self.index == 2 ? .white : Color("Color").opacity(0.7))
                    .fontWeight(.bold)
                    .padding(.vertical,10)
                    .padding(.horizontal, 35)
                    .background(Color("Color").opacity(self.index == 2 ? 1 : 0))
                .clipShape(Capsule())
                    .onTapGesture {
                        
                        self.index = 2
                }
            }
            .background(Color.black.opacity(0.06))
            .clipShape(Capsule())
            .padding(.horizontal)
            .padding(.top,25)
            
            // This is a DashBoard Grid....
            
            
            
            Spacer(minLength: 0)
        }
        .padding(.top)
    }
}

// This is a DashBoard Grid Model Data....

struct  Fitness: Identifiable {
    
    var id: Int
    var title: String
    var image: String
    var data: String
    var suggest: String
}

// This is a daily data....
var day_fit_Data = [

    Fitness(id: 0, title: "Heart Rate", image: "heart1", data: "124 bpm", suggest: "80-120\nHealthy"),
    Fitness(id: 1, title: "Sleep", image: "sleep1", data: "7H 20M", suggest: "Deep Sleep/n5h 13m"),
    Fitness(id: 2, title: "Energy Burn", image: "energy1", data: "583 kcal", suggest: "Daily Goal\n900 kcal"),
    Fitness(id: 3, title: "Steps", image: "steps", data: "16,741", suggest: "Daily Goal\n20,000 Steps"),
    Fitness(id: 4, title: "Running", image: "running1", data: "5.3 km", suggest: "Daily Goal\n10 km"),
    Fitness(id: 5, title: "Cycling", image: "cycling1", data: "15.3 km", suggest: "Daily Goal\n20 km")
    
]

// This is a Weekly data ....
var week_fit_Data = [

    Fitness(id: 0, title: "Heart Rate", image: "heart1", data: "104 bpm", suggest: "80-120\nHealthy"),
    Fitness(id: 1, title: "Sleep", image: "sleep1", data: "49H 20M", suggest: "Deep Sleep/n5h 13m"),
    Fitness(id: 2, title: "Energy Burn", image: "energy1", data: "3583 kcal", suggest: "Daily Goal\n900 kcal"),
    Fitness(id: 3, title: "Steps", image: "steps", data: "76,741", suggest: "Daily Goal\n20,000 Steps"),
    Fitness(id: 4, title: "Running", image: "running1", data: "35.3 km", suggest: "Daily Goal\n10 km"),
    Fitness(id: 5, title: "Cycling", image: "cycling1", data: "115.3 km", suggest: "Daily Goal\n20 km")
    
]

// This is a monthly data ....

var month_fit_Data = [

    Fitness(id: 0, title: "Heart Rate", image: "heart1", data: "114 bpm", suggest: "80-120\nHealthy"),
    Fitness(id: 1, title: "Sleep", image: "sleep1", data: "70H 20M", suggest: "Deep Sleep/n5h 13m"),
    Fitness(id: 2, title: "Energy Burn", image: "energy1", data: "35583 kcal", suggest: "Daily Goal\n900 kcal"),
    Fitness(id: 3, title: "Steps", image: "steps", data: "160,741", suggest: "Daily Goal\n20,000 Steps"),
    Fitness(id: 4, title: "Running", image: "running1", data: "150.3 km", suggest: "Daily Goal\n10 km"),
    Fitness(id: 5, title: "Cycling", image: "cycling1", data: "1500.3 km", suggest: "Daily Goal\n20 km")
    
]
