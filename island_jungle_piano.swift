import UIKit

//Declare Variables
var numberOfChapters = 6
var pageNumber = 0

//Declare Utility Classes
class Chapter {
    var title: String
    var pages: [Int]
    var wordCount: Int
    
    init(title: String, pages: [Int], wordCount: Int) {
        self.title = title
        self.pages = pages
        self.wordCount = wordCount
    }
}

class Book {
    var name: String
    var chapters: [Chapter]
    
    init(name: String, chapters: [Chapter]) {
        self.name = name
        self.chapters = chapters
    }
}

//Declare Utility Functions
func determineNextChaptersPage(chapter: Chapter) -> Int {
    if pageNumber == 0 {
        return chapter.pages[0]
    } else {
        for page in chapter.pages {
            if page > pageNumber {
                return page
            }
        }
    }
    
    return -1
}

func determineNextChapter(chapter: Chapter, book: Book) -> Chapter? {
    let bookChapters = book.chapters
    let lastChapterNumber = numberOfChapters - 1
    let currentChapterIndex = bookChapters.firstIndex(of: chapter)!
    
    if currentChapterIndex < lastChapterNumber {
        return bookChapters[currentChapterIndex + 1]
    }
        
    return nil
}

//Declare Book and Chapters
let thePowerOfPossibility = Book(name: "The Power of Possibility", chapters: [
    Chapter(title: "Introduction", pages: [1,2], wordCount: 264),
    Chapter(title: "The Paradox of Possibility", pages: [3,4,5], wordCount: 445),
    Chapter(title: "Limiting Possibility", pages: [6,7], wordCount: 320),
    Chapter(title: "Identifying & Owning Limiting Possibility", pages: [8,9,10], wordCount: 487),
    Chapter(title: "Creating Possibility", pages: [11,12,13], wordCount: 439),
    Chapter(title: "Conclusion", pages: [14,15], wordCount: 221)
])

func processBook(book: Book) {
    print("Starting book \(book.name)")
    
    var currentChapter = book.chapters[0]
    while currentChapter != nil {
        print("Beginning chapter \(currentChapter!.title)")
        
        pageNumber = determineNextChaptersPage(chapter: currentChapter!)
        while pageNumber != -1 {
            print("Reading page \(pageNumber) of chapter \(currentChapter!.title)")
            pageNumber = pageNumber + 1
        }
        
        currentChapter = determineNextChapter(chapter: currentChapter!, book: book)
    }
}

//Call Processing Function
processBook(book: thePowerOfPossibility)