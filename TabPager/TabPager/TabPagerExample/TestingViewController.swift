//
//  TestingViewController.swift
//  TabPager
//
//  Created by Mohit Anand on 12/03/19.
//  Copyright © 2019 Bugsy. All rights reserved.
//

import UIKit

final class TestingViewController: TabPagerViewController {
    
    init() {
        super.init(flow: .freeFlow)
        delegate = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let v1 = ExampleViewController.init()
        v1.view.backgroundColor = UIColor.yellow
        v1.configure(withText: "aklsmdsa ddas dasodaskd asdklasd aslkdmasldkmasld asdlaksd")
        v1.pageIndex = 0
        let titles: [String] = ["Equity", "Balanced", "Tax Saver", "Debt", "Multi Cap", "Liquid", "Medium to Long Duration"]

        configure(withTitles: titles, andInitialViewController: v1)
    }
}

extension TestingViewController: PagerDelegate {
    
    func viewController(forIndex index: Int) -> PageableController? {
        switch index {
        case 0:
            let v1 = ExampleViewController.init()
            v1.view.backgroundColor = UIColor.yellow
            v1.configure(withText: "aklsmdsa ddas dasodaskd asdklasd aslkdmasldkmasld asdlaksd")
            v1.pageIndex = 0
            return v1
        case 1:
            let v2 = ExampleViewController.init()
            v2.view.backgroundColor = UIColor.red
            v2.configure(withText: "aklsmdsa ddas dasodaskd asdklasd aslkdmasldkmasld asdlaksd asldkasmdlmsad asdkasd aldmasd asldmasdas ")
            v2.pageIndex = 1
            return v2
        case 2:
            let v3 = ExampleViewController.init()
            v3.view.backgroundColor = UIColor.purple
            v3.configure(withText: "aklsmdsa ddas dasodaskd asdklasd aslkdmasldkmasld asdlaksd asldkasmdlmsad asdkasd aldmasd asldmasdas dasldmsa dasldmas dklasmnd sadnoasda")
            v3.pageIndex = 2
            return v3
        case 3:
            let v4 = ExampleViewController.init()
            v4.view.backgroundColor = UIColor.magenta
            v4.configure(withText: "aklsmdsa ddas dasodaskd asdklasd aslkdmasldkmasld asdlaksd asldkasmdlmsad asdkasd aldmasd asldmasdas dasldmsa dasldmas dklasmnd sadnoasdasodkasldkasldklaskdlasd asdasodkaslkds dkasjdasn")
            v4.pageIndex = 3
            return v4
        case 4:
            let v5 = ExampleViewController.init()
            v5.view.backgroundColor = UIColor.cyan
            v5.configure(withText: "aklsmdsa ddas dasodaskd asdklasd aslkdmasldkmasld asdlaksd asldkasmdlmsad asdkasd aldmasd asldmasdas dasldmsa dasldmas dklasmnd sadnoasdasodkasldkasldklaskdlasd asdasodkaslkds dkasjdasn dasojdaslkdpod dskfhjfgnrigr ")
            v5.pageIndex = 4
            return v5
        case 5:
            let v6 = ExampleViewController.init()
            v6.view.backgroundColor = UIColor.darkGray
            v6.configure(withText: "aklsmdsa ddas dasodaskd asdklasd aslkdmasldkmasld asdlaksd asldkasmdlmsad asdkasd aldmasd asldmasdas dasldmsa dasldmas dklasmnd sadnoasdasodkasldkasldklaskdlasd asdasodkaslkds dkasjdasn dasojdaslkdpod dskfhjfgnrigr grekifjefnbruggrbg fvjsehfjsenf furhgrebfuhrjfsnf eufhesfjesf")
            v6.pageIndex = 5
            return v6
        case 6:
            let v7 = ExampleViewController.init()
            v7.view.backgroundColor = UIColor.white
            v7.configure(withText: "aklsmdsa ddas dasodaskd asdklasd aslkdmasldkmasld asdlaksd asldkasmdlmsad asdkasd aldmasd asldmasdas dasldmsa dasldmas dklasmnd sadnoasdasodkasldkasldklaskdlasd asdasodkaslkds dkasjdasn dasojdaslkdpod dskfhjfgnrigr grekifjefnbruggrbg fvjsehfjsenf furhgrebfuhrjfsnf eufhesfjesf efuehdfe fuehfejde ejfhejdnbjshd efjehdesnde deidjoiqwoeiw")
            v7.pageIndex = 6
            return v7
        default:
            return nil
        }
    }
}
