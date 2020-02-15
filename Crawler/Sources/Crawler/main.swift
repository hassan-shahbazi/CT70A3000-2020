import Foundation
import CrawlerLibrary

/// Steps:
///     1- Parse 'source.txt' and extract target websites
///     2- Fetch contents for all urls in an async manner
///     3- Strip contents to find all matched words with ones in dict_FIN.txt
///     4- Output words and sentences to corresponded .csv files


let fileManager: CrawlerFileManager = CrawlerFileManagerImpl()
let jobs = CrawlerJobsImpl()

func main() {
    fileManager.read(at: "/sources.txt").forEach {
            jobs.addToQueue(url: $0) { url, response, error in
                guard error == nil, let response = response else { return }
                let strippedResponse = response
                                                .stripHTML()
                                                .stripData(mode: .lettersOnly)
                                                .stripDictionary()
                let strippedByWord = strippedResponse.sort(mode: .word)
                fileManager.write(content: strippedByWord, to: "/words.csv")
    
                let sortedBySentence = strippedResponse.sort(mode: .sentence)
                fileManager.write(content: sortedBySentence, to: "/sentence.csv")
            }
    }
    
    jobs.startDispatch {
        exit(EXIT_SUCCESS)
    }
}

main()
dispatchMain()