//
//  DuaMeaningWidgetView.swift
//  DuaMeaning WidgetExtension
//
//  Created by Shain Dholakiya on 3/19/21.
//

import WidgetKit
import SwiftUI

struct DuaMeaningWidgetView: View {
    @Environment(\.widgetFamily) var family: WidgetFamily
    let duaDetails: DuaDetails
    
    @ViewBuilder
    var body: some View {
        switch family {
        case .systemSmall:
            SmallDuaMeaningWidgetView(duaDetails: duaDetails)
        case .systemMedium:
            MediumDuaMeaningWidgetView(duaDetails: duaDetails)
        case .systemLarge:
            LargeDuaMeaningWidgetView(duaDetails: duaDetails)
        @unknown default:
            EmptyView()
        }
    }
}

struct DuaMeaningWidgetPlaceholderView: View {
  var body: some View {
    Color(UIColor.systemIndigo)
  }
}


struct SmallDuaMeaningWidgetView: View {
    
    let duaDetails: DuaDetails
    
    var body: some View {
        ZStack {
            Color(UIColor.systemGreen)
            VStack {
                Text(duaDetails.arabic).fontWeight(.bold)
                    .font(.system(size: 13))
                    .multilineTextAlignment(.center)
//                    .foregroundColor(.gray5)
                    
                Text(duaDetails.meaning)
                    .font(.system(size: 13))
                    .multilineTextAlignment(.center)
                    .padding()
                Text(duaDetails.part)
                    .font(.system(size: 10))
                    .multilineTextAlignment(.center)
            }
        }
//        .widgetURL(duaDetails.url)
    }
}

struct SmallDuaMeaningWidgetView_Previews: PreviewProvider {
  static var previews: some View {
    SmallDuaMeaningWidgetView(duaDetails: DuaProvider.random())
      .previewContext(WidgetPreviewContext(family: .systemSmall))
  }
}

struct MediumDuaMeaningWidgetView: View {
    
    let duaDetails: DuaDetails
    
    var body: some View {
        ZStack {
            Color(UIColor.systemIndigo)
            VStack {
                Text(duaDetails.arabic)
                    .font(.system(size: 15))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                Text(duaDetails.meaning)
                    .font(.system(size: 15))
                    .multilineTextAlignment(.center)
                    .padding()
                Text(duaDetails.part)
                    .font(.system(size: 12))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
            }
        }
    }
}

struct MediumDuaMeaningWidgetView_Previews: PreviewProvider {
  static var previews: some View {
    MediumDuaMeaningWidgetView(duaDetails: DuaProvider.random())
      .previewContext(WidgetPreviewContext(family: .systemMedium))
  }
}

struct LargeDuaMeaningWidgetView: View {
    
    let duaDetails: DuaDetails
    
    var body: some View {
        ZStack {
            Color(UIColor.systemIndigo)
            VStack {
                Text(duaDetails.arabic)
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                Text(duaDetails.meaning)
                    .font(.system(size: 20))
                    .multilineTextAlignment(.center)
                    .padding()
                Text(duaDetails.part)
                    .font(.system(size: 17))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
            }
        }
    }
}

struct LargeDuaMeaningWidgetView_Previews: PreviewProvider {
  static var previews: some View {
    LargeDuaMeaningWidgetView(duaDetails: DuaProvider.random())
      .previewContext(WidgetPreviewContext(family: .systemLarge))
  }
}
