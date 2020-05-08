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


/** Represents chart resource */

public struct Chart: Codable {

    public enum ChartType: String, Codable { 
        case clusteredColumn = "ClusteredColumn"
        case stackedColumn = "StackedColumn"
        case percentsStackedColumn = "PercentsStackedColumn"
        case clusteredColumn3D = "ClusteredColumn3D"
        case stackedColumn3D = "StackedColumn3D"
        case percentsStackedColumn3D = "PercentsStackedColumn3D"
        case column3D = "Column3D"
        case clusteredCylinder = "ClusteredCylinder"
        case stackedCylinder = "StackedCylinder"
        case percentsStackedCylinder = "PercentsStackedCylinder"
        case cylinder3D = "Cylinder3D"
        case clusteredCone = "ClusteredCone"
        case stackedCone = "StackedCone"
        case percentsStackedCone = "PercentsStackedCone"
        case cone3D = "Cone3D"
        case clusteredPyramid = "ClusteredPyramid"
        case stackedPyramid = "StackedPyramid"
        case percentsStackedPyramid = "PercentsStackedPyramid"
        case pyramid3D = "Pyramid3D"
        case line = "Line"
        case stackedLine = "StackedLine"
        case percentsStackedLine = "PercentsStackedLine"
        case lineWithMarkers = "LineWithMarkers"
        case stackedLineWithMarkers = "StackedLineWithMarkers"
        case percentsStackedLineWithMarkers = "PercentsStackedLineWithMarkers"
        case line3D = "Line3D"
        case pie = "Pie"
        case pie3D = "Pie3D"
        case pieOfPie = "PieOfPie"
        case explodedPie = "ExplodedPie"
        case explodedPie3D = "ExplodedPie3D"
        case barOfPie = "BarOfPie"
        case percentsStackedBar = "PercentsStackedBar"
        case clusteredBar3D = "ClusteredBar3D"
        case clusteredBar = "ClusteredBar"
        case stackedBar = "StackedBar"
        case stackedBar3D = "StackedBar3D"
        case percentsStackedBar3D = "PercentsStackedBar3D"
        case clusteredHorizontalCylinder = "ClusteredHorizontalCylinder"
        case stackedHorizontalCylinder = "StackedHorizontalCylinder"
        case percentsStackedHorizontalCylinder = "PercentsStackedHorizontalCylinder"
        case clusteredHorizontalCone = "ClusteredHorizontalCone"
        case stackedHorizontalCone = "StackedHorizontalCone"
        case percentsStackedHorizontalCone = "PercentsStackedHorizontalCone"
        case clusteredHorizontalPyramid = "ClusteredHorizontalPyramid"
        case stackedHorizontalPyramid = "StackedHorizontalPyramid"
        case percentsStackedHorizontalPyramid = "PercentsStackedHorizontalPyramid"
        case area = "Area"
        case stackedArea = "StackedArea"
        case percentsStackedArea = "PercentsStackedArea"
        case area3D = "Area3D"
        case stackedArea3D = "StackedArea3D"
        case percentsStackedArea3D = "PercentsStackedArea3D"
        case scatterWithMarkers = "ScatterWithMarkers"
        case scatterWithSmoothLinesAndMarkers = "ScatterWithSmoothLinesAndMarkers"
        case scatterWithSmoothLines = "ScatterWithSmoothLines"
        case scatterWithStraightLinesAndMarkers = "ScatterWithStraightLinesAndMarkers"
        case scatterWithStraightLines = "ScatterWithStraightLines"
        case highLowClose = "HighLowClose"
        case openHighLowClose = "OpenHighLowClose"
        case volumeHighLowClose = "VolumeHighLowClose"
        case volumeOpenHighLowClose = "VolumeOpenHighLowClose"
        case surface3D = "Surface3D"
        case wireframeSurface3D = "WireframeSurface3D"
        case contour = "Contour"
        case wireframeContour = "WireframeContour"
        case doughnut = "Doughnut"
        case explodedDoughnut = "ExplodedDoughnut"
        case bubble = "Bubble"
        case bubbleWith3D = "BubbleWith3D"
        case radar = "Radar"
        case radarWithMarkers = "RadarWithMarkers"
        case filledRadar = "FilledRadar"
        case seriesOfMixedTypes = "SeriesOfMixedTypes"
        case treemap = "Treemap"
        case sunburst = "Sunburst"
        case histogram = "Histogram"
        case paretoLine = "ParetoLine"
        case boxAndWhisker = "BoxAndWhisker"
        case waterfall = "Waterfall"
        case funnel = "Funnel"
    }
    /** Gets or sets the type of the chart. */
    public var chartType: ChartType?
    /** True if data labels over the maximum of the chart shall be shown. */
    public var showDataLabelsOverMaximum: Bool?
    /** Gets or sets the series of chart data values. */
    public var series: [Series]?
    /** Gets or sets the categories for chart data */
    public var categories: [ChartCategory]?
    /** Gets or sets the title. */
    public var title: ChartTitle?
    /** Gets or sets the back wall. */
    public var backWall: ChartWall?
    /** Gets or sets the side wall. */
    public var sideWall: ChartWall?
    /** Gets or sets the floor. */
    public var floor: ChartWall?
    /** Gets or sets the legend. */
    public var legend: Legend?
    /** Gets or sets the axes. */
    public var axes: Axes?
    /** Gets or sets the plot area. */
    public var plotArea: PlotArea?

    public init(chartType: ChartType?, showDataLabelsOverMaximum: Bool?, series: [Series]?, categories: [ChartCategory]?, title: ChartTitle?, backWall: ChartWall?, sideWall: ChartWall?, floor: ChartWall?, legend: Legend?, axes: Axes?, plotArea: PlotArea?) {
        self.chartType = chartType
        self.showDataLabelsOverMaximum = showDataLabelsOverMaximum
        self.series = series
        self.categories = categories
        self.title = title
        self.backWall = backWall
        self.sideWall = sideWall
        self.floor = floor
        self.legend = legend
        self.axes = axes
        self.plotArea = plotArea
    }


}

