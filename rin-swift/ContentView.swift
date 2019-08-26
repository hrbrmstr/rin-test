//
//  ContentView.swift
//  rin-test
//
//  Created by hrbrmstr on 8/26/19.
//  Copyright © 2019 Bob Rudis. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      Text((cpp_hello_world() as String) + " " +  String(rcpp_mean(10.0)))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
