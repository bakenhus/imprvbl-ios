//
//  DashboardView.swift
//  imprvbl-ios
//
//  Created by Jesse on 29.08.24.
//

import SwiftUI

struct DashboardView: View {
    
    let now = Date.now;
    
    @State private var showCalendar = false;
    @State private var datum = Date()
    
    var body: some View {
        NavigationStack {
            VStack {
                ScrollView {
                    
                }
            }.toolbar {
                Button {
                    showCalendar.toggle()
                } label: {
                    Image(systemName: "calendar")
                }
            }.padding()
            .navigationTitle("Übersicht")
        }.sheet(isPresented: $showCalendar) {
            NavigationStack {
                VStack {
                    DatePicker("", selection: $datum, displayedComponents:.date)
                        .datePickerStyle(.graphical)
                }.toolbar {
                    Button("Heute") {
                        
                    }
                    Spacer()
                    Button {
                        showCalendar.toggle()
                    } label: {
                        Image(systemName: "xmark")
                    }
                }.padding()
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
}
