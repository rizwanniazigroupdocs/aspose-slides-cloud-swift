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


/** A scatter series */

public struct ScatterSeries: Codable {

    public enum DataPointType: String, Codable { 
        case oneValue = "OneValue"
        case scatter = "Scatter"
        case bubble = "Bubble"
    }
    /** Series name. */
    public var name: String?
    /** True if each data marker in the series has a different color. */
    public var isColorVaried: Bool?
    /** Invert solid color for the series. */
    public var invertedSolidFillColor: String?
    /** True if curve smoothing is turned on. Applies only to line and scatter connected by lines charts. */
    public var smooth: Bool?
    /** True if the series is plotted on second value axis. */
    public var plotOnSecondAxis: Bool?
    /** Series order. */
    public var order: Int?
    /** The number format for the series y values. */
    public var numberFormatOfYValues: String?
    /** The number format for the series x values. */
    public var numberFormatOfXValues: String?
    /** The number format for the series values. */
    public var numberFormatOfValues: String?
    /** The number format for the series bubble sizes. */
    public var numberFormatOfBubbleSizes: String?
    /** True if the series shall invert its colors if the value is negative. Applies to bar, column and bubble series. */
    public var invertIfNegative: Bool?
    /** The distance of an open pie slice from the center of the pie chart is expressed as a percentage of the pie diameter. */
    public var explosion: Int?
    /** Series marker. */
    public var marker: SeriesMarker?
    /** Fill properties set for the series. */
    public var fillFormat: FillFormat?
    /** Effect properties set for the series. */
    public var effectFormat: EffectFormat?
    /** Line properties set for the series. */
    public var lineFormat: LineFormat?
    /** Data point type. */
    public var dataPointType: DataPointType?
    /** Gets or sets the values. */
    public var dataPoints: [ScatterChartDataPoint]?

    public init(name: String?, isColorVaried: Bool?, invertedSolidFillColor: String?, smooth: Bool?, plotOnSecondAxis: Bool?, order: Int?, numberFormatOfYValues: String?, numberFormatOfXValues: String?, numberFormatOfValues: String?, numberFormatOfBubbleSizes: String?, invertIfNegative: Bool?, explosion: Int?, marker: SeriesMarker?, fillFormat: FillFormat?, effectFormat: EffectFormat?, lineFormat: LineFormat?, dataPointType: DataPointType?, dataPoints: [ScatterChartDataPoint]?) {
        self.name = name
        self.isColorVaried = isColorVaried
        self.invertedSolidFillColor = invertedSolidFillColor
        self.smooth = smooth
        self.plotOnSecondAxis = plotOnSecondAxis
        self.order = order
        self.numberFormatOfYValues = numberFormatOfYValues
        self.numberFormatOfXValues = numberFormatOfXValues
        self.numberFormatOfValues = numberFormatOfValues
        self.numberFormatOfBubbleSizes = numberFormatOfBubbleSizes
        self.invertIfNegative = invertIfNegative
        self.explosion = explosion
        self.marker = marker
        self.fillFormat = fillFormat
        self.effectFormat = effectFormat
        self.lineFormat = lineFormat
        self.dataPointType = dataPointType
        self.dataPoints = dataPoints
    }


}

