//enum HTTPError: Error {
//    case invalidURL
//}
//
//struct Movie: Codable {
//    var id: Int
//    var title: String
//}
//
//@State private var movies: [Movie] = []
//
//func fetchData() {
//    Task {
//        do {
//            self.movies = try await fetchMovies()
//        } catch {
//            print("Request failed with error: \(error)")
//        }
//    }
//}
//
//private func fetchMovies() async throws -> [Movie] {
//    let headers = [
//        "X-RapidAPI-Key":  "<APIKey>",
//        "X-RapidAPI-Host": "actor-movie-api1.p.rapidapi.com"
//    ]
//    
//    guard let url = URL(string: "https://actor-movie-api1.p.rapidapi.com/getid/Tom%20Holland?apiKey=<APIKey>") else {
//        throw HTTPError.invalidURL
//    }
//    
//    var request = URLRequest(url: url)
//    request.httpMethod = "POST"  // muss GET sein!
//    request.allHTTPHeaderFields = headers
//    
//    let (data, _) = try await URLSession.shared.data(for: request)
//    return try JSONDecoder().decode([Movie].self, from: data)
//}
