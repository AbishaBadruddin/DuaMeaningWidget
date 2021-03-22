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
                part: "First Part",
                arabic: "Ihdinas siratal mustaqim",
                meaning: "Guide us to the right path"),
            DuaDetails(
                part: "First Part",
                arabic: "Siratal ladhina an'amta alayhim",
                meaning: "The path of those upon whom thou hast bestowed favors"),
            DuaDetails(
                part: "First Part",
                arabic: "Ghayril maghdubi alayhim",
                meaning: "Not of those cursed ones"),
            DuaDetails(
                part: "First Part",
                arabic: "WALAZ-ZAAL - LEEN",
                meaning: "And nor of those who were gone astray"),
            DuaDetails(
                part: "First Part",
                arabic: "Sajada wajhi Alayka",
                meaning: "I prostrate before thee"),
            DuaDetails(
                part: "First Part",
                arabic: "Wa tawak kaltu alayka",
                meaning: "And I rely upon thee"),
            DuaDetails(
                part: "First Part",
                arabic: "Minka quw-wati",
                meaning: "From thee is my strength"),
            DuaDetails(
                part: "First Part",
                arabic: "Wa anta ismati",
                meaning: "And thou art my protection"),
            DuaDetails(
                part: "First Part",
                arabic: "Ya rab-bal alamin",
                meaning: "O lord of the worlds"),
            DuaDetails(
                part: "First Part",
                arabic: "Al-lahuma sal-li ala muham-madinil mustafa",
                meaning: "O Allah, let thy peace be upon Muhammad and the chosen"),
            DuaDetails(
                part: "First Part",
                arabic: "Wa-ala aly yinil murtada",
                meaning: "And on Aly the favorite"),
            DuaDetails(
                part: "First Part",
                arabic: "Wa alal-a-im-matil-atahar",
                meaning: "And on the Imams- the pure"),
            DuaDetails(
                part: "First Part",
                arabic: "Wa ala huj-jatil amri",
                meaning: "And on the evidence of thy authority"),
            DuaDetails(
                part: "First Part",
                arabic: "Sahibiz zamani wal asr",
                meaning: "The lord of the age and the time"),
            DuaDetails(
                part: "First Part",
                arabic: "Imaminal hadiril mawjud",
                meaning: "Our present living Imam"),
            DuaDetails(
                part: "First Part",
                arabic: "Mawlana shah karimil husayni",
                meaning: "Our Lord shah Karimil Al Husayni"),
            DuaDetails(
                part: "First Part",
                arabic: "Al lahum-ma laka sujudi wa ta'ati",
                meaning: "O Allah to You is my prostration and obedience"),
            
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
                part: "Second Part",
                arabic: "Allahuma ya mawlana",
                meaning: "O Allah o our lord"),
            DuaDetails(
                part: "Second Part",
                arabic: "Antas salaam",
                meaning: "You are the peace"),
            DuaDetails(
                part: "Second Part",
                arabic: "Wa minkas salaam",
                meaning: "And from you is the peace"),
            DuaDetails(
                part: "Second Part",
                arabic: "Wa illayka yarjius salaam",
                meaning: "And to you returns the peace"),
            DuaDetails(
                part: "Second Part",
                arabic: "Hayyina rabbana bis salaam",
                meaning: "O our lord give us life of peace"),
            DuaDetails(
                part: "Second Part",
                arabic: "Wa adkhilna daras salaam",
                meaning: "And usher us in the abode of peace"),
            DuaDetails(
                part: "Second Part",
                arabic: "Tabarakta rabbana wa ta alaita",
                meaning: "Blessed you are our lord the most high"),
            DuaDetails(
                part: "Second Part",
                arabic: "Ya Zal Jalali Wal Ikram",
                meaning: "O, the Lord of Majeesty and Reverence"),
            
            DuaDetails(
                part: "Second Part",
                arabic: "Allahumma ya mawlana minka madadi",
                meaning: "O Allah o our lord from you is my help"),
            DuaDetails(
                part: "Second Part",
                arabic: "Wa alayka mutamadi",
                meaning: "And upon you is my reliance"),
            DuaDetails(
                part: "Second Part",
                arabic: "Iyyaaka Na'Budu wa Iyyaaka Nasta'een ",
                meaning: "You alone we worship and you alone we seek for help"),

            DuaDetails(
                part: "Second Part",
                arabic: "Ya ali bilutfika adrikani",
                meaning: "O Ali help me with your kindness"),
            DuaDetails(
                part: "Second Part",
                arabic: "La ilaha illallah",
                meaning: "There is no deity except Allah"),
            DuaDetails(
                part: "Second Part",
                arabic: "Muhammadur rasoolullah",
                meaning: "Muhammad is the messenger of Allah"),
            DuaDetails(
                part: "Second Part",
                arabic: "Alliyun ameerul mumineena alliyullah",
                meaning: "Ali the master of believers is from Allah"),
            DuaDetails(
                part: "Second Part",
                arabic: "Mawlana shah karimul hussaini",
                meaning: "Our lord shah karim al hussaini"),
            DuaDetails(
                part: "Second Part",
                arabic: "Al imamul hazirul maujood",
                meaning: "The present living imam"),
            DuaDetails(
                part: "Second Part",
                arabic: "Allahumma laka sujudi wa ta ati",
                meaning: "O Allah to you is my prostration and obedience"),

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
                part: "Third Part",
                arabic: "La ilaha ilalah hul hayul qayoom",
                meaning: "there is no deity except allah the ever living the eternal"),
            DuaDetails(
                part: "Third Part",
                arabic: "La ilaha ilalah hul malikul haqul mubeen",
                meaning: "there is no deity except allah the sovereign the ultimate truth the evident"),
            DuaDetails(
                part: "Third Part",
                arabic: "La ilaha ilalah hul malikul haququl yaqeen",
                meaning: "there is no deity except allah the sovereign the ultimate truth the certaint"),
            DuaDetails(
                part: "Third Part",
                arabic: "La ilaha ilalah hul maliku yaumid-deen",
                meaning: "there is no deity except allah the lord of the day of judgment"),
            DuaDetails(
                part: "Third Part",
                arabic: "Lafata ila aly",
                meaning: "there is not hero except aly"),
            DuaDetails(
                part: "Third Part",
                arabic: "La saifa illa zulfiquar",
                meaning: "there is no sword except zulfiqar"),
            DuaDetails(
                part: "Third Part",
                arabic: "Tawasalu inal massaib",
                meaning: "seek at the time of difficulties the the help"),
            DuaDetails(
                part: "Third Part",
                arabic: "Bi mawlakamil haziril maijood",
                meaning: "of your lord the present living imam"),
            DuaDetails(
                part: "Third Part",
                arabic: "shah karim al hussayni",
                meaning: "shah karim al hussayni"),
            DuaDetails(
                part: "Third Part",
                arabic: "Alahuma laka sujoodi wa ta-ati",
                meaning: "oh allah to you is my prostration and obedience"),
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
                part: "Fourth Part",
                arabic: "Wa Man Aufaa",
                meaning: "and he who fulfills"),
            DuaDetails(
                part: "Fourth Part",
                arabic: "Bima Aahada Alaihullaha",
                meaning: "what he has pledged with Allah"),
            DuaDetails(
                part: "Fourth Part",
                arabic: "Fasa Yu'Teehi Ajran Azeemaa",
                meaning: "He shall return reward him in plenty"),
            DuaDetails(
                part: "Fourth Part",
                arabic: "Allahummaghfir lana Zunoobana",
                meaning: "O Allah, forgive us our sins"),
            DuaDetails(
                part: "Fourth Part",
                arabic: "Werzuqna, Werhamna",
                meaning: "and give us our bread, and have mercy upon us"),
            DuaDetails(
                part: "Fourth Part",
                arabic: "Bi Haqqi Rusulikul Muqar Rabeen",
                meaning: "in the name of your closest messengers"),
            DuaDetails(
                part: "Fourth Part",
                arabic: "Wa aimmatikal mutah hareen",
                meaning: "and your holy imams"),
            DuaDetails(
                part: "Fourth Part",
                arabic: "wa bi haqqi mawlana",
                meaning: "and in the name of our lord"),
            DuaDetails(
                part: "Fourth Part",
                arabic: "wa imamina shah karimil husasyni",
                meaning: "and our imam, Shah Karim al Husayni"),
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
                part: "Fifth Part",
                arabic: "wa sahil umoorna",
                meaning: "and make our tasks easy"),
            DuaDetails(
                part: "Fifth Part",
                arabic: "werzuqna wer hamna",
                meaning: "and give us our bread and have mercy upon us"),
            DuaDetails(
                part: "Fifth Part",
                arabic: "in naka ala kulli shai in qadeer",
                meaning: "verily you are the omnipotent"),
            DuaDetails(
                part: "Fifth Part",
                arabic: "ya imamaz zaman, ya mawlana",
                meaning: "o imam of the time, o our lord"),
            DuaDetails(
                part: "Fifth Part",
                arabic: "anta quwati",
                meaning: "you are my strength"),
            DuaDetails(
                part: "Fifth Part",
                arabic: "wa anta sanadi",
                meaning: "and you are my support"),
            DuaDetails(
                part: "Fifth Part",
                arabic: "wa alyka tikali",
                meaning: "and on you i rely"),
            DuaDetails(
                part: "Fifth Part",
                arabic: "ya hazir ya maujood",
                meaning: "o present o living"),
            DuaDetails(
                    part: "Fifth Part",
                    arabic: "Ya Shah Karimul Husayni",
                    meaning: "O Shah Karim al-Husayni"),
            DuaDetails(
                part: "Fifth Part",
                arabic: "antal imamul haqul mubeen",
                meaning: "you are the true manifest imam"),
            
            
            
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
            DuaDetails(
                part: "Sixth Part",
                arabic: "Allahumma Bi Haqqi",
                meaning: "Oh allah, in the name of"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "Muhammadinil Mustafa",
                meaning: "muhammad the chosen"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "Wa aliyyinil murtaza",
                meaning: "and Ali the favorite"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "Wa fatimataz zahra",
                meaning: "and fatima the radiant"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "Wal hasani wal husayn",
                meaning: "and hazrat hasan and imam husayn"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "Allahumma bi haqqi",
                meaning: "O Allah, in the name of"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "Mawlana aly",
                meaning: "Our lord Aly"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "wa bi haqqi",
                meaning: "and in the name of"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "mawlana wa imaminal haziril maujood",
                meaning: "our lord and our present living imam"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "Shah karimil husaynirhamna",
                meaning: "shah karim al-husyani have mercy upon us"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "Waghfir Lana",
                meaning: "and forgive us our sins"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "IN-NAKA 'ALA KULLI SHAI'IN QADEER",
                meaning: "verily, You are the Omnipotent"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "WAL-HAMDU LILLAHI",
                meaning: "and all praise is due to Allah"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "RABBIL 'AALAMEEN",
                meaning: "the Lord of the worlds"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "SHAH-JO-DIDAR",
                meaning: "May you be blessed with the holy Didar of our Lord"),
            DuaDetails(
                part: "Sixth Part",
                arabic: "ALLAHUMMA LAKA SUJOODI WA TA-'ATI",
                meaning: "O Allah to You is my prostration and obedience"),
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
