import SwiftUI

enum Errors: CustomStringConvertible {
    case faildPath
    case faildDecode

    var description: String {
        switch self {
        case .faildPath: return "Fahlerhafter Pfad"
        case .faildDecode: return "Fahlerhafte Decodierung"
        }
    }
    
}
struct Song: Codable, Identifiable{
    let id: Int
    let name: String
    let artist: String
}

struct Challenge_03_06_02_2: View {
    
    @State private var songsArray: [Song] = []
    
    var body: some View {
        VStack {
            List{
                ForEach(songsArray) { song in
                    Text("\(song.id)\t \(song.name) - \(song.artist)")
                }
            }
        }
        .task {
            fetchScheduleFromJSON()
        }
        
    }
    
    private func fetchScheduleFromJSON() {
        
        guard let path = Bundle.main.path(forResource: "Songs", ofType: "json") else {
            return print(Errors.faildPath)
        }
        
        do {
            let data = try Data(contentsOf: URL(filePath: path))
            print("Daten gefunden: \(data)")
            
            let songs = try JSONDecoder().decode([Song].self, from: data)
            print("Einträge gefunden: \(songs.count)")
            self.songsArray = songs
            
        } catch {
            return print(Errors.faildDecode)
        }
    }
}

#Preview {
    Challenge_03_06_02_2()
}
