//MARK: - The Power Of Possibility

import UIKit

class ThePowerOfPossibility: UIViewController {
    
    //MARK: Properties
    var possibilities: [String] = []
    var currentPossibilityIndex = 0
    var currentPossibility: String {
        return possibilities[currentPossibilityIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPossibilities()
    }
    
    //MARK: Actions
    @IBAction func displayNextPossibility(_ sender: Any) {
        if currentPossibilityIndex < possibilities.count - 1 {
            currentPossibilityIndex += 1
            loadPossibility()
        } else {
            print("No more possibilities.")
        }
    }
    
    @IBAction func displayPreviousPossibility(_ sender: Any) {
        if currentPossibilityIndex > 0 {
            currentPossibilityIndex -= 1
            loadPossibility()
        } else {
            print("No more possibilities.")
        }
    }
    
    
    //MARK: Helpers
    func createPossibilities() {
        possibilities = [
            "The power of possibility is in the mind of the beholders.",
            "Possibility is a key factor in progress and success.",
            "Explore the realm of possibility and discover what you can achieve.",
            "Impossible is only an opinion.",
            "Anything that exists is because of the power of possibility.",
            "Achieving impossible goals is possible with the power of possibility.",
            "Never stop exploring the power of possibility.",
            "An open mind allows for more possibilities.",
            "The sky is the limit when it comes to the power of possibility.",
            "Possibility is limited only by one’s imagination.",
            "Possibility can be the start of something great.",
            "Possibility is living with an open heart and an open mind.",
            "The power of possibility motivates and inspires us to take action.",
            "The power of possibility is the source of true success.",
            "Possibility can create miracles.",
            "The power of possibility leads to breakthroughs.",
            "You can create a better future with the power of possibility.",
            "Find strength in the power of possibility.",
            "The power of possibility creates opportunities.",
            "Possibility can turn a dream into reality.",
            "Think more, explore more, and discover more possibilities.",
            "Live outside the box to see more possibilities.",
            "The power of possibility can unlock new paths to success.",
            "Think bigger, be creative, and believe in the power of possibility.",
            "The power of possibility can take you to unimaginable heights.",
            "The power of possibility is within you, waiting to be explored."
        ]
    }
    
    func loadPossibility() {
        print("Current Possibility: \(currentPossibility)")
    }
}