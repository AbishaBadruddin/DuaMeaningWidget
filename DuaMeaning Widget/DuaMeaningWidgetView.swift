//
//  DuaMeaningWidgetView.swift
//  DuaMeaning WidgetExtension
//
//  Created by Shain Dholakiya on 3/19/21.
//

import SwiftUI

struct DuaMeaningWidgetView: View {
    let duaDetails: DuaDetails

      var body: some View {
        ZStack {
          Color(UIColor.systemIndigo)
          VStack {
            Text(duaDetails.part)
              .font(.system(size: 56))
            Text(duaDetails.part)
              .font(.headline)
              .multilineTextAlignment(.center)
              .padding(.top, 5)
              .padding([.leading, .trailing])
              .foregroundColor(.white)
          }
        }
      }
}

struct DuaMeaningWidgetView_Previews: PreviewProvider {
    static var previews: some View {
        DuaMeaningWidgetView()
    }
}
