//
//  ContentView.swift
//  CSE335Lab1Part1
//
//  Created by Arjun Dadhwal on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var height: String = "";
    @State var weight: String = "";
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
            Spacer()
            Spacer()
            TextField("", text: $height).keyboardType(.decimalPad);
            
        }
        HStack{
            Text("Weight: ")
            Spacer()
            Spacer()
            TextField("", text: $weight).keyboardType(.decimalPad);
        }

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
                

        Spacer()
        
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
