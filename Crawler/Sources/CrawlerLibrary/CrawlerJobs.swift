import Foundation

public protocol CrawlerJobs {
    func addToQueue(url: String, completion: @escaping ((String, String?, Error?) -> Void))
    func startDispatch(completion: @escaping (() -> Void))
}

public final class CrawlerJobsImpl: CrawlerJobs {
    private let request = CrawlerRequestImpl()
    private let dispatchGroup: DispatchGroup
    private var dispatchWorkers: [DispatchWorkItem]
    
    public init() {
        dispatchGroup = DispatchGroup()
        dispatchWorkers = []
    }
    
    public func addToQueue(url: String, completion: @escaping ((String, String?, Error?) -> Void)) {
        dispatchGroup.enter()
        let dispatch = DispatchWorkItem(qos: .background) { [weak self] in
            self?.request.perform(for: url) { response, error in
                completion(url, response, error)
                self?.dispatchGroup.leave()
            }
        }
        self.dispatchWorkers.append(dispatch)
    }
    
    public func startDispatch(completion: @escaping (() -> Void)) {
        self.dispatchGroup.notify(queue: .main) {
            completion()
        }
        self.dispatchWorkers.forEach { $0.perform() }
    }
}