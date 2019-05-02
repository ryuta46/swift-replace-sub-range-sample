//
// Copyright (c) 2018 T TECH, LIMITED LIABILITY CO.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // replaceWithOther()
        // replaceWith0()
        replaceWithOtherLength()
    }

    private func replaceWithOther() {
        var target = [0, 1, 2, 3, 4]
        let toReplace = [20, 30]
        
        print("original: \(target)")
        target.replaceSubrange(2...3, with: toReplace)
        print("replaced: \(target)")
    }
    
    private func replaceWith0() {
        var target = [0, 1, 2, 3, 4]
        
        print("original: \(target)")
        target.replaceSubrange(2...3, with: repeatElement(0, count: 2))
        print("replaced: \(target)")
    }

    private func replaceWithOtherLength() {
        var target = [0, 1, 2, 3, 4]
        let toReplace = [20, 20, 20, 20, 30]
        
        print("original: \(target)")
        target.replaceSubrange(2...3, with: toReplace)
        print("replaced: \(target)")
    }

}

