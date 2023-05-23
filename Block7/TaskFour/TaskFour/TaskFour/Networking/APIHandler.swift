//
//  APIHandler.swift
//  TaskFour
//
//  Created by Олександр Федоренко on 23.05.2023.
//

import Foundation
import  Alamofire

class APIHandler {

    static let sharedInstance = APIHandler()
    private let apiKey = "15f61eb856a33dfbfae26292034b9a00"

    func genresRequest(complition: @escaping (GenresStruct) -> Void){
        AF.request("https://api.themoviedb.org/3/genre/movie/list?api_key=" + apiKey).response { response in
            switch response.result {
            case .success(let data):
                do {
                    let jsonData = try JSONDecoder().decode(GenresStruct.self, from: data!)
                    complition(jsonData)
                } catch  {
                    print(error.localizedDescription)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

}
