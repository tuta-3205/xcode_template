# Xcode custome template

If you’re tired of filling out boilerplate code whenever you begin a new Xcode project, you can save yourself a ton of time by creating customized project templates.

Using Xcode’s project and file templates, you have the power to customize how new projects and files start out their life from the moment you use File ▸ New. These templates allow you to pre-fill the contents of new files and project so that you can get to work on the core of your next excellent app idea more quickly.

Step 1:

- Copy source to ~/Library/Developer/Xcode/Templates

Step 2:

- Open Xcode and add file
 
![Screenshot 2022-12-29 at 19 25 21](https://user-images.githubusercontent.com/114136010/209950881-5373eb19-f9c7-4587-84a1-d79709c1d860.png)

Step 3:

- Enter module name

![Screenshot 2022-12-29 at 19 25 45](https://user-images.githubusercontent.com/114136010/209950986-ac9bd372-df80-4cac-b871-c164fb4f4ef6.png)

Step 4:

- Enter your code

![Screenshot 2022-12-29 at 19 26 49](https://user-images.githubusercontent.com/114136010/209951017-35673d3f-bb5f-4244-8876-1913156db475.png)

# Code Gen

- ModuleViewModel.swift
```
//
//  BookViewController.swift
//  CleanArchitecture
//
//  Created by tran.anh.tub on 29/12/2022.
//  Copyright © 2022 Sun Asterisk. All rights reserved.
//

import UIKit
import Reusable
import SDWebImage
import RxSwift
import RxCocoa
import MGArchitecture

final class BookViewController: UIViewController, Bindable {

    // MARK: - IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Properties

    var viewModel: BookViewModel!
    var disposeBag = DisposeBag()

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configView()
    }

    deinit {
        logDeinit()
    }

    private func configView() {

    }

    func bindViewModel() {
        let input = BookViewModel.Input(

        )
        
        let output = viewModel.transform(input, disposeBag: disposeBag)
        
    }
}

extension BookViewController {

}

// MARK: - StoryboardSceneBased
extension BookViewController: StoryboardSceneBased {
    static var sceneStoryboard = Storyboards.
}

```

- ModuleNavigator.swift

```
//
//  BookNavigator.swift
//  CleanArchitecture
//
//  Created by tran.anh.tub on 29/12/2022.
//  Copyright © 2022 Sun Asterisk. All rights reserved.
//

import UIKit

protocol BookNavigatorType {
    
}

struct BookNavigator: BookNavigatorType {
    unowned let assembler: Assembler
    unowned let navigationController: UINavigationController

}
```
- ModuleViewModel.swift

```
//
//  BookViewModel.swift
//  CleanArchitecture
//
//  Created by tran.anh.tub on 29/12/2022.
//  Copyright © 2022 Sun Asterisk. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

struct BookViewModel {
    let navigator: BookViewModelType
    let useCase: BookViewModelUseCaseType
}

// MARK: ViewModel
extension BookViewModel: ViewModel {
    struct Input {

    }
    
    struct Output {

    }

    func transform(_ input: Input, disposeBag: DisposeBag) -> Output {
        let output = Output()

        return output
    }
}
```
