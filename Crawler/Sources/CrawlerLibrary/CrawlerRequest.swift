import Foundation
#if os(Linux)
    import FoundationNetworking
#endif

protocol CrawlerRequest {
    func perform(for url: String, completion: @escaping ((String?, Error?) -> Void))
}

struct CrawlerRequestImpl: CrawlerRequest {
    private let session = URLSession.shared
    
    func perform(for url: String, completion: @escaping ((String?, Error?) -> ())) {
        let request = URLRequest(url: URL(string: url)!)
    
        let task = session.dataTask(with: request) { (data, response, error) in
            guard error == nil else {
                completion(nil, error); return
            }
            if let data = data {
                print("response: \(data)")
                completion(String(data: data, encoding: .utf8), nil)
            }
        }
        task.resume()
    }
}