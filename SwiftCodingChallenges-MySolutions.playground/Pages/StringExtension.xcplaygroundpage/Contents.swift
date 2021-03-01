import UIKit

extension String {
    subscript(_ index: Int) -> Character? {
        get {
            guard self.count > 0 else {
                return nil
            }
            
            guard index < self.count && index >= 0 else {
                return nil
            }
            
            let startIndex = self.startIndex
            let searchIndex = self.index(startIndex, offsetBy: index) // O(n)
            
            return self[searchIndex]
        }
    }
}

