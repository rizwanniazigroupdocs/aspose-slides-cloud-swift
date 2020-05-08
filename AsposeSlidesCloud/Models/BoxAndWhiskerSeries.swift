/*
 * --------------------------------------------------------------------------------------------------------------------
 * <copyright company="Aspose">
 *   Copyright (c) 2020 Aspose.Slides for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------------------------------------------
 */


import Foundation


/** One value series. */

public struct BoxAndWhiskerSeries: Codable {

    public enum QuartileMethod: String, Codable { 
        case exclusive = "Exclusive"
        case inclusive = "Inclusive"
    }
    /** Quartile method. */
    public var quartileMethod: QuartileMethod?
    /** True if inner points are shown. */
    public var showInnerPoints: Bool?
    /** True if mean line is shown. */
    public var showMeanLine: Bool?
    /** True if mean markers are shown. */
    public var showMeanMarkers: Bool?
    /** True if outlier points are shown. */
    public var showOutlierPoints: Bool?

    public init(quartileMethod: QuartileMethod?, showInnerPoints: Bool?, showMeanLine: Bool?, showMeanMarkers: Bool?, showOutlierPoints: Bool?) {
        self.quartileMethod = quartileMethod
        self.showInnerPoints = showInnerPoints
        self.showMeanLine = showMeanLine
        self.showMeanMarkers = showMeanMarkers
        self.showOutlierPoints = showOutlierPoints
    }


}

