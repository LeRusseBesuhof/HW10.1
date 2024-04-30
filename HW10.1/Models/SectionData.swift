import Foundation

struct SectionData : Identifiable {
    var id : String = UUID().uuidString
    let group : [ItemData]
    
    internal static func mockSectionData() -> [SectionData] {
        let storyGroup = [
            ItemData(image: "wood", text: "Wood"),
            ItemData(image: "stone", text: "Stone"),
            ItemData(image: "copper", text: "Copper"),
            ItemData(image: "steel", text: "Iron"),
            ItemData(image: "gold", text: "Gold"),
            ItemData(image: "diamond", text: "Diamond")
        ]
        
        let messageGroup = [
            ItemData(image: "stick", text: "The oldest wooden weapons discovered so far are spears in Schöningen, Germany."),
            ItemData(image: "stone-axe", text: "Stone has been used to make arrowheads, spearheads, hand axes, and querns."),
            ItemData(image: "pickaxe", text: "Copper Age was an era of transition between the Neolithic and the Bronze Age."),
            ItemData(image: "sword", text: "Archeologists believe that iron was discovered by the Hittites of ancient Egypt."),
            ItemData(image: "rings", text: "Gold was highly valued for its rarity and ability to reflect light."),
            ItemData(image: "necklace", text: "Diamonds were worn as adornments, used as cutting tools, served as a talisman.")
        ]
        
        let bannerGroup = [
            ItemData(image: "wheel", header: "Wheel", text: "A wheel is a rotating component that is intended to turn on an axle bearing."),
            ItemData(image: "book", header: "Typography", text: "Typography is the art and technique of arranging type to make written language legible."),
            ItemData(image: "pc", header: "PC", text: "Before there was the personal computer the term of art for a domestic computing machine was “microcomputer“.")
        ]
        
        let imageGroup = [
            ItemData(image: "windmill"),
            ItemData(image: "engine"),
            ItemData(image: "rocket")
        ]
        
        return [SectionData(group: storyGroup), SectionData(group: messageGroup), SectionData(group: bannerGroup), SectionData(group: imageGroup)]
    }
}
