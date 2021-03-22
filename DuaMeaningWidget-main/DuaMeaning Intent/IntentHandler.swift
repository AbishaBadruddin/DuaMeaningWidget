//
//  IntentHandler.swift
//  DuaMeaning Intent
//
//  Created by Shain Dholakiya on 3/20/21.
//

import Intents

// As an example, this class is set up to handle Message intents.
// You will want to replace this or add other intents as appropriate.
// The intents you wish to handle must be declared in the extension's Info.plist.

// You can test your example integration by saying things to Siri like:
// "Send a message using <myApp>"
// "<myApp> John saying hello"
// "Search for messages in <myApp>"

class IntentHandler: INExtension {
    
    override func handler(for intent: INIntent) -> Any {
        // This is the default implementation.  If you want different objects to handle different intents,
        // you can override this and return the handler you want for that particular intent.
        
        return self
    }
}

extension IntentHandler: SelectDuaMeaningIntentHandling {
//    func provideArabicOptionsCollection(for intent: SelectDuaMeaningIntent, with completion: @escaping (INObjectCollection<DuaMeaningINO>?, Error?) -> Void) {
//        provideDuaMeaningOptionsCollection(for: intent, with: completion)
//    }
    
    func providePartOptionsCollection(
        for intent: SelectDuaMeaningIntent,
        with completion: @escaping (INObjectCollection<DuaMeaningINO>?, Error?) -> Void) {
        provideDuaMeaningOptionsCollection(for: intent, with: completion)
    }
    
  func provideDuaMeaningOptionsCollection(
    for intent: SelectDuaMeaningIntent,
    with completion: @escaping (INObjectCollection<DuaMeaningINO>?, Error?) -> Void
  ) {
    var duaItems = [DuaMeaningINO]()
    DuaProvider.all().forEach { duaDetails in
      let duaIntentObject =
        DuaMeaningINO(identifier: duaDetails.id, display: "\(duaDetails.part)")
      duaItems.append(duaIntentObject)
    }
    completion(INObjectCollection(items: duaItems), nil)
  }
}
