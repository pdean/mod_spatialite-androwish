include $(CLEAR_VARS)
# ./configure --build=x86_64-pc-linux-gnu --host=arm-linux-eabi
# find geos-3.6.3/ -name "*.cpp" | grep -Ev "tests|doc" | sort | awk '{ print "\t"$1" \\" }'
LOCAL_MODULE := geos

LOCAL_C_INCLUDES := \
    $(GEOS_PATH)/src \
    $(GEOS_PATH)/include

LOCAL_CFLAGS := \
	$(LOCAL_C_INCLUDES:%=-I%) \
	-DHAVE_LONG_LONG_INT_64

LOCAL_CPP_FEATURES += exceptions rtti

LOCAL_SRC_FILES := \
	geos-3.6.3/capi/geos_c.cpp \
	geos-3.6.3/capi/geos_ts_c.cpp \
	geos-3.6.3/src/algorithm/Angle.cpp \
	geos-3.6.3/src/algorithm/BoundaryNodeRule.cpp \
	geos-3.6.3/src/algorithm/CentroidArea.cpp \
	geos-3.6.3/src/algorithm/Centroid.cpp \
	geos-3.6.3/src/algorithm/CentroidLine.cpp \
	geos-3.6.3/src/algorithm/CentroidPoint.cpp \
	geos-3.6.3/src/algorithm/CGAlgorithms.cpp \
	geos-3.6.3/src/algorithm/ConvexHull.cpp \
	geos-3.6.3/src/algorithm/distance/DiscreteHausdorffDistance.cpp \
	geos-3.6.3/src/algorithm/distance/DistanceToPoint.cpp \
	geos-3.6.3/src/algorithm/HCoordinate.cpp \
	geos-3.6.3/src/algorithm/InteriorPointArea.cpp \
	geos-3.6.3/src/algorithm/InteriorPointLine.cpp \
	geos-3.6.3/src/algorithm/InteriorPointPoint.cpp \
	geos-3.6.3/src/algorithm/LineIntersector.cpp \
	geos-3.6.3/src/algorithm/locate/IndexedPointInAreaLocator.cpp \
	geos-3.6.3/src/algorithm/locate/PointOnGeometryLocator.cpp \
	geos-3.6.3/src/algorithm/locate/SimplePointInAreaLocator.cpp \
	geos-3.6.3/src/algorithm/MCPointInRing.cpp \
	geos-3.6.3/src/algorithm/MinimumDiameter.cpp \
	geos-3.6.3/src/algorithm/NotRepresentableException.cpp \
	geos-3.6.3/src/algorithm/PointLocator.cpp \
	geos-3.6.3/src/algorithm/RayCrossingCounter.cpp \
	geos-3.6.3/src/algorithm/RobustDeterminant.cpp \
	geos-3.6.3/src/algorithm/SimplePointInRing.cpp \
	geos-3.6.3/src/algorithm/SIRtreePointInRing.cpp \
	geos-3.6.3/src/geom/CoordinateArraySequence.cpp \
	geos-3.6.3/src/geom/CoordinateArraySequenceFactory.cpp \
	geos-3.6.3/src/geom/Coordinate.cpp \
	geos-3.6.3/src/geom/CoordinateSequence.cpp \
	geos-3.6.3/src/geom/CoordinateSequenceFactory.cpp \
	geos-3.6.3/src/geom/Dimension.cpp \
	geos-3.6.3/src/geom/Envelope.cpp \
	geos-3.6.3/src/geom/GeometryCollection.cpp \
	geos-3.6.3/src/geom/GeometryComponentFilter.cpp \
	geos-3.6.3/src/geom/Geometry.cpp \
	geos-3.6.3/src/geom/GeometryFactory.cpp \
	geos-3.6.3/src/geom/GeometryList.cpp \
	geos-3.6.3/src/geomgraph/Depth.cpp \
	geos-3.6.3/src/geomgraph/DirectedEdge.cpp \
	geos-3.6.3/src/geomgraph/DirectedEdgeStar.cpp \
	geos-3.6.3/src/geomgraph/Edge.cpp \
	geos-3.6.3/src/geomgraph/EdgeEnd.cpp \
	geos-3.6.3/src/geomgraph/EdgeEndStar.cpp \
	geos-3.6.3/src/geomgraph/EdgeIntersectionList.cpp \
	geos-3.6.3/src/geomgraph/EdgeList.cpp \
	geos-3.6.3/src/geomgraph/EdgeNodingValidator.cpp \
	geos-3.6.3/src/geomgraph/EdgeRing.cpp \
	geos-3.6.3/src/geomgraph/GeometryGraph.cpp \
	geos-3.6.3/src/geomgraph/GraphComponent.cpp \
	geos-3.6.3/src/geomgraph/index/MonotoneChainEdge.cpp \
	geos-3.6.3/src/geomgraph/index/MonotoneChainIndexer.cpp \
	geos-3.6.3/src/geomgraph/index/SegmentIntersector.cpp \
	geos-3.6.3/src/geomgraph/index/SimpleEdgeSetIntersector.cpp \
	geos-3.6.3/src/geomgraph/index/SimpleMCSweepLineIntersector.cpp \
	geos-3.6.3/src/geomgraph/index/SimpleSweepLineIntersector.cpp \
	geos-3.6.3/src/geomgraph/index/SweepLineEvent.cpp \
	geos-3.6.3/src/geomgraph/index/SweepLineSegment.cpp \
	geos-3.6.3/src/geomgraph/Label.cpp \
	geos-3.6.3/src/geomgraph/Node.cpp \
	geos-3.6.3/src/geomgraph/NodeFactory.cpp \
	geos-3.6.3/src/geomgraph/NodeMap.cpp \
	geos-3.6.3/src/geomgraph/PlanarGraph.cpp \
	geos-3.6.3/src/geomgraph/Position.cpp \
	geos-3.6.3/src/geomgraph/Quadrant.cpp \
	geos-3.6.3/src/geomgraph/TopologyLocation.cpp \
	geos-3.6.3/src/geom/IntersectionMatrix.cpp \
	geos-3.6.3/src/geom/LinearRing.cpp \
	geos-3.6.3/src/geom/LineSegment.cpp \
	geos-3.6.3/src/geom/LineString.cpp \
	geos-3.6.3/src/geom/Location.cpp \
	geos-3.6.3/src/geom/MultiLineString.cpp \
	geos-3.6.3/src/geom/MultiPoint.cpp \
	geos-3.6.3/src/geom/MultiPolygon.cpp \
	geos-3.6.3/src/geom/Point.cpp \
	geos-3.6.3/src/geom/Polygon.cpp \
	geos-3.6.3/src/geom/PrecisionModel.cpp \
	geos-3.6.3/src/geom/prep/AbstractPreparedPolygonContains.cpp \
	geos-3.6.3/src/geom/prep/BasicPreparedGeometry.cpp \
	geos-3.6.3/src/geom/prep/PreparedGeometry.cpp \
	geos-3.6.3/src/geom/prep/PreparedGeometryFactory.cpp \
	geos-3.6.3/src/geom/prep/PreparedLineString.cpp \
	geos-3.6.3/src/geom/prep/PreparedLineStringIntersects.cpp \
	geos-3.6.3/src/geom/prep/PreparedPoint.cpp \
	geos-3.6.3/src/geom/prep/PreparedPolygonContains.cpp \
	geos-3.6.3/src/geom/prep/PreparedPolygonContainsProperly.cpp \
	geos-3.6.3/src/geom/prep/PreparedPolygonCovers.cpp \
	geos-3.6.3/src/geom/prep/PreparedPolygon.cpp \
	geos-3.6.3/src/geom/prep/PreparedPolygonIntersects.cpp \
	geos-3.6.3/src/geom/prep/PreparedPolygonPredicate.cpp \
	geos-3.6.3/src/geom/Triangle.cpp \
	geos-3.6.3/src/geom/util/ComponentCoordinateExtracter.cpp \
	geos-3.6.3/src/geom/util/CoordinateOperation.cpp \
	geos-3.6.3/src/geom/util/GeometryCombiner.cpp \
	geos-3.6.3/src/geom/util/GeometryEditor.cpp \
	geos-3.6.3/src/geom/util/GeometryTransformer.cpp \
	geos-3.6.3/src/geom/util/LinearComponentExtracter.cpp \
	geos-3.6.3/src/geom/util/PointExtracter.cpp \
	geos-3.6.3/src/geom/util/PolygonExtracter.cpp \
	geos-3.6.3/src/geom/util/ShortCircuitedGeometryVisitor.cpp \
	geos-3.6.3/src/geom/util/SineStarFactory.cpp \
	geos-3.6.3/src/index/bintree/Bintree.cpp \
	geos-3.6.3/src/index/bintree/Interval.cpp \
	geos-3.6.3/src/index/bintree/Key.cpp \
	geos-3.6.3/src/index/bintree/NodeBase.cpp \
	geos-3.6.3/src/index/bintree/Node.cpp \
	geos-3.6.3/src/index/bintree/Root.cpp \
	geos-3.6.3/src/index/chain/MonotoneChainBuilder.cpp \
	geos-3.6.3/src/index/chain/MonotoneChain.cpp \
	geos-3.6.3/src/index/chain/MonotoneChainOverlapAction.cpp \
	geos-3.6.3/src/index/chain/MonotoneChainSelectAction.cpp \
	geos-3.6.3/src/index/intervalrtree/IntervalRTreeBranchNode.cpp \
	geos-3.6.3/src/index/intervalrtree/IntervalRTreeLeafNode.cpp \
	geos-3.6.3/src/index/intervalrtree/IntervalRTreeNode.cpp \
	geos-3.6.3/src/index/intervalrtree/SortedPackedIntervalRTree.cpp \
	geos-3.6.3/src/index/quadtree/DoubleBits.cpp \
	geos-3.6.3/src/index/quadtree/IntervalSize.cpp \
	geos-3.6.3/src/index/quadtree/Key.cpp \
	geos-3.6.3/src/index/quadtree/NodeBase.cpp \
	geos-3.6.3/src/index/quadtree/Node.cpp \
	geos-3.6.3/src/index/quadtree/Quadtree.cpp \
	geos-3.6.3/src/index/quadtree/Root.cpp \
	geos-3.6.3/src/index/strtree/AbstractNode.cpp \
	geos-3.6.3/src/index/strtree/AbstractSTRtree.cpp \
	geos-3.6.3/src/index/strtree/BoundablePair.cpp \
	geos-3.6.3/src/index/strtree/GeometryItemDistance.cpp \
	geos-3.6.3/src/index/strtree/Interval.cpp \
	geos-3.6.3/src/index/strtree/ItemBoundable.cpp \
	geos-3.6.3/src/index/strtree/SIRtree.cpp \
	geos-3.6.3/src/index/strtree/STRtree.cpp \
	geos-3.6.3/src/index/sweepline/SweepLineEvent.cpp \
	geos-3.6.3/src/index/sweepline/SweepLineIndex.cpp \
	geos-3.6.3/src/index/sweepline/SweepLineInterval.cpp \
	geos-3.6.3/src/inlines.cpp \
	geos-3.6.3/src/io/ByteOrderDataInStream.cpp \
	geos-3.6.3/src/io/ByteOrderValues.cpp \
	geos-3.6.3/src/io/CLocalizer.cpp \
	geos-3.6.3/src/io/ParseException.cpp \
	geos-3.6.3/src/io/StringTokenizer.cpp \
	geos-3.6.3/src/io/Unload.cpp \
	geos-3.6.3/src/io/WKBReader.cpp \
	geos-3.6.3/src/io/WKBWriter.cpp \
	geos-3.6.3/src/io/WKTReader.cpp \
	geos-3.6.3/src/io/WKTWriter.cpp \
	geos-3.6.3/src/io/Writer.cpp \
	geos-3.6.3/src/linearref/ExtractLineByLocation.cpp \
	geos-3.6.3/src/linearref/LengthIndexedLine.cpp \
	geos-3.6.3/src/linearref/LengthIndexOfPoint.cpp \
	geos-3.6.3/src/linearref/LengthLocationMap.cpp \
	geos-3.6.3/src/linearref/LinearGeometryBuilder.cpp \
	geos-3.6.3/src/linearref/LinearIterator.cpp \
	geos-3.6.3/src/linearref/LinearLocation.cpp \
	geos-3.6.3/src/linearref/LocationIndexOfLine.cpp \
	geos-3.6.3/src/linearref/LocationIndexOfPoint.cpp \
	geos-3.6.3/src/noding/BasicSegmentString.cpp \
	geos-3.6.3/src/noding/FastNodingValidator.cpp \
	geos-3.6.3/src/noding/FastSegmentSetIntersectionFinder.cpp \
	geos-3.6.3/src/noding/GeometryNoder.cpp \
	geos-3.6.3/src/noding/IntersectionAdder.cpp \
	geos-3.6.3/src/noding/IntersectionFinderAdder.cpp \
	geos-3.6.3/src/noding/IteratedNoder.cpp \
	geos-3.6.3/src/noding/MCIndexNoder.cpp \
	geos-3.6.3/src/noding/MCIndexSegmentSetMutualIntersector.cpp \
	geos-3.6.3/src/noding/NodedSegmentString.cpp \
	geos-3.6.3/src/noding/NodingValidator.cpp \
	geos-3.6.3/src/noding/Octant.cpp \
	geos-3.6.3/src/noding/OrientedCoordinateArray.cpp \
	geos-3.6.3/src/noding/ScaledNoder.cpp \
	geos-3.6.3/src/noding/SegmentIntersectionDetector.cpp \
	geos-3.6.3/src/noding/SegmentNode.cpp \
	geos-3.6.3/src/noding/SegmentNodeList.cpp \
	geos-3.6.3/src/noding/SegmentString.cpp \
	geos-3.6.3/src/noding/SegmentStringUtil.cpp \
	geos-3.6.3/src/noding/SimpleNoder.cpp \
	geos-3.6.3/src/noding/SingleInteriorIntersectionFinder.cpp \
	geos-3.6.3/src/noding/snapround/HotPixel.cpp \
	geos-3.6.3/src/noding/snapround/MCIndexPointSnapper.cpp \
	geos-3.6.3/src/noding/snapround/MCIndexSnapRounder.cpp \
	geos-3.6.3/src/noding/snapround/SimpleSnapRounder.cpp \
	geos-3.6.3/src/operation/buffer/BufferBuilder.cpp \
	geos-3.6.3/src/operation/buffer/BufferInputLineSimplifier.cpp \
	geos-3.6.3/src/operation/buffer/BufferOp.cpp \
	geos-3.6.3/src/operation/buffer/BufferParameters.cpp \
	geos-3.6.3/src/operation/buffer/BufferSubgraph.cpp \
	geos-3.6.3/src/operation/buffer/OffsetCurveBuilder.cpp \
	geos-3.6.3/src/operation/buffer/OffsetCurveSetBuilder.cpp \
	geos-3.6.3/src/operation/buffer/OffsetSegmentGenerator.cpp \
	geos-3.6.3/src/operation/buffer/RightmostEdgeFinder.cpp \
	geos-3.6.3/src/operation/buffer/SubgraphDepthLocater.cpp \
	geos-3.6.3/src/operation/distance/ConnectedElementLocationFilter.cpp \
	geos-3.6.3/src/operation/distance/ConnectedElementPointFilter.cpp \
	geos-3.6.3/src/operation/distance/DistanceOp.cpp \
	geos-3.6.3/src/operation/distance/FacetSequence.cpp \
	geos-3.6.3/src/operation/distance/FacetSequenceTreeBuilder.cpp \
	geos-3.6.3/src/operation/distance/GeometryLocation.cpp \
	geos-3.6.3/src/operation/GeometryGraphOperation.cpp \
	geos-3.6.3/src/operation/intersection/Rectangle.cpp \
	geos-3.6.3/src/operation/intersection/RectangleIntersectionBuilder.cpp \
	geos-3.6.3/src/operation/intersection/RectangleIntersection.cpp \
	geos-3.6.3/src/operation/IsSimpleOp.cpp \
	geos-3.6.3/src/operation/linemerge/EdgeString.cpp \
	geos-3.6.3/src/operation/linemerge/LineMergeDirectedEdge.cpp \
	geos-3.6.3/src/operation/linemerge/LineMergeEdge.cpp \
	geos-3.6.3/src/operation/linemerge/LineMergeGraph.cpp \
	geos-3.6.3/src/operation/linemerge/LineMerger.cpp \
	geos-3.6.3/src/operation/linemerge/LineSequencer.cpp \
	geos-3.6.3/src/operation/overlay/EdgeSetNoder.cpp \
	geos-3.6.3/src/operation/overlay/ElevationMatrixCell.cpp \
	geos-3.6.3/src/operation/overlay/ElevationMatrix.cpp \
	geos-3.6.3/src/operation/overlay/LineBuilder.cpp \
	geos-3.6.3/src/operation/overlay/MaximalEdgeRing.cpp \
	geos-3.6.3/src/operation/overlay/MinimalEdgeRing.cpp \
	geos-3.6.3/src/operation/overlay/OverlayNodeFactory.cpp \
	geos-3.6.3/src/operation/overlay/OverlayOp.cpp \
	geos-3.6.3/src/operation/overlay/PointBuilder.cpp \
	geos-3.6.3/src/operation/overlay/PolygonBuilder.cpp \
	geos-3.6.3/src/operation/overlay/snap/GeometrySnapper.cpp \
	geos-3.6.3/src/operation/overlay/snap/LineStringSnapper.cpp \
	geos-3.6.3/src/operation/overlay/snap/SnapIfNeededOverlayOp.cpp \
	geos-3.6.3/src/operation/overlay/snap/SnapOverlayOp.cpp \
	geos-3.6.3/src/operation/overlay/validate/FuzzyPointLocator.cpp \
	geos-3.6.3/src/operation/overlay/validate/OffsetPointGenerator.cpp \
	geos-3.6.3/src/operation/overlay/validate/OverlayResultValidator.cpp \
	geos-3.6.3/src/operation/polygonize/EdgeRing.cpp \
	geos-3.6.3/src/operation/polygonize/PolygonizeDirectedEdge.cpp \
	geos-3.6.3/src/operation/polygonize/PolygonizeEdge.cpp \
	geos-3.6.3/src/operation/polygonize/PolygonizeGraph.cpp \
	geos-3.6.3/src/operation/polygonize/Polygonizer.cpp \
	geos-3.6.3/src/operation/predicate/RectangleContains.cpp \
	geos-3.6.3/src/operation/predicate/RectangleIntersects.cpp \
	geos-3.6.3/src/operation/predicate/SegmentIntersectionTester.cpp \
	geos-3.6.3/src/operation/relate/EdgeEndBuilder.cpp \
	geos-3.6.3/src/operation/relate/EdgeEndBundle.cpp \
	geos-3.6.3/src/operation/relate/EdgeEndBundleStar.cpp \
	geos-3.6.3/src/operation/relate/RelateComputer.cpp \
	geos-3.6.3/src/operation/relate/RelateNode.cpp \
	geos-3.6.3/src/operation/relate/RelateNodeFactory.cpp \
	geos-3.6.3/src/operation/relate/RelateNodeGraph.cpp \
	geos-3.6.3/src/operation/relate/RelateOp.cpp \
	geos-3.6.3/src/operation/sharedpaths/SharedPathsOp.cpp \
	geos-3.6.3/src/operation/union/CascadedPolygonUnion.cpp \
	geos-3.6.3/src/operation/union/CascadedUnion.cpp \
	geos-3.6.3/src/operation/union/PointGeometryUnion.cpp \
	geos-3.6.3/src/operation/union/UnaryUnionOp.cpp \
	geos-3.6.3/src/operation/valid/ConnectedInteriorTester.cpp \
	geos-3.6.3/src/operation/valid/ConsistentAreaTester.cpp \
	geos-3.6.3/src/operation/valid/IndexedNestedRingTester.cpp \
	geos-3.6.3/src/operation/valid/IsValidOp.cpp \
	geos-3.6.3/src/operation/valid/QuadtreeNestedRingTester.cpp \
	geos-3.6.3/src/operation/valid/RepeatedPointTester.cpp \
	geos-3.6.3/src/operation/valid/SimpleNestedRingTester.cpp \
	geos-3.6.3/src/operation/valid/SweeplineNestedRingTester.cpp \
	geos-3.6.3/src/operation/valid/TopologyValidationError.cpp \
	geos-3.6.3/src/planargraph/algorithm/ConnectedSubgraphFinder.cpp \
	geos-3.6.3/src/planargraph/DirectedEdge.cpp \
	geos-3.6.3/src/planargraph/DirectedEdgeStar.cpp \
	geos-3.6.3/src/planargraph/Edge.cpp \
	geos-3.6.3/src/planargraph/Node.cpp \
	geos-3.6.3/src/planargraph/NodeMap.cpp \
	geos-3.6.3/src/planargraph/PlanarGraph.cpp \
	geos-3.6.3/src/planargraph/Subgraph.cpp \
	geos-3.6.3/src/precision/CommonBits.cpp \
	geos-3.6.3/src/precision/CommonBitsOp.cpp \
	geos-3.6.3/src/precision/CommonBitsRemover.cpp \
	geos-3.6.3/src/precision/EnhancedPrecisionOp.cpp \
	geos-3.6.3/src/precision/GeometryPrecisionReducer.cpp \
	geos-3.6.3/src/precision/MinimumClearance.cpp \
	geos-3.6.3/src/precision/PrecisionReducerCoordinateOperation.cpp \
	geos-3.6.3/src/precision/SimpleGeometryPrecisionReducer.cpp \
	geos-3.6.3/src/simplify/DouglasPeuckerLineSimplifier.cpp \
	geos-3.6.3/src/simplify/DouglasPeuckerSimplifier.cpp \
	geos-3.6.3/src/simplify/LineSegmentIndex.cpp \
	geos-3.6.3/src/simplify/TaggedLineSegment.cpp \
	geos-3.6.3/src/simplify/TaggedLinesSimplifier.cpp \
	geos-3.6.3/src/simplify/TaggedLineString.cpp \
	geos-3.6.3/src/simplify/TaggedLineStringSimplifier.cpp \
	geos-3.6.3/src/simplify/TopologyPreservingSimplifier.cpp \
	geos-3.6.3/src/triangulate/DelaunayTriangulationBuilder.cpp \
	geos-3.6.3/src/triangulate/IncrementalDelaunayTriangulator.cpp \
	geos-3.6.3/src/triangulate/quadedge/LastFoundQuadEdgeLocator.cpp \
	geos-3.6.3/src/triangulate/quadedge/LocateFailureException.cpp \
	geos-3.6.3/src/triangulate/quadedge/QuadEdge.cpp \
	geos-3.6.3/src/triangulate/quadedge/QuadEdgeLocator.cpp \
	geos-3.6.3/src/triangulate/quadedge/QuadEdgeSubdivision.cpp \
	geos-3.6.3/src/triangulate/quadedge/TrianglePredicate.cpp \
	geos-3.6.3/src/triangulate/quadedge/TriangleVisitor.cpp \
	geos-3.6.3/src/triangulate/quadedge/Vertex.cpp \
	geos-3.6.3/src/triangulate/VoronoiDiagramBuilder.cpp \
	geos-3.6.3/src/util/Assert.cpp \
	geos-3.6.3/src/util/GeometricShapeFactory.cpp \
	geos-3.6.3/src/util/Interrupt.cpp \
	geos-3.6.3/src/util/math.cpp \
	geos-3.6.3/src/util/Profiler.cpp 
include $(BUILD_STATIC_LIBRARY)