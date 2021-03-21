//
//  DuaProvider.swift
//  DuaMeaning
//
//  Created by Shain Dholakiya on 3/19/21.
//

import Foundation

//var duaClicked = ""

public struct DuaProvider {
    
    /// Creates a list of dua details that includes a name and description.
    /// - Returns: The list of `DuaDetail`s
    static func all() -> [DuaDetails] {
        return [
            DuaDetails(
                part: "First Part",
                arabic: "Bismillahir rahmanir rahim",
                meaning: "In the name of Allah, the most beneficent, the most merciful"),
            DuaDetails(
                part: "First Part",
                arabic: "Alhamdu lil lahi rab bil alamin",
                meaning: "All praise is due to Allah the lord of the worlds"),
            DuaDetails(
                part: "First Part",
                arabic: "Ar rahmanir rahim",
                meaning: "The most beneficent the most merciful"),
            DuaDetails(
                part: "First Part",
                arabic: "Maliki yawmid din",
                meaning: "The lord of the day of judgment"),
            DuaDetails(
                part: "First Part",
                arabic: "Iy yaka na'budu wa iy yaka nastain",
                meaning: "Thee alone we worship and thee alone we seek for help"),
            DuaDetails(
                part: "Second Part",
                arabic: "Ya Ayyuhal Lazeena Aamanoo",
                meaning: "O you who believe"),
            DuaDetails(
                part: "Second Part",
                arabic: "Ati Ullaha Wa Ati Ur Rasulla",
                meaning: "Obey Allah and obey the apostle"),
            DuaDetails(
                part: "Second Part",
                arabic: "Wa ulil amri minkum",
                meaning: "And holders of authority from amongst you"),
            DuaDetails(
                part: "Second Part",
                arabic: "Wa kulla shai'n asainahu fee imamim mubeen",
                meaning: "And we have vested the knowledge and authority of everything in the manifest Imam"),
            DuaDetails(
                part: "Third Part",
                arabic: "Ya Ayyuhar Rasoolu Balligh",
                meaning: "O apostle deliver to the people"),
            DuaDetails(
                part: "Third Part",
                arabic: "Maa Unzila Ilakya Mir-Rabbika",
                meaning: "What has been revealed to you, form your lord"),
            DuaDetails(
                part: "Third Part",
                arabic: "Wa-lam Taf'al",
                meaning: "And if u did not do so"),
            DuaDetails(
                part: "Third Part",
                arabic: "Fa Maa Bal-laghta Risaltah",
                meaning: "Then you have not delivered his message"),
            DuaDetails(
                part: "Third Part",
                arabic: "Wallhu Ya'simuka Minan-Nass",
                meaning: "And Allah will protect you from the people"),
            DuaDetails(
                part: "Fourth Part",
                arabic: "In Nal Lazeena Yuba Yi Unaka",
                meaning: "(O Prophet) verify, those who give you their alleigance"),
            DuaDetails(
                part: "Fourth Part",
                arabic: "In Nama Yuba Yu Unallah",
                meaning: "They give it but to Allah himself"),
            DuaDetails(
                part: "Fourth Part",
                arabic: "Yadullahi Fauqa Aideehim",
                meaning: "Allah's hand is upon their hands"),
            DuaDetails(
                part: "Fourth Part",
                arabic: "Fa Man Nakatha",
                meaning: "Then he who breaks it"),
            DuaDetails(
                part: "Fourth Part",
                arabic: "Fa In Nama Yankuthu Al Nafsihi",
                meaning: "He certainly breaks it against himself"),
            DuaDetails(
                part: "Fifth Part",
                arabic: "Ya Ayyuhal Lazeena Aamanoo",
                meaning: "O you who believe"),
            DuaDetails(
                part: "Fifth Part",
                arabic: "La Takhoonullaha Werrasoola",
                meaning: "Do not betray Allah and the Apostle"),
            DuaDetails(
                part: "Fifth Part",
                arabic: "Wa Takhoonu Amaanaatikum",
                meaning: "And do not betray your trusts"),
            DuaDetails(
                part: "Fifth Part",
                arabic: "Wa Antum Ta'lamoon",
                meaning: "While you know"),
            DuaDetails(
                part: "Fifth Part",
                arabic: "Rabbanaghfir lana Zunoobana",
                meaning: "O our Lord, forgive us our sins"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "Qul Huwallhahu Ahad",
                meaning: "Say it is Allah, who is the one"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "Allahus-Samad",
                meaning: "Allah is absolute, independent"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "Lam yalid",
                meaning: "He did not beget"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "Wa lam yoolad",
                meaning: "Nor was he begotten"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "Wa lam Yakullahoo Kufuwan ahad",
                meaning: "And there is none like unto him"),
        ]
    }
    
    /// Chooses a random `DuaDetails` item from the list of all dua parts and returns it.
    /// - Returns: A random `DuaDetails` item.
    static func random() -> DuaDetails {
        let allDua = DuaProvider.all()
        let randomIndex = Int.random(in: 0..<allDua.count)
        return allDua[randomIndex]
    }
    
//    static func setDuaClicked(clicked: String) {
//        duaClicked = clicked
//    }
    
    static func getWhichPart(duaPart: DuaPart) -> DuaDetails {
        if (duaPart.part == "First Part") {
            return firstPart()
        } else if (duaPart.part == "Second Part") {
            return secondPart()
        } else if (duaPart.part == "Third Part") {
            return thirdPart()
        } else if (duaPart.part == "Fourth Part") {
            return fourthPart()
        } else if (duaPart.part == "Fifth Part") {
            return fifthPart()
        } else if (duaPart.part == "Sixth Part") {
            return sixthPart()
        } else {
            return random()
        }
    }
    
    static func firstPart() -> DuaDetails {
        let allDua = DuaProvider.all()
        let firstPartDuaMeaning = allDua.filter({ (duaDetails) -> Bool in
            if (duaDetails.part == "First Part") {
                return true;
            } else {
                return false;
            }
        })
        
        let randomIndex = Int.random(in: 0..<firstPartDuaMeaning.count)
        return firstPartDuaMeaning[randomIndex]
    }
    
    static func secondPart() -> DuaDetails {
        let allDua = DuaProvider.all()
        let secondPartDuaMeaning = allDua.filter({ (duaDetails) -> Bool in
            if (duaDetails.part == "Second Part") {
                return true;
            } else {
                return false;
            }
        })
        
        let randomIndex = Int.random(in: 0..<secondPartDuaMeaning.count)
        return secondPartDuaMeaning[randomIndex]
    }
    
    static func thirdPart() -> DuaDetails {
        let allDua = DuaProvider.all()
        let thirdPartDuaMeaning = allDua.filter({ (duaDetails) -> Bool in
            if (duaDetails.part == "Third Part") {
                return true;
            } else {
                return false;
            }
        })
        
        let randomIndex = Int.random(in: 0..<thirdPartDuaMeaning.count)
        return thirdPartDuaMeaning[randomIndex]
    }
    
    static func fourthPart() -> DuaDetails {
        let allDua = DuaProvider.all()
        let fourthPartDuaMeaning = allDua.filter({ (duaDetails) -> Bool in
            if (duaDetails.part == "Fourth Part") {
                return true;
            } else {
                return false;
            }
        })
        
        let randomIndex = Int.random(in: 0..<fourthPartDuaMeaning.count)
        return fourthPartDuaMeaning[randomIndex]
    }
    
    static func fifthPart() -> DuaDetails {
        let allDua = DuaProvider.all()
        let fifthPartDuaMeaning = allDua.filter({ (duaDetails) -> Bool in
            if (duaDetails.part == "Fifth Part") {
                return true;
            } else {
                return false;
            }
        })
        
        let randomIndex = Int.random(in: 0..<fifthPartDuaMeaning.count)
        return fifthPartDuaMeaning[randomIndex]
    }
    
    static func sixthPart() -> DuaDetails {
        let allDua = DuaProvider.all()
        let sixthPartDuaMeaning = allDua.filter({ (duaDetails) -> Bool in
            if (duaDetails.part == "Sixth Part") {
                return true;
            } else {
                return false;
            }
        })
        
        let randomIndex = Int.random(in: 0..<sixthPartDuaMeaning.count)
        return sixthPartDuaMeaning[randomIndex]
    }
    
    static func getRandomDuaMeaning() -> String {
        let randomDua = random()
//        while (randomDua.arabic == duaDetail.arabic) {
//            randomDua = random()
//        }
        return randomDua.meaning
    }
    
}
