LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# ./configure --build=x86_64-pc-linux-gnu --host=arm-linux-eabi
# find proj-5.2.0/ -name "*.c" | grep -Ev "tests|doc" | sort | awk '{ print "\t"$1" \\" }'
LOCAL_MODULE    := proj
LOCAL_C_INCLUDES := $(PROJ4_PATH)/src
LOCAL_LDLIBS := -lm
LOCAL_SRC_FILES := \
	proj-5.2.0/src/aasincos.c \
	proj-5.2.0/src/adjlon.c \
	proj-5.2.0/src/bch2bps.c \
	proj-5.2.0/src/bchgen.c \
	proj-5.2.0/src/biveval.c \
	proj-5.2.0/src/cct.c \
	proj-5.2.0/src/cs2cs.c \
	proj-5.2.0/src/dmstor.c \
	proj-5.2.0/src/emess.c \
	proj-5.2.0/src/gen_cheb.c \
	proj-5.2.0/src/geocent.c \
	proj-5.2.0/src/geod.c \
	proj-5.2.0/src/geodesic.c \
	proj-5.2.0/src/geod_interface.c \
	proj-5.2.0/src/geod_set.c \
	proj-5.2.0/src/geodtest.c \
	proj-5.2.0/src/gie.c \
	proj-5.2.0/src/jniproj.c \
	proj-5.2.0/src/mk_cheby.c \
	proj-5.2.0/src/multistresstest.c \
	proj-5.2.0/src/nad2bin.c \
	proj-5.2.0/src/nad_cvt.c \
	proj-5.2.0/src/nad_init.c \
	proj-5.2.0/src/nad_intr.c \
	proj-5.2.0/src/PJ_aea.c \
	proj-5.2.0/src/PJ_aeqd.c \
	proj-5.2.0/src/PJ_airy.c \
	proj-5.2.0/src/PJ_aitoff.c \
	proj-5.2.0/src/pj_apply_gridshift.c \
	proj-5.2.0/src/pj_apply_vgridshift.c \
	proj-5.2.0/src/PJ_august.c \
	proj-5.2.0/src/pj_auth.c \
	proj-5.2.0/src/PJ_axisswap.c \
	proj-5.2.0/src/PJ_bacon.c \
	proj-5.2.0/src/PJ_bipc.c \
	proj-5.2.0/src/PJ_boggs.c \
	proj-5.2.0/src/PJ_bonne.c \
	proj-5.2.0/src/PJ_calcofi.c \
	proj-5.2.0/src/PJ_cart.c \
	proj-5.2.0/src/PJ_cass.c \
	proj-5.2.0/src/PJ_cc.c \
	proj-5.2.0/src/PJ_ccon.c \
	proj-5.2.0/src/PJ_cea.c \
	proj-5.2.0/src/PJ_chamb.c \
	proj-5.2.0/src/PJ_collg.c \
	proj-5.2.0/src/PJ_comill.c \
	proj-5.2.0/src/PJ_crast.c \
	proj-5.2.0/src/pj_ctx.c \
	proj-5.2.0/src/pj_datums.c \
	proj-5.2.0/src/pj_datum_set.c \
	proj-5.2.0/src/PJ_deformation.c \
	proj-5.2.0/src/PJ_denoy.c \
	proj-5.2.0/src/pj_deriv.c \
	proj-5.2.0/src/PJ_eck1.c \
	proj-5.2.0/src/PJ_eck2.c \
	proj-5.2.0/src/PJ_eck3.c \
	proj-5.2.0/src/PJ_eck4.c \
	proj-5.2.0/src/PJ_eck5.c \
	proj-5.2.0/src/pj_ellps.c \
	proj-5.2.0/src/pj_ell_set.c \
	proj-5.2.0/src/PJ_eqc.c \
	proj-5.2.0/src/PJ_eqdc.c \
	proj-5.2.0/src/PJ_eqearth.c \
	proj-5.2.0/src/pj_errno.c \
	proj-5.2.0/src/pj_factors.c \
	proj-5.2.0/src/PJ_fahey.c \
	proj-5.2.0/src/pj_fileapi.c \
	proj-5.2.0/src/PJ_fouc_s.c \
	proj-5.2.0/src/pj_fwd.c \
	proj-5.2.0/src/PJ_gall.c \
	proj-5.2.0/src/pj_gauss.c \
	proj-5.2.0/src/pj_gc_reader.c \
	proj-5.2.0/src/PJ_geoc.c \
	proj-5.2.0/src/pj_geocent.c \
	proj-5.2.0/src/PJ_geos.c \
	proj-5.2.0/src/PJ_gins8.c \
	proj-5.2.0/src/PJ_gnom.c \
	proj-5.2.0/src/PJ_gn_sinu.c \
	proj-5.2.0/src/PJ_goode.c \
	proj-5.2.0/src/pj_gridcatalog.c \
	proj-5.2.0/src/pj_gridinfo.c \
	proj-5.2.0/src/pj_gridlist.c \
	proj-5.2.0/src/PJ_gstmerc.c \
	proj-5.2.0/src/PJ_hammer.c \
	proj-5.2.0/src/PJ_hatano.c \
	proj-5.2.0/src/PJ_healpix.c \
	proj-5.2.0/src/PJ_helmert.c \
	proj-5.2.0/src/PJ_hgridshift.c \
	proj-5.2.0/src/PJ_horner.c \
	proj-5.2.0/src/PJ_igh.c \
	proj-5.2.0/src/PJ_imw_p.c \
	proj-5.2.0/src/pj_init.c \
	proj-5.2.0/src/pj_initcache.c \
	proj-5.2.0/src/pj_internal.c \
	proj-5.2.0/src/pj_inv.c \
	proj-5.2.0/src/PJ_isea.c \
	proj-5.2.0/src/PJ_krovak.c \
	proj-5.2.0/src/PJ_labrd.c \
	proj-5.2.0/src/PJ_laea.c \
	proj-5.2.0/src/PJ_lagrng.c \
	proj-5.2.0/src/PJ_larr.c \
	proj-5.2.0/src/PJ_lask.c \
	proj-5.2.0/src/PJ_latlong.c \
	proj-5.2.0/src/PJ_lcca.c \
	proj-5.2.0/src/PJ_lcc.c \
	proj-5.2.0/src/pj_list.c \
	proj-5.2.0/src/pj_log.c \
	proj-5.2.0/src/PJ_loxim.c \
	proj-5.2.0/src/PJ_lsat.c \
	proj-5.2.0/src/pj_malloc.c \
	proj-5.2.0/src/pj_math.c \
	proj-5.2.0/src/PJ_mbtfpp.c \
	proj-5.2.0/src/PJ_mbtfpq.c \
	proj-5.2.0/src/PJ_mbt_fps.c \
	proj-5.2.0/src/PJ_merc.c \
	proj-5.2.0/src/PJ_mill.c \
	proj-5.2.0/src/PJ_misrsom.c \
	proj-5.2.0/src/pj_mlfn.c \
	proj-5.2.0/src/PJ_mod_ster.c \
	proj-5.2.0/src/PJ_moll.c \
	proj-5.2.0/src/PJ_molodensky.c \
	proj-5.2.0/src/pj_msfn.c \
	proj-5.2.0/src/pj_mutex.c \
	proj-5.2.0/src/PJ_natearth2.c \
	proj-5.2.0/src/PJ_natearth.c \
	proj-5.2.0/src/PJ_nell.c \
	proj-5.2.0/src/PJ_nell_h.c \
	proj-5.2.0/src/PJ_nocol.c \
	proj-5.2.0/src/PJ_nsper.c \
	proj-5.2.0/src/PJ_nzmg.c \
	proj-5.2.0/src/PJ_ob_tran.c \
	proj-5.2.0/src/PJ_ocea.c \
	proj-5.2.0/src/PJ_oea.c \
	proj-5.2.0/src/PJ_omerc.c \
	proj-5.2.0/src/pj_open_lib.c \
	proj-5.2.0/src/PJ_ortho.c \
	proj-5.2.0/src/pj_param.c \
	proj-5.2.0/src/PJ_patterson.c \
	proj-5.2.0/src/pj_phi2.c \
	proj-5.2.0/src/PJ_pipeline.c \
	proj-5.2.0/src/PJ_poly.c \
	proj-5.2.0/src/pj_pr_list.c \
	proj-5.2.0/src/PJ_putp2.c \
	proj-5.2.0/src/PJ_putp3.c \
	proj-5.2.0/src/PJ_putp4p.c \
	proj-5.2.0/src/PJ_putp5.c \
	proj-5.2.0/src/PJ_putp6.c \
	proj-5.2.0/src/PJ_qsc.c \
	proj-5.2.0/src/pj_qsfn.c \
	proj-5.2.0/src/pj_release.c \
	proj-5.2.0/src/PJ_robin.c \
	proj-5.2.0/src/PJ_rpoly.c \
	proj-5.2.0/src/PJ_sch.c \
	proj-5.2.0/src/PJ_sconics.c \
	proj-5.2.0/src/PJ_somerc.c \
	proj-5.2.0/src/PJ_sterea.c \
	proj-5.2.0/src/PJ_stere.c \
	proj-5.2.0/src/pj_strerrno.c \
	proj-5.2.0/src/pj_strtod.c \
	proj-5.2.0/src/PJ_sts.c \
	proj-5.2.0/src/PJ_tcc.c \
	proj-5.2.0/src/PJ_tcea.c \
	proj-5.2.0/src/PJ_times.c \
	proj-5.2.0/src/PJ_tmerc.c \
	proj-5.2.0/src/PJ_tpeqd.c \
	proj-5.2.0/src/pj_transform.c \
	proj-5.2.0/src/pj_tsfn.c \
	proj-5.2.0/src/PJ_unitconvert.c \
	proj-5.2.0/src/pj_units.c \
	proj-5.2.0/src/PJ_urm5.c \
	proj-5.2.0/src/PJ_urmfps.c \
	proj-5.2.0/src/pj_utils.c \
	proj-5.2.0/src/PJ_vandg2.c \
	proj-5.2.0/src/PJ_vandg4.c \
	proj-5.2.0/src/PJ_vandg.c \
	proj-5.2.0/src/PJ_vgridshift.c \
	proj-5.2.0/src/PJ_wag2.c \
	proj-5.2.0/src/PJ_wag3.c \
	proj-5.2.0/src/PJ_wag7.c \
	proj-5.2.0/src/PJ_wink1.c \
	proj-5.2.0/src/PJ_wink2.c \
	proj-5.2.0/src/pj_zpoly1.c \
	proj-5.2.0/src/proj_4D_api.c \
	proj-5.2.0/src/proj.c \
	proj-5.2.0/src/proj_etmerc.c \
	proj-5.2.0/src/proj_mdist.c \
	proj-5.2.0/src/proj_rouss.c \
	proj-5.2.0/src/proj_strtod.c \
	proj-5.2.0/src/p_series.c \
	proj-5.2.0/src/rtodms.c \
	proj-5.2.0/src/test228.c \
	proj-5.2.0/src/vector1.c 
include $(BUILD_STATIC_LIBRARY)
