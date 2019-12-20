import UIKit

func beerSong() ->String{
    var lyrics: String = ""
    
    for number in (1...99).reversed(){
        let newLine: String = "\n \(number) bottles of beer on the wall, \(number) bottles of beer. Take one down pass it around, \(number-1) bottles of beer on the wall."
        lyrics += newLine
    }
    lyrics += "\nNo more bottles of beer on the wall, no more bottled of beer. Go to the store, buy some more, 99 bottles of beer on the wall.\n"
    return lyrics
    
    
    
    
}
print(beerSong())
