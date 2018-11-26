LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# ./configure --build=x86_64-pc-linux-gnu --host=arm-linux-eabi
LOCAL_MODULE    := mod_spatialite

# SQLite flags copied from ASOP
common_sqlite_flags := \
        -DHAVE_USLEEP=1 \
        -DSQLITE_DEFAULT_JOURNAL_SIZE_LIMIT=1048576 \
        -DSQLITE_THREADSAFE=1 \
        -DNDEBUG=1 \
        -DSQLITE_ENABLE_MEMORY_MANAGEMENT=1 \
        -DSQLITE_DEFAULT_AUTOVACUUM=1 \
        -DSQLITE_TEMP_STORE=3 \
        -DSQLITE_ENABLE_FTS3 \
        -DSQLITE_ENABLE_FTS3_BACKWARDS \
        -DSQLITE_DEFAULT_FILE_FORMAT=4 \
        -DSQLITE_ENABLE_RTREE=1 \
        -DSQLITE_OMIT_BUILTIN_TEST=1

# spatialite flags
spatialite_flags := \
	-DOMIT_FREEXL \
	-DOMIT_ICONV \
	-DOMIT_LIBXML2 \
	-DOMIT_RTTOPO \
	-Dfdatasync=fsync \
	-DLOADABLE_EXTENSION
        
LOCAL_CFLAGS    := \
	$(common_sqlite_flags) \
        $(spatialite_flags)
        
LOCAL_LDLIBS    := -llog -lz

LOCAL_C_INCLUDES := \
	$(SQLITE_PATH) \
	$(SPATIALITE_PATH) \
	$(SPATIALITE_PATH)/src/headers \
        $(GEOS_PATH)/include \
        $(GEOS_PATH)/capi \
        $(PROJ4_PATH)/src

LOCAL_SRC_FILES := \
 libspatialite-5.0.0-beta0/src/connection_cache/generator/code_generator.c \
 libspatialite-5.0.0-beta0/src/connection_cache/alloc_cache.c \
 libspatialite-5.0.0-beta0/src/connection_cache/gg_sequence.c \
 libspatialite-5.0.0-beta0/src/control_points/gaia_control_points.c \
 libspatialite-5.0.0-beta0/src/control_points/grass_crs3d.c \
 libspatialite-5.0.0-beta0/src/control_points/grass_georef.c \
 libspatialite-5.0.0-beta0/src/control_points/grass_georef_tps.c \
 libspatialite-5.0.0-beta0/src/cutter/gaia_cutter.c \
 libspatialite-5.0.0-beta0/src/dxf/dxf_load_distinct.c \
 libspatialite-5.0.0-beta0/src/dxf/dxf_loader.c \
 libspatialite-5.0.0-beta0/src/dxf/dxf_load_mixed.c \
 libspatialite-5.0.0-beta0/src/dxf/dxf_parser.c \
 libspatialite-5.0.0-beta0/src/dxf/dxf_writer.c \
 libspatialite-5.0.0-beta0/src/gaiaaux/gg_sqlaux.c \
 libspatialite-5.0.0-beta0/src/gaiaaux/gg_utf8.c \
 libspatialite-5.0.0-beta0/src/gaiaexif/gaia_exif.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_advanced.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_endian.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_ewkt.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_extras.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_geodesic.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_geoJSON.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_geometries.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_geoscvt.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_gml.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_kml.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_matrix.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_relations.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_relations_ext.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_rttopo.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_shape.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_transform.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_vanuatu.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_voronoj.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_wkb.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_wkt.c \
 libspatialite-5.0.0-beta0/src/gaiageo/gg_xml.c \
 libspatialite-5.0.0-beta0/src/geopackage/gaia_cvt_gpkg.c \
 libspatialite-5.0.0-beta0/src/geopackage/gpkgAddGeometryColumn.c \
 libspatialite-5.0.0-beta0/src/geopackage/gpkg_add_geometry_triggers.c \
 libspatialite-5.0.0-beta0/src/geopackage/gpkg_add_spatial_index.c \
 libspatialite-5.0.0-beta0/src/geopackage/gpkg_add_tile_triggers.c \
 libspatialite-5.0.0-beta0/src/geopackage/gpkgBinary.c \
 libspatialite-5.0.0-beta0/src/geopackage/gpkgCreateBaseTables.c \
 libspatialite-5.0.0-beta0/src/geopackage/gpkgCreateTilesTable.c \
 libspatialite-5.0.0-beta0/src/geopackage/gpkgCreateTilesZoomLevel.c \
 libspatialite-5.0.0-beta0/src/geopackage/gpkgGetImageType.c \
 libspatialite-5.0.0-beta0/src/geopackage/gpkg_get_normal_row.c \
 libspatialite-5.0.0-beta0/src/geopackage/gpkg_get_normal_zoom.c \
 libspatialite-5.0.0-beta0/src/geopackage/gpkgInsertEpsgSRID.c \
 libspatialite-5.0.0-beta0/src/geopackage/gpkgMakePoint.c \
 libspatialite-5.0.0-beta0/src/md5/gaia_md5.c \
 libspatialite-5.0.0-beta0/src/md5/md5.c \
 libspatialite-5.0.0-beta0/src/shapefiles/shapefiles.c \
 libspatialite-5.0.0-beta0/src/shapefiles/validator.c \
 libspatialite-5.0.0-beta0/src/spatialite/create_routing.c \
 libspatialite-5.0.0-beta0/src/spatialite/extra_tables.c \
 libspatialite-5.0.0-beta0/src/spatialite/mbrcache.c \
 libspatialite-5.0.0-beta0/src/spatialite/metatables.c \
 libspatialite-5.0.0-beta0/src/spatialite/se_helpers.c \
 libspatialite-5.0.0-beta0/src/spatialite/spatialite.c \
 libspatialite-5.0.0-beta0/src/spatialite/spatialite_init.c \
 libspatialite-5.0.0-beta0/src/spatialite/srid_aux.c \
 libspatialite-5.0.0-beta0/src/spatialite/statistics.c \
 libspatialite-5.0.0-beta0/src/spatialite/table_cloner.c \
 libspatialite-5.0.0-beta0/src/spatialite/virtualbbox.c \
 libspatialite-5.0.0-beta0/src/spatialite/virtualdbf.c \
 libspatialite-5.0.0-beta0/src/spatialite/virtualelementary.c \
 libspatialite-5.0.0-beta0/src/spatialite/virtualfdo.c \
 libspatialite-5.0.0-beta0/src/spatialite/virtualgpkg.c \
 libspatialite-5.0.0-beta0/src/spatialite/virtualknn.c \
 libspatialite-5.0.0-beta0/src/spatialite/virtualnetwork.c \
 libspatialite-5.0.0-beta0/src/spatialite/virtualrouting.c \
 libspatialite-5.0.0-beta0/src/spatialite/virtualshape.c \
 libspatialite-5.0.0-beta0/src/spatialite/virtualspatialindex.c \
 libspatialite-5.0.0-beta0/src/spatialite/virtualXL.c \
 libspatialite-5.0.0-beta0/src/spatialite/virtualxpath.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_00.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_01.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_02.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_03.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_04.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_05.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_06.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_07.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_08.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_09.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_10.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_11.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_12.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_13.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_14.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_15.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_16.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_17.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_18.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_19.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_20.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_21.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_22.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_23.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_24.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_25.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_26.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_27.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_28.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_29.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_30.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_31.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_32.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_33.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_34.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_35.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_36.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_37.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_38.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_39.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_40.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_41.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_42.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_43.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_44.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_45.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_46.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_47.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_48.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_49.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_50.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_51.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_extra.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_prussian.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_wgs84_00.c \
 libspatialite-5.0.0-beta0/src/srsinit/epsg_inlined_wgs84_01.c \
 libspatialite-5.0.0-beta0/src/srsinit/srs_init.c \
 libspatialite-5.0.0-beta0/src/stored_procedures/stored_procedures.c \
 libspatialite-5.0.0-beta0/src/topology/gaia_auxnet.c \
 libspatialite-5.0.0-beta0/src/topology/gaia_auxtopo.c \
 libspatialite-5.0.0-beta0/src/topology/gaia_auxtopo_table.c \
 libspatialite-5.0.0-beta0/src/topology/gaia_netstmts.c \
 libspatialite-5.0.0-beta0/src/topology/gaia_network.c \
 libspatialite-5.0.0-beta0/src/topology/gaia_topology.c \
 libspatialite-5.0.0-beta0/src/topology/gaia_topostmts.c \
 libspatialite-5.0.0-beta0/src/topology/lwn_network.c \
 libspatialite-5.0.0-beta0/src/topology/net_callbacks.c \
 libspatialite-5.0.0-beta0/src/topology/topo_callbacks.c \
 libspatialite-5.0.0-beta0/src/versioninfo/version.c \
 libspatialite-5.0.0-beta0/src/virtualtext/virtualtext.c \
 libspatialite-5.0.0-beta0/src/wfs/wfs_in.c

LOCAL_STATIC_LIBRARIES := proj geos sqlitex

include $(BUILD_SHARED_LIBRARY)
