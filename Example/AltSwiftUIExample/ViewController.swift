//
//  ViewController.swift
//  AltSwiftUIExample
//
//  Created by Wong, Kevin a on 2019/08/26.
//  Copyright © 2019 Rakuten Travel. All rights reserved.
//

import UIKit
import AltSwiftUI
import protocol AltSwiftUI.ObservableObject
import class AltSwiftUI.Published

struct ExampleViewData {
    var title: String
    var destination: View
}

struct ExampleView: View {
    var viewStore = ViewValues()

    var views: [ExampleViewData] = [
        ExampleViewData(title: "Ramen Example", destination: RamenExampleView()),
        ExampleViewData(title: "List", destination: ListExampleView()),
        ExampleViewData(title: "2 Axis Scroll", destination: ScrollView2AxisExampleView()),
        ExampleViewData(title: "Shapes", destination: ShapesExampleView()),
        ExampleViewData(title: "Alerts", destination: AlertsExampleView()),
        ExampleViewData(title: "Texts", destination: TextExampleView()),
        ExampleViewData(title: "Navigation", destination: NavigationExampleView()),
        ExampleViewData(title: "SecureField", destination: SecureFieldExampleView()),
        ExampleViewData(title: "Stack Update", destination: StackUpdateExample())
    ]
    
    var body: View {
        NavigationView {
            List(views, id: \ExampleViewData.title) { view in
                NavigationLink(destination: view.destination) {
                    Text("\(view.title)")
                        .multilineTextAlignment(.leading)
                        .frame(height: 40)
                        .frame(maxWidth: .infinity)
                }
            }
        }
        .navigationBarTitle("AltSwiftUI Examples", displayMode: .inline)
    }
}
