//
//  ContentView.swift
//  CSE335Lab1Part1
//
//  Created by Arjun Dadhwal on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var height: Float = 0.0;
    @State var weight: Float = 0.0;
    private var BMI: Float { (Float(weight) ?? 0) / ( (Float(height) ?? 0) * (Float(height) ?? 0) ) * 703 }
    @State var BMIString: String = "";
    @State var status: Int = -1;
    
    var body: some View {
        HStack{
            Text("BMI Calculator").foregroundColor(.blue);

        }
        VStack{
        
            VStack{
        HStack{
            Text("Height: ")
            VStack{
            Slider(value: $height, in: 0...108)
                Text("\(self.height)");
            }
        }
        HStack{
            Text("Weight: ")
            VStack{
            Slider(value: $weight, in: 0...1500)
            Text("\(self.weight)");
            }
        }
        Spacer()
        HStack{
                Text("BMI: ")
                Spacer()
                Spacer()
                
                if (BMI > 0)
                {
                Text("\(self.BMI)");
                }
                else
                {
                    Text("");
                }
                
                    }
            }
        
        HStack{
            
            if (BMI > 0 && BMI < 18)
            {
                Text("You are Underweight...").foregroundColor(.blue);
            }
            
            else if (BMI >= 18 && BMI < 25 )
            {
                Text("You are Normal...").foregroundColor(.green);
            }
            
            else if (BMI >= 25 && BMI <= 30)
            {
                Text("You are Pre-Obese...").foregroundColor(.purple);
            }
            else if (BMI > 30)
            {
                Text("You are Obese...").foregroundColor(.red);
            }
            else
            {
                Text("");
            }
            
            
        }
        
        }.padding(100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
