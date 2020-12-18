//
//  CGGradient.swift
//  CoreGraphicDemo
//
//  Created by Mac on 2020/12/17.
//

import UIKit

class CGGradient: UIView {

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        let context = UIGraphicsGetCurrentContext()
        
    }

    /// 绘制线性渐变
    /// - Parameter context: 上下文·
    func drawLinearGradient(context:CGContext) {
        
        //使用RGB颜色控件
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        /*
         指定渐变色
         space: 颜色空间
         components: 颜色数组，注意由于指定了RGB颜色空间，那么四个数组元素表示一个颜色
         locations: 颜色所在的位置（范围0~1）， 这个数组的个数不小于components中存放的颜色个数
         count: 渐变个数，等于locations的个数
         */
        
        let components:[CGFloat] = [248.0/255.0, 86.0/255.0, 86.0/255.0, 1,
                                   249.0/255.0, 127.0/255.0, 127.0/255.0, 1,
                                   1.0, 1.0, 1.0, 1.0
        ]
        
        let locations:[CGFloat] = [0, 0.4, 1]
        let gradient = CGGradient(colorSpace: colorSpace, colorComponents: components, locations: locations, count: locations.count)
        
        context.drawLinearGradient(<#T##gradient: CGGradient##CGGradient#>, start: <#T##CGPoint#>, end: <#T##CGPoint#>, options: <#T##CGGradientDrawingOptions#>)
    }
}
