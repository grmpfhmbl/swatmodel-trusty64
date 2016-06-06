#Generated using GenerateMakefile by Zhiqiang Yu, hawklorry@gmail.com
#Saturday, February 08, 2014 10:18:22 AM
#

#Define compiler
CC=gcc
FC=gfortran

#C Flag, remove -Wall if don't want to all the warning information
CFLAG=-c -fmessage-length=0
#Fortran Flag, remove -Wall if don't want to all the warning information
FFLAG=-c -fmessage-length=0 -funderscoring -fbacktrace -ffpe-trap=invalid,zero,overflow -Wall
#Dedug Flag
DFLAG=-O0 -g -fbounds-check -Wextra
#Release Flag
RFLAG=-O3
#Flag for long fix fortran codes, used for some special fortran files
LONGFIX=-ffixed-line-length-132
#Flag for long free fortran codes, used for some special fortran files
LONGFREE=-ffree-line-length-200
#Flag for target machine architecture.
#Note: MinGW doesn't support 64-bit architecture. Replace -m64 with empty string instead.
ARCH32=-m32
ARCH64=-m64

all: debug32 debug64 rel32 rel64

clean: debug32_clean debug64_clean rel32_clean rel64_clean
	rm -rf dist/


OBJECTS_DEBUG32=dist/debug32/addh.o dist/debug32/albedo.o dist/debug32/allocate_parms.o dist/debug32/alph.o dist/debug32/anfert.o dist/debug32/apex_day.o dist/debug32/apply.o dist/debug32/ascrv.o dist/debug32/atri.o dist/debug32/aunif.o dist/debug32/autoirr.o dist/debug32/aveval.o dist/debug32/bacteria.o dist/debug32/biofilm.o dist/debug32/biozone.o dist/debug32/bmpfixed.o dist/debug32/bmpinit.o dist/debug32/bmp_det_pond.o dist/debug32/bmp_ri_pond.o dist/debug32/bmp_sand_filter.o dist/debug32/bmp_sed_pond.o dist/debug32/bmp_wet_pond.o dist/debug32/buffer.o dist/debug32/burnop.o dist/debug32/canopyint.o dist/debug32/caps.o dist/debug32/carbon_new.o dist/debug32/carbon_zhang2.o dist/debug32/cfactor.o dist/debug32/chkcst.o dist/debug32/clgen.o dist/debug32/clicon.o dist/debug32/command.o dist/debug32/conapply.o dist/debug32/confert.o dist/debug32/crackflow.o dist/debug32/crackvol.o dist/debug32/curno.o dist/debug32/dailycn.o dist/debug32/decay.o dist/debug32/depstor.o dist/debug32/distrib_bmps.o dist/debug32/dormant.o dist/debug32/drains.o dist/debug32/dstn1.o dist/debug32/ee.o dist/debug32/eiusle.o dist/debug32/enrsb.o dist/debug32/erfc.o dist/debug32/estimate_ksat.o dist/debug32/etact.o dist/debug32/etpot.o dist/debug32/expo.o dist/debug32/fert.o dist/debug32/filter.o dist/debug32/filtw.o dist/debug32/finalbal.o dist/debug32/gcycl.o dist/debug32/getallo.o dist/debug32/grass_wway.o dist/debug32/graze.o dist/debug32/grow.o dist/debug32/gwmod.o dist/debug32/gwmod_deep.o dist/debug32/gwnutr.o dist/debug32/gw_no3.o dist/debug32/h2omgt_init.o dist/debug32/harvestop.o dist/debug32/harvgrainop.o dist/debug32/harvkillop.o dist/debug32/header.o dist/debug32/headout.o dist/debug32/hhnoqual.o dist/debug32/hhwatqual.o dist/debug32/hmeas.o dist/debug32/hruaa.o dist/debug32/hruallo.o dist/debug32/hruday.o dist/debug32/hrumon.o dist/debug32/hrupond.o dist/debug32/hrupondhr.o dist/debug32/hruyr.o dist/debug32/hydroinit.o dist/debug32/icl.o dist/debug32/impndaa.o dist/debug32/impndday.o dist/debug32/impndmon.o dist/debug32/impndyr.o dist/debug32/impnd_init.o dist/debug32/irrigate.o dist/debug32/irrsub.o dist/debug32/irr_rch.o dist/debug32/irr_res.o dist/debug32/jdt.o dist/debug32/killop.o dist/debug32/lakeq.o dist/debug32/latsed.o dist/debug32/layersplit.o dist/debug32/lwqdef.o dist/debug32/main.o dist/debug32/ncsed_leach.o dist/debug32/ndenit.o dist/debug32/newtillmix.o dist/debug32/nfix.o dist/debug32/nitvol.o dist/debug32/nlch.o dist/debug32/nminrl.o dist/debug32/noqual.o dist/debug32/npup.o dist/debug32/nrain.o dist/debug32/nup.o dist/debug32/nuts.o dist/debug32/openwth.o dist/debug32/operatn.o dist/debug32/orgn.o dist/debug32/orgncswat.o dist/debug32/origtile.o dist/debug32/ovr_sed.o dist/debug32/percmacro.o dist/debug32/percmain.o dist/debug32/percmicro.o dist/debug32/pestlch.o dist/debug32/pestw.o dist/debug32/pesty.o dist/debug32/pgen.o dist/debug32/pgenhr.o dist/debug32/pkq.o dist/debug32/plantmod.o dist/debug32/plantop.o dist/debug32/pmeas.o dist/debug32/pminrl.o dist/debug32/pminrl2.o dist/debug32/pond.o dist/debug32/pondhr.o dist/debug32/pothole.o dist/debug32/potholehr.o dist/debug32/print_hyd.o dist/debug32/psed.o dist/debug32/qman.o dist/debug32/ran1.o dist/debug32/rchaa.o dist/debug32/rchday.o dist/debug32/rchinit.o dist/debug32/rchmon.o dist/debug32/rchuse.o dist/debug32/rchyr.o dist/debug32/reachout.o dist/debug32/readatmodep.o dist/debug32/readbsn.o dist/debug32/readchm.o dist/debug32/readcnst.o dist/debug32/readfcst.o dist/debug32/readfert.o dist/debug32/readfig.o dist/debug32/readfile.o dist/debug32/readgw.o dist/debug32/readhru.o dist/debug32/readinpt.o dist/debug32/readlup.o dist/debug32/readlwq.o dist/debug32/readmgt.o dist/debug32/readmon.o dist/debug32/readops.o dist/debug32/readpest.o dist/debug32/readplant.o dist/debug32/readpnd.o dist/debug32/readres.o dist/debug32/readrte.o dist/debug32/readru.o dist/debug32/readsdr.o dist/debug32/readsepticbz.o dist/debug32/readseptwq.o dist/debug32/readsno.o dist/debug32/readsol.o dist/debug32/readsub.o dist/debug32/readswq.o dist/debug32/readtill.o dist/debug32/readurban.o dist/debug32/readwgn.o dist/debug32/readwus.o dist/debug32/readwwq.o dist/debug32/readyr.o dist/debug32/reccnst.o dist/debug32/recday.o dist/debug32/rechour.o dist/debug32/recmon.o dist/debug32/recyear.o dist/debug32/regres.o dist/debug32/res.o dist/debug32/resbact.o dist/debug32/resetlu.o dist/debug32/reshr.o dist/debug32/resinit.o dist/debug32/resnut.o dist/debug32/rewind_init.o dist/debug32/rhgen.o dist/debug32/rootfr.o dist/debug32/route.o dist/debug32/routels.o dist/debug32/routeunit.o dist/debug32/routres.o dist/debug32/rsedaa.o dist/debug32/rseday.o dist/debug32/rsedmon.o dist/debug32/rsedyr.o dist/debug32/rtbact.o dist/debug32/rtday.o dist/debug32/rteinit.o dist/debug32/rthmusk.o dist/debug32/rthpest.o dist/debug32/rthr.o dist/debug32/rthsed.o dist/debug32/rtmusk.o dist/debug32/rtout.o dist/debug32/rtpest.o dist/debug32/rtsed.o dist/debug32/rtsed_bagnold.o dist/debug32/rtsed_kodatie.o dist/debug32/rtsed_molinas_wu.o dist/debug32/rtsed_yangsand.o dist/debug32/sat_excess.o dist/debug32/save.o dist/debug32/saveconc.o dist/debug32/schedule_ops.o dist/debug32/sched_mgt.o dist/debug32/simulate.o dist/debug32/sim_initday.o dist/debug32/sim_inityr.o dist/debug32/slrgen.o dist/debug32/smeas.o dist/debug32/snom.o dist/debug32/soil_chem.o dist/debug32/soil_par.o dist/debug32/soil_phys.o dist/debug32/soil_write.o dist/debug32/solp.o dist/debug32/solt.o dist/debug32/std1.o dist/debug32/std2.o dist/debug32/std3.o dist/debug32/stdaa.o dist/debug32/storeinitial.o dist/debug32/structure.o dist/debug32/subaa.o dist/debug32/subbasin.o dist/debug32/subday.o dist/debug32/submon.o dist/debug32/substor.o dist/debug32/subwq.o dist/debug32/subyr.o dist/debug32/sub_subbasin.o dist/debug32/sumhyd.o dist/debug32/sumv.o dist/debug32/surface.o dist/debug32/surfstor.o dist/debug32/surfst_h2o.o dist/debug32/surq_daycn.o dist/debug32/surq_greenampt.o dist/debug32/swbl.o dist/debug32/sweep.o dist/debug32/swu.o dist/debug32/tair.o dist/debug32/tgen.o dist/debug32/theta.o dist/debug32/tillfactor.o dist/debug32/tillmix.o dist/debug32/tmeas.o dist/debug32/tran.o dist/debug32/transfer.o dist/debug32/tstr.o dist/debug32/ttcoef.o dist/debug32/ttcoef_wway.o dist/debug32/urban.o dist/debug32/urbanhr.o dist/debug32/urb_bmp.o dist/debug32/varinit.o dist/debug32/vbl.o dist/debug32/virtual.o dist/debug32/volq.o dist/debug32/washp.o dist/debug32/watbal.o dist/debug32/water_hru.o dist/debug32/watqual.o dist/debug32/watqual2.o dist/debug32/wattable.o dist/debug32/watuse.o dist/debug32/weatgn.o dist/debug32/wetlan.o dist/debug32/wmeas.o dist/debug32/wndgen.o dist/debug32/writea.o dist/debug32/writeaa.o dist/debug32/writed.o dist/debug32/writem.o dist/debug32/xmon.o dist/debug32/ysed.o dist/debug32/zero0.o dist/debug32/zero1.o dist/debug32/zero2.o dist/debug32/zeroini.o dist/debug32/zero_urbn.o

NAMEDEBUG32=swat_debug32
debug32:debug32_mkdir ${NAMEDEBUG32}

debug32_mkdir:
	mkdir -p dist/debug32

${NAMEDEBUG32}: ${OBJECTS_DEBUG32}
	${FC} ${OBJECTS_DEBUG32} ${ARCH32} -static -o dist/${NAMEDEBUG32}

dist/debug32/addh.o: src/addh.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/addh.f -o dist/debug32/addh.o -I dist/debug32

dist/debug32/albedo.o: src/albedo.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/albedo.f -o dist/debug32/albedo.o -I dist/debug32

dist/debug32/allocate_parms.o: src/allocate_parms.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/allocate_parms.f -o dist/debug32/allocate_parms.o -I dist/debug32

dist/debug32/alph.o: src/alph.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/alph.f -o dist/debug32/alph.o -I dist/debug32

dist/debug32/anfert.o: src/anfert.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/anfert.f -o dist/debug32/anfert.o -I dist/debug32

dist/debug32/apex_day.o: src/apex_day.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/apex_day.f -o dist/debug32/apex_day.o -I dist/debug32

dist/debug32/apply.o: src/apply.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/apply.f -o dist/debug32/apply.o -I dist/debug32

dist/debug32/ascrv.o: src/ascrv.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/ascrv.f -o dist/debug32/ascrv.o -I dist/debug32

dist/debug32/atri.o: src/atri.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/atri.f -o dist/debug32/atri.o -I dist/debug32

dist/debug32/aunif.o: src/aunif.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/aunif.f -o dist/debug32/aunif.o -I dist/debug32

dist/debug32/autoirr.o: src/autoirr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/autoirr.f -o dist/debug32/autoirr.o -I dist/debug32

dist/debug32/aveval.o: src/aveval.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/aveval.f -o dist/debug32/aveval.o -I dist/debug32

dist/debug32/bacteria.o: src/bacteria.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/bacteria.f -o dist/debug32/bacteria.o -I dist/debug32

dist/debug32/biofilm.o: src/biofilm.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/biofilm.f -o dist/debug32/biofilm.o -I dist/debug32

dist/debug32/biozone.o: src/biozone.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG} ${LONGFIX} src/biozone.f -o dist/debug32/biozone.o -I dist/debug32

dist/debug32/bmpfixed.o: src/bmpfixed.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/bmpfixed.f -o dist/debug32/bmpfixed.o -I dist/debug32

dist/debug32/bmpinit.o: src/bmpinit.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG} ${LONGFIX} src/bmpinit.f -o dist/debug32/bmpinit.o -I dist/debug32

dist/debug32/bmp_det_pond.o: src/bmp_det_pond.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/bmp_det_pond.f -o dist/debug32/bmp_det_pond.o -I dist/debug32

dist/debug32/bmp_ri_pond.o: src/bmp_ri_pond.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/bmp_ri_pond.f -o dist/debug32/bmp_ri_pond.o -I dist/debug32

dist/debug32/bmp_sand_filter.o: src/bmp_sand_filter.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/bmp_sand_filter.f -o dist/debug32/bmp_sand_filter.o -I dist/debug32

dist/debug32/bmp_sed_pond.o: src/bmp_sed_pond.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/bmp_sed_pond.f -o dist/debug32/bmp_sed_pond.o -I dist/debug32

dist/debug32/bmp_wet_pond.o: src/bmp_wet_pond.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/bmp_wet_pond.f -o dist/debug32/bmp_wet_pond.o -I dist/debug32

dist/debug32/buffer.o: src/buffer.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/buffer.f -o dist/debug32/buffer.o -I dist/debug32

dist/debug32/burnop.o: src/burnop.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/burnop.f -o dist/debug32/burnop.o -I dist/debug32

dist/debug32/canopyint.o: src/canopyint.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/canopyint.f -o dist/debug32/canopyint.o -I dist/debug32

dist/debug32/caps.o: src/caps.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/caps.f -o dist/debug32/caps.o -I dist/debug32

dist/debug32/carbon_new.o: src/carbon_new.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/carbon_new.f -o dist/debug32/carbon_new.o -I dist/debug32

dist/debug32/carbon_zhang2.o: src/carbon_zhang2.f90 dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG} ${LONGFREE} src/carbon_zhang2.f90 -o dist/debug32/carbon_zhang2.o -I dist/debug32

dist/debug32/cfactor.o: src/cfactor.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/cfactor.f -o dist/debug32/cfactor.o -I dist/debug32

dist/debug32/chkcst.o: src/chkcst.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/chkcst.f -o dist/debug32/chkcst.o -I dist/debug32

dist/debug32/clgen.o: src/clgen.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/clgen.f -o dist/debug32/clgen.o -I dist/debug32

dist/debug32/clicon.o: src/clicon.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/clicon.f -o dist/debug32/clicon.o -I dist/debug32

dist/debug32/command.o: src/command.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/command.f -o dist/debug32/command.o -I dist/debug32

dist/debug32/conapply.o: src/conapply.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/conapply.f -o dist/debug32/conapply.o -I dist/debug32

dist/debug32/confert.o: src/confert.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/confert.f -o dist/debug32/confert.o -I dist/debug32

dist/debug32/crackflow.o: src/crackflow.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/crackflow.f -o dist/debug32/crackflow.o -I dist/debug32

dist/debug32/crackvol.o: src/crackvol.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/crackvol.f -o dist/debug32/crackvol.o -I dist/debug32

dist/debug32/curno.o: src/curno.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/curno.f -o dist/debug32/curno.o -I dist/debug32

dist/debug32/dailycn.o: src/dailycn.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/dailycn.f -o dist/debug32/dailycn.o -I dist/debug32

dist/debug32/decay.o: src/decay.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/decay.f -o dist/debug32/decay.o -I dist/debug32

dist/debug32/depstor.o: src/depstor.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/depstor.f -o dist/debug32/depstor.o -I dist/debug32

dist/debug32/distrib_bmps.o: src/distrib_bmps.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/distrib_bmps.f -o dist/debug32/distrib_bmps.o -I dist/debug32

dist/debug32/dormant.o: src/dormant.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/dormant.f -o dist/debug32/dormant.o -I dist/debug32

dist/debug32/drains.o: src/drains.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/drains.f -o dist/debug32/drains.o -I dist/debug32

dist/debug32/dstn1.o: src/dstn1.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/dstn1.f -o dist/debug32/dstn1.o -I dist/debug32

dist/debug32/ee.o: src/ee.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/ee.f -o dist/debug32/ee.o -I dist/debug32

dist/debug32/eiusle.o: src/eiusle.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/eiusle.f -o dist/debug32/eiusle.o -I dist/debug32

dist/debug32/enrsb.o: src/enrsb.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/enrsb.f -o dist/debug32/enrsb.o -I dist/debug32

dist/debug32/erfc.o: src/erfc.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/erfc.f -o dist/debug32/erfc.o -I dist/debug32

dist/debug32/estimate_ksat.o: src/estimate_ksat.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/estimate_ksat.f -o dist/debug32/estimate_ksat.o -I dist/debug32

dist/debug32/etact.o: src/etact.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/etact.f -o dist/debug32/etact.o -I dist/debug32

dist/debug32/etpot.o: src/etpot.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/etpot.f -o dist/debug32/etpot.o -I dist/debug32

dist/debug32/expo.o: src/expo.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/expo.f -o dist/debug32/expo.o -I dist/debug32

dist/debug32/fert.o: src/fert.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/fert.f -o dist/debug32/fert.o -I dist/debug32

dist/debug32/filter.o: src/filter.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/filter.f -o dist/debug32/filter.o -I dist/debug32

dist/debug32/filtw.o: src/filtw.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/filtw.f -o dist/debug32/filtw.o -I dist/debug32

dist/debug32/finalbal.o: src/finalbal.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/finalbal.f -o dist/debug32/finalbal.o -I dist/debug32

dist/debug32/gcycl.o: src/gcycl.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/gcycl.f -o dist/debug32/gcycl.o -I dist/debug32

dist/debug32/getallo.o: src/getallo.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/getallo.f -o dist/debug32/getallo.o -I dist/debug32

dist/debug32/grass_wway.o: src/grass_wway.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/grass_wway.f -o dist/debug32/grass_wway.o -I dist/debug32

dist/debug32/graze.o: src/graze.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/graze.f -o dist/debug32/graze.o -I dist/debug32

dist/debug32/grow.o: src/grow.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/grow.f -o dist/debug32/grow.o -I dist/debug32

dist/debug32/gwmod.o: src/gwmod.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/gwmod.f -o dist/debug32/gwmod.o -I dist/debug32

dist/debug32/gwmod_deep.o: src/gwmod_deep.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/gwmod_deep.f -o dist/debug32/gwmod_deep.o -I dist/debug32

dist/debug32/gwnutr.o: src/gwnutr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/gwnutr.f -o dist/debug32/gwnutr.o -I dist/debug32

dist/debug32/gw_no3.o: src/gw_no3.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/gw_no3.f -o dist/debug32/gw_no3.o -I dist/debug32

dist/debug32/h2omgt_init.o: src/h2omgt_init.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/h2omgt_init.f -o dist/debug32/h2omgt_init.o -I dist/debug32

dist/debug32/harvestop.o: src/harvestop.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/harvestop.f -o dist/debug32/harvestop.o -I dist/debug32

dist/debug32/harvgrainop.o: src/harvgrainop.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/harvgrainop.f -o dist/debug32/harvgrainop.o -I dist/debug32

dist/debug32/harvkillop.o: src/harvkillop.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/harvkillop.f -o dist/debug32/harvkillop.o -I dist/debug32

dist/debug32/header.o: src/header.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/header.f -o dist/debug32/header.o -I dist/debug32

dist/debug32/headout.o: src/headout.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/headout.f -o dist/debug32/headout.o -I dist/debug32

dist/debug32/hhnoqual.o: src/hhnoqual.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/hhnoqual.f -o dist/debug32/hhnoqual.o -I dist/debug32

dist/debug32/hhwatqual.o: src/hhwatqual.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/hhwatqual.f -o dist/debug32/hhwatqual.o -I dist/debug32

dist/debug32/hmeas.o: src/hmeas.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/hmeas.f -o dist/debug32/hmeas.o -I dist/debug32

dist/debug32/hruaa.o: src/hruaa.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/hruaa.f -o dist/debug32/hruaa.o -I dist/debug32

dist/debug32/hruallo.o: src/hruallo.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/hruallo.f -o dist/debug32/hruallo.o -I dist/debug32

dist/debug32/hruday.o: src/hruday.f90 dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/hruday.f90 -o dist/debug32/hruday.o -I dist/debug32

dist/debug32/hrumon.o: src/hrumon.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/hrumon.f -o dist/debug32/hrumon.o -I dist/debug32

dist/debug32/hrupond.o: src/hrupond.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/hrupond.f -o dist/debug32/hrupond.o -I dist/debug32

dist/debug32/hrupondhr.o: src/hrupondhr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/hrupondhr.f -o dist/debug32/hrupondhr.o -I dist/debug32

dist/debug32/hruyr.o: src/hruyr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/hruyr.f -o dist/debug32/hruyr.o -I dist/debug32

dist/debug32/hydroinit.o: src/hydroinit.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/hydroinit.f -o dist/debug32/hydroinit.o -I dist/debug32

dist/debug32/icl.o: src/icl.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/icl.f -o dist/debug32/icl.o -I dist/debug32

dist/debug32/impndaa.o: src/impndaa.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/impndaa.f -o dist/debug32/impndaa.o -I dist/debug32

dist/debug32/impndday.o: src/impndday.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/impndday.f -o dist/debug32/impndday.o -I dist/debug32

dist/debug32/impndmon.o: src/impndmon.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/impndmon.f -o dist/debug32/impndmon.o -I dist/debug32

dist/debug32/impndyr.o: src/impndyr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/impndyr.f -o dist/debug32/impndyr.o -I dist/debug32

dist/debug32/impnd_init.o: src/impnd_init.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/impnd_init.f -o dist/debug32/impnd_init.o -I dist/debug32

dist/debug32/irrigate.o: src/irrigate.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/irrigate.f -o dist/debug32/irrigate.o -I dist/debug32

dist/debug32/irrsub.o: src/irrsub.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/irrsub.f -o dist/debug32/irrsub.o -I dist/debug32

dist/debug32/irr_rch.o: src/irr_rch.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/irr_rch.f -o dist/debug32/irr_rch.o -I dist/debug32

dist/debug32/irr_res.o: src/irr_res.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/irr_res.f -o dist/debug32/irr_res.o -I dist/debug32

dist/debug32/jdt.o: src/jdt.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/jdt.f -o dist/debug32/jdt.o -I dist/debug32

dist/debug32/killop.o: src/killop.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/killop.f -o dist/debug32/killop.o -I dist/debug32

dist/debug32/lakeq.o: src/lakeq.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/lakeq.f -o dist/debug32/lakeq.o -I dist/debug32

dist/debug32/latsed.o: src/latsed.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/latsed.f -o dist/debug32/latsed.o -I dist/debug32

dist/debug32/layersplit.o: src/layersplit.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/layersplit.f -o dist/debug32/layersplit.o -I dist/debug32

dist/debug32/lwqdef.o: src/lwqdef.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/lwqdef.f -o dist/debug32/lwqdef.o -I dist/debug32

dist/debug32/main.o: src/main.f src/modparm.f
	${FC} ${ARCH32} ${FFLAG} ${DFLAG} ${LONGFIX} src/main.f -o dist/debug32/main.o -J dist/debug32

dist/debug32/ncsed_leach.o: src/NCsed_leach.f90 dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/NCsed_leach.f90 -o dist/debug32/ncsed_leach.o -I dist/debug32

dist/debug32/ndenit.o: src/ndenit.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  ${LONGFIX} src/ndenit.f -o dist/debug32/ndenit.o -I dist/debug32

dist/debug32/newtillmix.o: src/newtillmix.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/newtillmix.f -o dist/debug32/newtillmix.o -I dist/debug32

dist/debug32/nfix.o: src/nfix.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/nfix.f -o dist/debug32/nfix.o -I dist/debug32

dist/debug32/nitvol.o: src/nitvol.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/nitvol.f -o dist/debug32/nitvol.o -I dist/debug32

dist/debug32/nlch.o: src/nlch.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/nlch.f -o dist/debug32/nlch.o -I dist/debug32

dist/debug32/nminrl.o: src/nminrl.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  ${LONGFIX} src/nminrl.f -o dist/debug32/nminrl.o -I dist/debug32

dist/debug32/noqual.o: src/noqual.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/noqual.f -o dist/debug32/noqual.o -I dist/debug32

dist/debug32/npup.o: src/npup.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/npup.f -o dist/debug32/npup.o -I dist/debug32

dist/debug32/nrain.o: src/nrain.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/nrain.f -o dist/debug32/nrain.o -I dist/debug32

dist/debug32/nup.o: src/nup.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/nup.f -o dist/debug32/nup.o -I dist/debug32

dist/debug32/nuts.o: src/nuts.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/nuts.f -o dist/debug32/nuts.o -I dist/debug32

dist/debug32/openwth.o: src/openwth.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/openwth.f -o dist/debug32/openwth.o -I dist/debug32

dist/debug32/operatn.o: src/operatn.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/operatn.f -o dist/debug32/operatn.o -I dist/debug32

dist/debug32/orgn.o: src/orgn.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/orgn.f -o dist/debug32/orgn.o -I dist/debug32

dist/debug32/orgncswat.o: src/orgncswat.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/orgncswat.f -o dist/debug32/orgncswat.o -I dist/debug32

dist/debug32/origtile.o: src/origtile.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/origtile.f -o dist/debug32/origtile.o -I dist/debug32

dist/debug32/ovr_sed.o: src/ovr_sed.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG} ${LONGFIX} src/ovr_sed.f -o dist/debug32/ovr_sed.o -I dist/debug32

dist/debug32/percmacro.o: src/percmacro.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/percmacro.f -o dist/debug32/percmacro.o -I dist/debug32

dist/debug32/percmain.o: src/percmain.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG} ${LONGFIX} src/percmain.f -o dist/debug32/percmain.o -I dist/debug32

dist/debug32/percmicro.o: src/percmicro.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/percmicro.f -o dist/debug32/percmicro.o -I dist/debug32

dist/debug32/pestlch.o: src/pestlch.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/pestlch.f -o dist/debug32/pestlch.o -I dist/debug32

dist/debug32/pestw.o: src/pestw.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/pestw.f -o dist/debug32/pestw.o -I dist/debug32

dist/debug32/pesty.o: src/pesty.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/pesty.f -o dist/debug32/pesty.o -I dist/debug32

dist/debug32/pgen.o: src/pgen.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/pgen.f -o dist/debug32/pgen.o -I dist/debug32

dist/debug32/pgenhr.o: src/pgenhr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/pgenhr.f -o dist/debug32/pgenhr.o -I dist/debug32

dist/debug32/pkq.o: src/pkq.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/pkq.f -o dist/debug32/pkq.o -I dist/debug32

dist/debug32/plantmod.o: src/plantmod.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/plantmod.f -o dist/debug32/plantmod.o -I dist/debug32

dist/debug32/plantop.o: src/plantop.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/plantop.f -o dist/debug32/plantop.o -I dist/debug32

dist/debug32/pmeas.o: src/pmeas.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/pmeas.f -o dist/debug32/pmeas.o -I dist/debug32

dist/debug32/pminrl.o: src/pminrl.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/pminrl.f -o dist/debug32/pminrl.o -I dist/debug32

dist/debug32/pminrl2.o: src/pminrl2.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/pminrl2.f -o dist/debug32/pminrl2.o -I dist/debug32

dist/debug32/pond.o: src/pond.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/pond.f -o dist/debug32/pond.o -I dist/debug32

dist/debug32/pondhr.o: src/pondhr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/pondhr.f -o dist/debug32/pondhr.o -I dist/debug32

dist/debug32/pothole.o: src/pothole.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/pothole.f -o dist/debug32/pothole.o -I dist/debug32

dist/debug32/potholehr.o: src/potholehr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/potholehr.f -o dist/debug32/potholehr.o -I dist/debug32

dist/debug32/print_hyd.o: src/print_hyd.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/print_hyd.f -o dist/debug32/print_hyd.o -I dist/debug32

dist/debug32/psed.o: src/psed.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/psed.f -o dist/debug32/psed.o -I dist/debug32

dist/debug32/qman.o: src/qman.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/qman.f -o dist/debug32/qman.o -I dist/debug32

dist/debug32/ran1.o: src/ran1.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/ran1.f -o dist/debug32/ran1.o -I dist/debug32

dist/debug32/rchaa.o: src/rchaa.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rchaa.f -o dist/debug32/rchaa.o -I dist/debug32

dist/debug32/rchday.o: src/rchday.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rchday.f -o dist/debug32/rchday.o -I dist/debug32

dist/debug32/rchinit.o: src/rchinit.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rchinit.f -o dist/debug32/rchinit.o -I dist/debug32

dist/debug32/rchmon.o: src/rchmon.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rchmon.f -o dist/debug32/rchmon.o -I dist/debug32

dist/debug32/rchuse.o: src/rchuse.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rchuse.f -o dist/debug32/rchuse.o -I dist/debug32

dist/debug32/rchyr.o: src/rchyr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rchyr.f -o dist/debug32/rchyr.o -I dist/debug32

dist/debug32/reachout.o: src/reachout.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/reachout.f -o dist/debug32/reachout.o -I dist/debug32

dist/debug32/readatmodep.o: src/readatmodep.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readatmodep.f -o dist/debug32/readatmodep.o -I dist/debug32

dist/debug32/readbsn.o: src/readbsn.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  ${LONGFIX} src/readbsn.f -o dist/debug32/readbsn.o -I dist/debug32

dist/debug32/readchm.o: src/readchm.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readchm.f -o dist/debug32/readchm.o -I dist/debug32

dist/debug32/readcnst.o: src/readcnst.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readcnst.f -o dist/debug32/readcnst.o -I dist/debug32

dist/debug32/readfcst.o: src/readfcst.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readfcst.f -o dist/debug32/readfcst.o -I dist/debug32

dist/debug32/readfert.o: src/readfert.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readfert.f -o dist/debug32/readfert.o -I dist/debug32

dist/debug32/readfig.o: src/readfig.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readfig.f -o dist/debug32/readfig.o -I dist/debug32

dist/debug32/readfile.o: src/readfile.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readfile.f -o dist/debug32/readfile.o -I dist/debug32

dist/debug32/readgw.o: src/readgw.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readgw.f -o dist/debug32/readgw.o -I dist/debug32

dist/debug32/readhru.o: src/readhru.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readhru.f -o dist/debug32/readhru.o -I dist/debug32

dist/debug32/readinpt.o: src/readinpt.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readinpt.f -o dist/debug32/readinpt.o -I dist/debug32

dist/debug32/readlup.o: src/readlup.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readlup.f -o dist/debug32/readlup.o -I dist/debug32

dist/debug32/readlwq.o: src/readlwq.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readlwq.f -o dist/debug32/readlwq.o -I dist/debug32

dist/debug32/readmgt.o: src/readmgt.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readmgt.f -o dist/debug32/readmgt.o -I dist/debug32

dist/debug32/readmon.o: src/readmon.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readmon.f -o dist/debug32/readmon.o -I dist/debug32

dist/debug32/readops.o: src/readops.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readops.f -o dist/debug32/readops.o -I dist/debug32

dist/debug32/readpest.o: src/readpest.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readpest.f -o dist/debug32/readpest.o -I dist/debug32

dist/debug32/readplant.o: src/readplant.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readplant.f -o dist/debug32/readplant.o -I dist/debug32

dist/debug32/readpnd.o: src/readpnd.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readpnd.f -o dist/debug32/readpnd.o -I dist/debug32

dist/debug32/readres.o: src/readres.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readres.f -o dist/debug32/readres.o -I dist/debug32

dist/debug32/readrte.o: src/readrte.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readrte.f -o dist/debug32/readrte.o -I dist/debug32

dist/debug32/readru.o: src/readru.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readru.f -o dist/debug32/readru.o -I dist/debug32

dist/debug32/readsdr.o: src/readsdr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readsdr.f -o dist/debug32/readsdr.o -I dist/debug32

dist/debug32/readsepticbz.o: src/readsepticbz.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readsepticbz.f -o dist/debug32/readsepticbz.o -I dist/debug32

dist/debug32/readseptwq.o: src/readseptwq.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readseptwq.f -o dist/debug32/readseptwq.o -I dist/debug32

dist/debug32/readsno.o: src/readsno.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readsno.f -o dist/debug32/readsno.o -I dist/debug32

dist/debug32/readsol.o: src/readsol.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readsol.f -o dist/debug32/readsol.o -I dist/debug32

dist/debug32/readsub.o: src/readsub.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readsub.f -o dist/debug32/readsub.o -I dist/debug32

dist/debug32/readswq.o: src/readswq.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readswq.f -o dist/debug32/readswq.o -I dist/debug32

dist/debug32/readtill.o: src/readtill.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readtill.f -o dist/debug32/readtill.o -I dist/debug32

dist/debug32/readurban.o: src/readurban.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readurban.f -o dist/debug32/readurban.o -I dist/debug32

dist/debug32/readwgn.o: src/readwgn.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readwgn.f -o dist/debug32/readwgn.o -I dist/debug32

dist/debug32/readwus.o: src/readwus.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readwus.f -o dist/debug32/readwus.o -I dist/debug32

dist/debug32/readwwq.o: src/readwwq.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readwwq.f -o dist/debug32/readwwq.o -I dist/debug32

dist/debug32/readyr.o: src/readyr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/readyr.f -o dist/debug32/readyr.o -I dist/debug32

dist/debug32/reccnst.o: src/reccnst.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/reccnst.f -o dist/debug32/reccnst.o -I dist/debug32

dist/debug32/recday.o: src/recday.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/recday.f -o dist/debug32/recday.o -I dist/debug32

dist/debug32/rechour.o: src/rechour.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rechour.f -o dist/debug32/rechour.o -I dist/debug32

dist/debug32/recmon.o: src/recmon.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/recmon.f -o dist/debug32/recmon.o -I dist/debug32

dist/debug32/recyear.o: src/recyear.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/recyear.f -o dist/debug32/recyear.o -I dist/debug32

dist/debug32/regres.o: src/regres.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/regres.f -o dist/debug32/regres.o -I dist/debug32

dist/debug32/res.o: src/res.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/res.f -o dist/debug32/res.o -I dist/debug32

dist/debug32/resbact.o: src/resbact.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/resbact.f -o dist/debug32/resbact.o -I dist/debug32

dist/debug32/resetlu.o: src/resetlu.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/resetlu.f -o dist/debug32/resetlu.o -I dist/debug32

dist/debug32/reshr.o: src/reshr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/reshr.f -o dist/debug32/reshr.o -I dist/debug32

dist/debug32/resinit.o: src/resinit.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/resinit.f -o dist/debug32/resinit.o -I dist/debug32

dist/debug32/resnut.o: src/resnut.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/resnut.f -o dist/debug32/resnut.o -I dist/debug32

dist/debug32/rewind_init.o: src/rewind_init.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rewind_init.f -o dist/debug32/rewind_init.o -I dist/debug32

dist/debug32/rhgen.o: src/rhgen.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rhgen.f -o dist/debug32/rhgen.o -I dist/debug32

dist/debug32/rootfr.o: src/rootfr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rootfr.f -o dist/debug32/rootfr.o -I dist/debug32

dist/debug32/route.o: src/route.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/route.f -o dist/debug32/route.o -I dist/debug32

dist/debug32/routels.o: src/routels.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/routels.f -o dist/debug32/routels.o -I dist/debug32

dist/debug32/routeunit.o: src/routeunit.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/routeunit.f -o dist/debug32/routeunit.o -I dist/debug32

dist/debug32/routres.o: src/routres.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/routres.f -o dist/debug32/routres.o -I dist/debug32

dist/debug32/rsedaa.o: src/rsedaa.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rsedaa.f -o dist/debug32/rsedaa.o -I dist/debug32

dist/debug32/rseday.o: src/rseday.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rseday.f -o dist/debug32/rseday.o -I dist/debug32

dist/debug32/rsedmon.o: src/rsedmon.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rsedmon.f -o dist/debug32/rsedmon.o -I dist/debug32

dist/debug32/rsedyr.o: src/rsedyr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rsedyr.f -o dist/debug32/rsedyr.o -I dist/debug32

dist/debug32/rtbact.o: src/rtbact.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rtbact.f -o dist/debug32/rtbact.o -I dist/debug32

dist/debug32/rtday.o: src/rtday.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rtday.f -o dist/debug32/rtday.o -I dist/debug32

dist/debug32/rteinit.o: src/rteinit.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rteinit.f -o dist/debug32/rteinit.o -I dist/debug32

dist/debug32/rthmusk.o: src/rthmusk.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rthmusk.f -o dist/debug32/rthmusk.o -I dist/debug32

dist/debug32/rthpest.o: src/rthpest.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rthpest.f -o dist/debug32/rthpest.o -I dist/debug32

dist/debug32/rthr.o: src/rthr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rthr.f -o dist/debug32/rthr.o -I dist/debug32

dist/debug32/rthsed.o: src/rthsed.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG} ${LONGFIX} src/rthsed.f -o dist/debug32/rthsed.o -I dist/debug32

dist/debug32/rtmusk.o: src/rtmusk.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rtmusk.f -o dist/debug32/rtmusk.o -I dist/debug32

dist/debug32/rtout.o: src/rtout.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rtout.f -o dist/debug32/rtout.o -I dist/debug32

dist/debug32/rtpest.o: src/rtpest.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rtpest.f -o dist/debug32/rtpest.o -I dist/debug32

dist/debug32/rtsed.o: src/rtsed.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rtsed.f -o dist/debug32/rtsed.o -I dist/debug32

dist/debug32/rtsed_bagnold.o: src/rtsed_bagnold.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rtsed_bagnold.f -o dist/debug32/rtsed_bagnold.o -I dist/debug32

dist/debug32/rtsed_kodatie.o: src/rtsed_kodatie.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rtsed_kodatie.f -o dist/debug32/rtsed_kodatie.o -I dist/debug32

dist/debug32/rtsed_molinas_wu.o: src/rtsed_Molinas_Wu.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rtsed_Molinas_Wu.f -o dist/debug32/rtsed_molinas_wu.o -I dist/debug32

dist/debug32/rtsed_yangsand.o: src/rtsed_yangsand.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/rtsed_yangsand.f -o dist/debug32/rtsed_yangsand.o -I dist/debug32

dist/debug32/sat_excess.o: src/sat_excess.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/sat_excess.f -o dist/debug32/sat_excess.o -I dist/debug32

dist/debug32/save.o: src/save.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/save.f -o dist/debug32/save.o -I dist/debug32

dist/debug32/saveconc.o: src/saveconc.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/saveconc.f -o dist/debug32/saveconc.o -I dist/debug32

dist/debug32/schedule_ops.o: src/schedule_ops.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/schedule_ops.f -o dist/debug32/schedule_ops.o -I dist/debug32

dist/debug32/sched_mgt.o: src/sched_mgt.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/sched_mgt.f -o dist/debug32/sched_mgt.o -I dist/debug32

dist/debug32/simulate.o: src/simulate.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/simulate.f -o dist/debug32/simulate.o -I dist/debug32

dist/debug32/sim_initday.o: src/sim_initday.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/sim_initday.f -o dist/debug32/sim_initday.o -I dist/debug32

dist/debug32/sim_inityr.o: src/sim_inityr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/sim_inityr.f -o dist/debug32/sim_inityr.o -I dist/debug32

dist/debug32/slrgen.o: src/slrgen.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/slrgen.f -o dist/debug32/slrgen.o -I dist/debug32

dist/debug32/smeas.o: src/smeas.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/smeas.f -o dist/debug32/smeas.o -I dist/debug32

dist/debug32/snom.o: src/snom.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/snom.f -o dist/debug32/snom.o -I dist/debug32

dist/debug32/soil_chem.o: src/soil_chem.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/soil_chem.f -o dist/debug32/soil_chem.o -I dist/debug32

dist/debug32/soil_par.o: src/soil_par.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/soil_par.f -o dist/debug32/soil_par.o -I dist/debug32

dist/debug32/soil_phys.o: src/soil_phys.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/soil_phys.f -o dist/debug32/soil_phys.o -I dist/debug32

dist/debug32/soil_write.o: src/soil_write.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/soil_write.f -o dist/debug32/soil_write.o -I dist/debug32

dist/debug32/solp.o: src/solp.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/solp.f -o dist/debug32/solp.o -I dist/debug32

dist/debug32/solt.o: src/solt.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/solt.f -o dist/debug32/solt.o -I dist/debug32

dist/debug32/std1.o: src/std1.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/std1.f -o dist/debug32/std1.o -I dist/debug32

dist/debug32/std2.o: src/std2.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/std2.f -o dist/debug32/std2.o -I dist/debug32

dist/debug32/std3.o: src/std3.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/std3.f -o dist/debug32/std3.o -I dist/debug32

dist/debug32/stdaa.o: src/stdaa.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/stdaa.f -o dist/debug32/stdaa.o -I dist/debug32

dist/debug32/storeinitial.o: src/storeinitial.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/storeinitial.f -o dist/debug32/storeinitial.o -I dist/debug32

dist/debug32/structure.o: src/structure.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/structure.f -o dist/debug32/structure.o -I dist/debug32

dist/debug32/subaa.o: src/subaa.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/subaa.f -o dist/debug32/subaa.o -I dist/debug32

dist/debug32/subbasin.o: src/subbasin.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/subbasin.f -o dist/debug32/subbasin.o -I dist/debug32

dist/debug32/subday.o: src/subday.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/subday.f -o dist/debug32/subday.o -I dist/debug32

dist/debug32/submon.o: src/submon.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/submon.f -o dist/debug32/submon.o -I dist/debug32

dist/debug32/substor.o: src/substor.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/substor.f -o dist/debug32/substor.o -I dist/debug32

dist/debug32/subwq.o: src/subwq.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/subwq.f -o dist/debug32/subwq.o -I dist/debug32

dist/debug32/subyr.o: src/subyr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/subyr.f -o dist/debug32/subyr.o -I dist/debug32

dist/debug32/sub_subbasin.o: src/sub_subbasin.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/sub_subbasin.f -o dist/debug32/sub_subbasin.o -I dist/debug32

dist/debug32/sumhyd.o: src/sumhyd.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/sumhyd.f -o dist/debug32/sumhyd.o -I dist/debug32

dist/debug32/sumv.o: src/sumv.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/sumv.f -o dist/debug32/sumv.o -I dist/debug32

dist/debug32/surface.o: src/surface.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/surface.f -o dist/debug32/surface.o -I dist/debug32

dist/debug32/surfstor.o: src/surfstor.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/surfstor.f -o dist/debug32/surfstor.o -I dist/debug32

dist/debug32/surfst_h2o.o: src/surfst_h2o.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/surfst_h2o.f -o dist/debug32/surfst_h2o.o -I dist/debug32

dist/debug32/surq_daycn.o: src/surq_daycn.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/surq_daycn.f -o dist/debug32/surq_daycn.o -I dist/debug32

dist/debug32/surq_greenampt.o: src/surq_greenampt.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/surq_greenampt.f -o dist/debug32/surq_greenampt.o -I dist/debug32

dist/debug32/swbl.o: src/swbl.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/swbl.f -o dist/debug32/swbl.o -I dist/debug32

dist/debug32/sweep.o: src/sweep.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/sweep.f -o dist/debug32/sweep.o -I dist/debug32

dist/debug32/swu.o: src/swu.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/swu.f -o dist/debug32/swu.o -I dist/debug32

dist/debug32/tair.o: src/tair.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/tair.f -o dist/debug32/tair.o -I dist/debug32

dist/debug32/tgen.o: src/tgen.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/tgen.f -o dist/debug32/tgen.o -I dist/debug32

dist/debug32/theta.o: src/theta.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/theta.f -o dist/debug32/theta.o -I dist/debug32

dist/debug32/tillfactor.o: src/tillfactor.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/tillfactor.f -o dist/debug32/tillfactor.o -I dist/debug32

dist/debug32/tillmix.o: src/tillmix.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/tillmix.f -o dist/debug32/tillmix.o -I dist/debug32

dist/debug32/tmeas.o: src/tmeas.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/tmeas.f -o dist/debug32/tmeas.o -I dist/debug32

dist/debug32/tran.o: src/tran.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/tran.f -o dist/debug32/tran.o -I dist/debug32

dist/debug32/transfer.o: src/transfer.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/transfer.f -o dist/debug32/transfer.o -I dist/debug32

dist/debug32/tstr.o: src/tstr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/tstr.f -o dist/debug32/tstr.o -I dist/debug32

dist/debug32/ttcoef.o: src/ttcoef.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/ttcoef.f -o dist/debug32/ttcoef.o -I dist/debug32

dist/debug32/ttcoef_wway.o: src/ttcoef_wway.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/ttcoef_wway.f -o dist/debug32/ttcoef_wway.o -I dist/debug32

dist/debug32/urban.o: src/urban.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/urban.f -o dist/debug32/urban.o -I dist/debug32

dist/debug32/urbanhr.o: src/urbanhr.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/urbanhr.f -o dist/debug32/urbanhr.o -I dist/debug32

dist/debug32/urb_bmp.o: src/urb_bmp.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/urb_bmp.f -o dist/debug32/urb_bmp.o -I dist/debug32

dist/debug32/varinit.o: src/varinit.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/varinit.f -o dist/debug32/varinit.o -I dist/debug32

dist/debug32/vbl.o: src/vbl.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/vbl.f -o dist/debug32/vbl.o -I dist/debug32

dist/debug32/virtual.o: src/virtual.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/virtual.f -o dist/debug32/virtual.o -I dist/debug32

dist/debug32/volq.o: src/volq.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/volq.f -o dist/debug32/volq.o -I dist/debug32

dist/debug32/washp.o: src/washp.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/washp.f -o dist/debug32/washp.o -I dist/debug32

dist/debug32/watbal.o: src/watbal.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/watbal.f -o dist/debug32/watbal.o -I dist/debug32

dist/debug32/water_hru.o: src/water_hru.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/water_hru.f -o dist/debug32/water_hru.o -I dist/debug32

dist/debug32/watqual.o: src/watqual.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/watqual.f -o dist/debug32/watqual.o -I dist/debug32

dist/debug32/watqual2.o: src/watqual2.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/watqual2.f -o dist/debug32/watqual2.o -I dist/debug32

dist/debug32/wattable.o: src/wattable.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/wattable.f -o dist/debug32/wattable.o -I dist/debug32

dist/debug32/watuse.o: src/watuse.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/watuse.f -o dist/debug32/watuse.o -I dist/debug32

dist/debug32/weatgn.o: src/weatgn.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/weatgn.f -o dist/debug32/weatgn.o -I dist/debug32

dist/debug32/wetlan.o: src/wetlan.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/wetlan.f -o dist/debug32/wetlan.o -I dist/debug32

dist/debug32/wmeas.o: src/wmeas.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/wmeas.f -o dist/debug32/wmeas.o -I dist/debug32

dist/debug32/wndgen.o: src/wndgen.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/wndgen.f -o dist/debug32/wndgen.o -I dist/debug32

dist/debug32/writea.o: src/writea.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/writea.f -o dist/debug32/writea.o -I dist/debug32

dist/debug32/writeaa.o: src/writeaa.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/writeaa.f -o dist/debug32/writeaa.o -I dist/debug32

dist/debug32/writed.o: src/writed.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/writed.f -o dist/debug32/writed.o -I dist/debug32

dist/debug32/writem.o: src/writem.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/writem.f -o dist/debug32/writem.o -I dist/debug32

dist/debug32/xmon.o: src/xmon.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/xmon.f -o dist/debug32/xmon.o -I dist/debug32

dist/debug32/ysed.o: src/ysed.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/ysed.f -o dist/debug32/ysed.o -I dist/debug32

dist/debug32/zero0.o: src/zero0.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/zero0.f -o dist/debug32/zero0.o -I dist/debug32

dist/debug32/zero1.o: src/zero1.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/zero1.f -o dist/debug32/zero1.o -I dist/debug32

dist/debug32/zero2.o: src/zero2.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/zero2.f -o dist/debug32/zero2.o -I dist/debug32

dist/debug32/zeroini.o: src/zeroini.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/zeroini.f -o dist/debug32/zeroini.o -I dist/debug32

dist/debug32/zero_urbn.o: src/zero_urbn.f dist/debug32/main.o
	${FC} ${ARCH32} ${FFLAG} ${DFLAG}  src/zero_urbn.f -o dist/debug32/zero_urbn.o -I dist/debug32

debug32_clean:
	rm -f dist/${NAMEDEBUG32}
	rm -f dist/debug32/*.o
	rm -f dist/debug32/*.mod
	rm -f dist/debug32/*~
	rm -rf dist/debug32

OBJECTS_DEBUG64=  dist/debug64/addh.o dist/debug64/albedo.o dist/debug64/allocate_parms.o dist/debug64/alph.o dist/debug64/anfert.o dist/debug64/apex_day.o dist/debug64/apply.o dist/debug64/ascrv.o dist/debug64/atri.o dist/debug64/aunif.o dist/debug64/autoirr.o dist/debug64/aveval.o dist/debug64/bacteria.o dist/debug64/biofilm.o dist/debug64/biozone.o dist/debug64/bmpfixed.o dist/debug64/bmpinit.o dist/debug64/bmp_det_pond.o dist/debug64/bmp_ri_pond.o dist/debug64/bmp_sand_filter.o dist/debug64/bmp_sed_pond.o dist/debug64/bmp_wet_pond.o dist/debug64/buffer.o dist/debug64/burnop.o dist/debug64/canopyint.o dist/debug64/caps.o dist/debug64/carbon_new.o dist/debug64/carbon_zhang2.o dist/debug64/cfactor.o dist/debug64/chkcst.o dist/debug64/clgen.o dist/debug64/clicon.o dist/debug64/command.o dist/debug64/conapply.o dist/debug64/confert.o dist/debug64/crackflow.o dist/debug64/crackvol.o dist/debug64/curno.o dist/debug64/dailycn.o dist/debug64/decay.o dist/debug64/depstor.o dist/debug64/distrib_bmps.o dist/debug64/dormant.o dist/debug64/drains.o dist/debug64/dstn1.o dist/debug64/ee.o dist/debug64/eiusle.o dist/debug64/enrsb.o dist/debug64/erfc.o dist/debug64/estimate_ksat.o dist/debug64/etact.o dist/debug64/etpot.o dist/debug64/expo.o dist/debug64/fert.o dist/debug64/filter.o dist/debug64/filtw.o dist/debug64/finalbal.o dist/debug64/gcycl.o dist/debug64/getallo.o dist/debug64/grass_wway.o dist/debug64/graze.o dist/debug64/grow.o dist/debug64/gwmod.o dist/debug64/gwmod_deep.o dist/debug64/gwnutr.o dist/debug64/gw_no3.o dist/debug64/h2omgt_init.o dist/debug64/harvestop.o dist/debug64/harvgrainop.o dist/debug64/harvkillop.o dist/debug64/header.o dist/debug64/headout.o dist/debug64/hhnoqual.o dist/debug64/hhwatqual.o dist/debug64/hmeas.o dist/debug64/hruaa.o dist/debug64/hruallo.o dist/debug64/hruday.o dist/debug64/hrumon.o dist/debug64/hrupond.o dist/debug64/hrupondhr.o dist/debug64/hruyr.o dist/debug64/hydroinit.o dist/debug64/icl.o dist/debug64/impndaa.o dist/debug64/impndday.o dist/debug64/impndmon.o dist/debug64/impndyr.o dist/debug64/impnd_init.o dist/debug64/irrigate.o dist/debug64/irrsub.o dist/debug64/irr_rch.o dist/debug64/irr_res.o dist/debug64/jdt.o dist/debug64/killop.o dist/debug64/lakeq.o dist/debug64/latsed.o dist/debug64/layersplit.o dist/debug64/lwqdef.o dist/debug64/main.o dist/debug64/ncsed_leach.o dist/debug64/ndenit.o dist/debug64/newtillmix.o dist/debug64/nfix.o dist/debug64/nitvol.o dist/debug64/nlch.o dist/debug64/nminrl.o dist/debug64/noqual.o dist/debug64/npup.o dist/debug64/nrain.o dist/debug64/nup.o dist/debug64/nuts.o dist/debug64/openwth.o dist/debug64/operatn.o dist/debug64/orgn.o dist/debug64/orgncswat.o dist/debug64/origtile.o dist/debug64/ovr_sed.o dist/debug64/percmacro.o dist/debug64/percmain.o dist/debug64/percmicro.o dist/debug64/pestlch.o dist/debug64/pestw.o dist/debug64/pesty.o dist/debug64/pgen.o dist/debug64/pgenhr.o dist/debug64/pkq.o dist/debug64/plantmod.o dist/debug64/plantop.o dist/debug64/pmeas.o dist/debug64/pminrl.o dist/debug64/pminrl2.o dist/debug64/pond.o dist/debug64/pondhr.o dist/debug64/pothole.o dist/debug64/potholehr.o dist/debug64/print_hyd.o dist/debug64/psed.o dist/debug64/qman.o dist/debug64/ran1.o dist/debug64/rchaa.o dist/debug64/rchday.o dist/debug64/rchinit.o dist/debug64/rchmon.o dist/debug64/rchuse.o dist/debug64/rchyr.o dist/debug64/reachout.o dist/debug64/readatmodep.o dist/debug64/readbsn.o dist/debug64/readchm.o dist/debug64/readcnst.o dist/debug64/readfcst.o dist/debug64/readfert.o dist/debug64/readfig.o dist/debug64/readfile.o dist/debug64/readgw.o dist/debug64/readhru.o dist/debug64/readinpt.o dist/debug64/readlup.o dist/debug64/readlwq.o dist/debug64/readmgt.o dist/debug64/readmon.o dist/debug64/readops.o dist/debug64/readpest.o dist/debug64/readplant.o dist/debug64/readpnd.o dist/debug64/readres.o dist/debug64/readrte.o dist/debug64/readru.o dist/debug64/readsdr.o dist/debug64/readsepticbz.o dist/debug64/readseptwq.o dist/debug64/readsno.o dist/debug64/readsol.o dist/debug64/readsub.o dist/debug64/readswq.o dist/debug64/readtill.o dist/debug64/readurban.o dist/debug64/readwgn.o dist/debug64/readwus.o dist/debug64/readwwq.o dist/debug64/readyr.o dist/debug64/reccnst.o dist/debug64/recday.o dist/debug64/rechour.o dist/debug64/recmon.o dist/debug64/recyear.o dist/debug64/regres.o dist/debug64/res.o dist/debug64/resbact.o dist/debug64/resetlu.o dist/debug64/reshr.o dist/debug64/resinit.o dist/debug64/resnut.o dist/debug64/rewind_init.o dist/debug64/rhgen.o dist/debug64/rootfr.o dist/debug64/route.o dist/debug64/routels.o dist/debug64/routeunit.o dist/debug64/routres.o dist/debug64/rsedaa.o dist/debug64/rseday.o dist/debug64/rsedmon.o dist/debug64/rsedyr.o dist/debug64/rtbact.o dist/debug64/rtday.o dist/debug64/rteinit.o dist/debug64/rthmusk.o dist/debug64/rthpest.o dist/debug64/rthr.o dist/debug64/rthsed.o dist/debug64/rtmusk.o dist/debug64/rtout.o dist/debug64/rtpest.o dist/debug64/rtsed.o dist/debug64/rtsed_bagnold.o dist/debug64/rtsed_kodatie.o dist/debug64/rtsed_molinas_wu.o dist/debug64/rtsed_yangsand.o dist/debug64/sat_excess.o dist/debug64/save.o dist/debug64/saveconc.o dist/debug64/schedule_ops.o dist/debug64/sched_mgt.o dist/debug64/simulate.o dist/debug64/sim_initday.o dist/debug64/sim_inityr.o dist/debug64/slrgen.o dist/debug64/smeas.o dist/debug64/snom.o dist/debug64/soil_chem.o dist/debug64/soil_par.o dist/debug64/soil_phys.o dist/debug64/soil_write.o dist/debug64/solp.o dist/debug64/solt.o dist/debug64/std1.o dist/debug64/std2.o dist/debug64/std3.o dist/debug64/stdaa.o dist/debug64/storeinitial.o dist/debug64/structure.o dist/debug64/subaa.o dist/debug64/subbasin.o dist/debug64/subday.o dist/debug64/submon.o dist/debug64/substor.o dist/debug64/subwq.o dist/debug64/subyr.o dist/debug64/sub_subbasin.o dist/debug64/sumhyd.o dist/debug64/sumv.o dist/debug64/surface.o dist/debug64/surfstor.o dist/debug64/surfst_h2o.o dist/debug64/surq_daycn.o dist/debug64/surq_greenampt.o dist/debug64/swbl.o dist/debug64/sweep.o dist/debug64/swu.o dist/debug64/tair.o dist/debug64/tgen.o dist/debug64/theta.o dist/debug64/tillfactor.o dist/debug64/tillmix.o dist/debug64/tmeas.o dist/debug64/tran.o dist/debug64/transfer.o dist/debug64/tstr.o dist/debug64/ttcoef.o dist/debug64/ttcoef_wway.o dist/debug64/urban.o dist/debug64/urbanhr.o dist/debug64/urb_bmp.o dist/debug64/varinit.o dist/debug64/vbl.o dist/debug64/virtual.o dist/debug64/volq.o dist/debug64/washp.o dist/debug64/watbal.o dist/debug64/water_hru.o dist/debug64/watqual.o dist/debug64/watqual2.o dist/debug64/wattable.o dist/debug64/watuse.o dist/debug64/weatgn.o dist/debug64/wetlan.o dist/debug64/wmeas.o dist/debug64/wndgen.o dist/debug64/writea.o dist/debug64/writeaa.o dist/debug64/writed.o dist/debug64/writem.o dist/debug64/xmon.o dist/debug64/ysed.o dist/debug64/zero0.o dist/debug64/zero1.o dist/debug64/zero2.o dist/debug64/zeroini.o dist/debug64/zero_urbn.o

NAMEDEBUG64=swat_debug64
debug64:debug64_mkdir ${NAMEDEBUG64}

debug64_mkdir:
	mkdir -p dist/debug64

${NAMEDEBUG64}: ${OBJECTS_DEBUG64}
	${FC} ${OBJECTS_DEBUG64} ${ARCH64} -static -o dist/${NAMEDEBUG64}


dist/debug64/addh.o: src/addh.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/addh.f -o dist/debug64/addh.o -I dist/debug64

dist/debug64/albedo.o: src/albedo.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/albedo.f -o dist/debug64/albedo.o -I dist/debug64

dist/debug64/allocate_parms.o: src/allocate_parms.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/allocate_parms.f -o dist/debug64/allocate_parms.o -I dist/debug64

dist/debug64/alph.o: src/alph.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/alph.f -o dist/debug64/alph.o -I dist/debug64

dist/debug64/anfert.o: src/anfert.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/anfert.f -o dist/debug64/anfert.o -I dist/debug64

dist/debug64/apex_day.o: src/apex_day.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/apex_day.f -o dist/debug64/apex_day.o -I dist/debug64

dist/debug64/apply.o: src/apply.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/apply.f -o dist/debug64/apply.o -I dist/debug64

dist/debug64/ascrv.o: src/ascrv.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/ascrv.f -o dist/debug64/ascrv.o -I dist/debug64

dist/debug64/atri.o: src/atri.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/atri.f -o dist/debug64/atri.o -I dist/debug64

dist/debug64/aunif.o: src/aunif.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/aunif.f -o dist/debug64/aunif.o -I dist/debug64

dist/debug64/autoirr.o: src/autoirr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/autoirr.f -o dist/debug64/autoirr.o -I dist/debug64

dist/debug64/aveval.o: src/aveval.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/aveval.f -o dist/debug64/aveval.o -I dist/debug64

dist/debug64/bacteria.o: src/bacteria.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/bacteria.f -o dist/debug64/bacteria.o -I dist/debug64

dist/debug64/biofilm.o: src/biofilm.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/biofilm.f -o dist/debug64/biofilm.o -I dist/debug64

dist/debug64/biozone.o: src/biozone.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} src/biozone.f -o dist/debug64/biozone.o -I dist/debug64

dist/debug64/bmpfixed.o: src/bmpfixed.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/bmpfixed.f -o dist/debug64/bmpfixed.o -I dist/debug64

dist/debug64/bmpinit.o: src/bmpinit.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} src/bmpinit.f -o dist/debug64/bmpinit.o -I dist/debug64

dist/debug64/bmp_det_pond.o: src/bmp_det_pond.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/bmp_det_pond.f -o dist/debug64/bmp_det_pond.o -I dist/debug64

dist/debug64/bmp_ri_pond.o: src/bmp_ri_pond.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/bmp_ri_pond.f -o dist/debug64/bmp_ri_pond.o -I dist/debug64

dist/debug64/bmp_sand_filter.o: src/bmp_sand_filter.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/bmp_sand_filter.f -o dist/debug64/bmp_sand_filter.o -I dist/debug64

dist/debug64/bmp_sed_pond.o: src/bmp_sed_pond.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/bmp_sed_pond.f -o dist/debug64/bmp_sed_pond.o -I dist/debug64

dist/debug64/bmp_wet_pond.o: src/bmp_wet_pond.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/bmp_wet_pond.f -o dist/debug64/bmp_wet_pond.o -I dist/debug64

dist/debug64/buffer.o: src/buffer.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/buffer.f -o dist/debug64/buffer.o -I dist/debug64

dist/debug64/burnop.o: src/burnop.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/burnop.f -o dist/debug64/burnop.o -I dist/debug64

dist/debug64/canopyint.o: src/canopyint.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/canopyint.f -o dist/debug64/canopyint.o -I dist/debug64

dist/debug64/caps.o: src/caps.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/caps.f -o dist/debug64/caps.o -I dist/debug64

dist/debug64/carbon_new.o: src/carbon_new.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/carbon_new.f -o dist/debug64/carbon_new.o -I dist/debug64

dist/debug64/carbon_zhang2.o: src/carbon_zhang2.f90 dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFREE} src/carbon_zhang2.f90 -o dist/debug64/carbon_zhang2.o -I dist/debug64

dist/debug64/cfactor.o: src/cfactor.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/cfactor.f -o dist/debug64/cfactor.o -I dist/debug64

dist/debug64/chkcst.o: src/chkcst.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/chkcst.f -o dist/debug64/chkcst.o -I dist/debug64

dist/debug64/clgen.o: src/clgen.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/clgen.f -o dist/debug64/clgen.o -I dist/debug64

dist/debug64/clicon.o: src/clicon.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/clicon.f -o dist/debug64/clicon.o -I dist/debug64

dist/debug64/command.o: src/command.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/command.f -o dist/debug64/command.o -I dist/debug64

dist/debug64/conapply.o: src/conapply.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/conapply.f -o dist/debug64/conapply.o -I dist/debug64

dist/debug64/confert.o: src/confert.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/confert.f -o dist/debug64/confert.o -I dist/debug64

dist/debug64/crackflow.o: src/crackflow.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/crackflow.f -o dist/debug64/crackflow.o -I dist/debug64

dist/debug64/crackvol.o: src/crackvol.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/crackvol.f -o dist/debug64/crackvol.o -I dist/debug64

dist/debug64/curno.o: src/curno.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/curno.f -o dist/debug64/curno.o -I dist/debug64

dist/debug64/dailycn.o: src/dailycn.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/dailycn.f -o dist/debug64/dailycn.o -I dist/debug64

dist/debug64/decay.o: src/decay.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/decay.f -o dist/debug64/decay.o -I dist/debug64

dist/debug64/depstor.o: src/depstor.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/depstor.f -o dist/debug64/depstor.o -I dist/debug64

dist/debug64/distrib_bmps.o: src/distrib_bmps.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/distrib_bmps.f -o dist/debug64/distrib_bmps.o -I dist/debug64

dist/debug64/dormant.o: src/dormant.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/dormant.f -o dist/debug64/dormant.o -I dist/debug64

dist/debug64/drains.o: src/drains.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/drains.f -o dist/debug64/drains.o -I dist/debug64

dist/debug64/dstn1.o: src/dstn1.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/dstn1.f -o dist/debug64/dstn1.o -I dist/debug64

dist/debug64/ee.o: src/ee.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/ee.f -o dist/debug64/ee.o -I dist/debug64

dist/debug64/eiusle.o: src/eiusle.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/eiusle.f -o dist/debug64/eiusle.o -I dist/debug64

dist/debug64/enrsb.o: src/enrsb.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/enrsb.f -o dist/debug64/enrsb.o -I dist/debug64

dist/debug64/erfc.o: src/erfc.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/erfc.f -o dist/debug64/erfc.o -I dist/debug64

dist/debug64/estimate_ksat.o: src/estimate_ksat.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/estimate_ksat.f -o dist/debug64/estimate_ksat.o -I dist/debug64

dist/debug64/etact.o: src/etact.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/etact.f -o dist/debug64/etact.o -I dist/debug64

dist/debug64/etpot.o: src/etpot.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/etpot.f -o dist/debug64/etpot.o -I dist/debug64

dist/debug64/expo.o: src/expo.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/expo.f -o dist/debug64/expo.o -I dist/debug64

dist/debug64/fert.o: src/fert.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/fert.f -o dist/debug64/fert.o -I dist/debug64

dist/debug64/filter.o: src/filter.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/filter.f -o dist/debug64/filter.o -I dist/debug64

dist/debug64/filtw.o: src/filtw.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/filtw.f -o dist/debug64/filtw.o -I dist/debug64

dist/debug64/finalbal.o: src/finalbal.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/finalbal.f -o dist/debug64/finalbal.o -I dist/debug64

dist/debug64/gcycl.o: src/gcycl.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/gcycl.f -o dist/debug64/gcycl.o -I dist/debug64

dist/debug64/getallo.o: src/getallo.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/getallo.f -o dist/debug64/getallo.o -I dist/debug64

dist/debug64/grass_wway.o: src/grass_wway.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/grass_wway.f -o dist/debug64/grass_wway.o -I dist/debug64

dist/debug64/graze.o: src/graze.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/graze.f -o dist/debug64/graze.o -I dist/debug64

dist/debug64/grow.o: src/grow.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/grow.f -o dist/debug64/grow.o -I dist/debug64

dist/debug64/gwmod.o: src/gwmod.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/gwmod.f -o dist/debug64/gwmod.o -I dist/debug64

dist/debug64/gwmod_deep.o: src/gwmod_deep.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/gwmod_deep.f -o dist/debug64/gwmod_deep.o -I dist/debug64

dist/debug64/gwnutr.o: src/gwnutr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/gwnutr.f -o dist/debug64/gwnutr.o -I dist/debug64

dist/debug64/gw_no3.o: src/gw_no3.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/gw_no3.f -o dist/debug64/gw_no3.o -I dist/debug64

dist/debug64/h2omgt_init.o: src/h2omgt_init.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/h2omgt_init.f -o dist/debug64/h2omgt_init.o -I dist/debug64

dist/debug64/harvestop.o: src/harvestop.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/harvestop.f -o dist/debug64/harvestop.o -I dist/debug64

dist/debug64/harvgrainop.o: src/harvgrainop.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/harvgrainop.f -o dist/debug64/harvgrainop.o -I dist/debug64

dist/debug64/harvkillop.o: src/harvkillop.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/harvkillop.f -o dist/debug64/harvkillop.o -I dist/debug64

dist/debug64/header.o: src/header.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/header.f -o dist/debug64/header.o -I dist/debug64

dist/debug64/headout.o: src/headout.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/headout.f -o dist/debug64/headout.o -I dist/debug64

dist/debug64/hhnoqual.o: src/hhnoqual.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/hhnoqual.f -o dist/debug64/hhnoqual.o -I dist/debug64

dist/debug64/hhwatqual.o: src/hhwatqual.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/hhwatqual.f -o dist/debug64/hhwatqual.o -I dist/debug64

dist/debug64/hmeas.o: src/hmeas.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/hmeas.f -o dist/debug64/hmeas.o -I dist/debug64

dist/debug64/hruaa.o: src/hruaa.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/hruaa.f -o dist/debug64/hruaa.o -I dist/debug64

dist/debug64/hruallo.o: src/hruallo.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/hruallo.f -o dist/debug64/hruallo.o -I dist/debug64

dist/debug64/hruday.o: src/hruday.f90 dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/hruday.f90 -o dist/debug64/hruday.o -I dist/debug64

dist/debug64/hrumon.o: src/hrumon.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/hrumon.f -o dist/debug64/hrumon.o -I dist/debug64

dist/debug64/hrupond.o: src/hrupond.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/hrupond.f -o dist/debug64/hrupond.o -I dist/debug64

dist/debug64/hrupondhr.o: src/hrupondhr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/hrupondhr.f -o dist/debug64/hrupondhr.o -I dist/debug64

dist/debug64/hruyr.o: src/hruyr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/hruyr.f -o dist/debug64/hruyr.o -I dist/debug64

dist/debug64/hydroinit.o: src/hydroinit.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/hydroinit.f -o dist/debug64/hydroinit.o -I dist/debug64

dist/debug64/icl.o: src/icl.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/icl.f -o dist/debug64/icl.o -I dist/debug64

dist/debug64/impndaa.o: src/impndaa.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/impndaa.f -o dist/debug64/impndaa.o -I dist/debug64

dist/debug64/impndday.o: src/impndday.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/impndday.f -o dist/debug64/impndday.o -I dist/debug64

dist/debug64/impndmon.o: src/impndmon.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/impndmon.f -o dist/debug64/impndmon.o -I dist/debug64

dist/debug64/impndyr.o: src/impndyr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/impndyr.f -o dist/debug64/impndyr.o -I dist/debug64

dist/debug64/impnd_init.o: src/impnd_init.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/impnd_init.f -o dist/debug64/impnd_init.o -I dist/debug64

dist/debug64/irrigate.o: src/irrigate.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/irrigate.f -o dist/debug64/irrigate.o -I dist/debug64

dist/debug64/irrsub.o: src/irrsub.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/irrsub.f -o dist/debug64/irrsub.o -I dist/debug64

dist/debug64/irr_rch.o: src/irr_rch.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/irr_rch.f -o dist/debug64/irr_rch.o -I dist/debug64

dist/debug64/irr_res.o: src/irr_res.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/irr_res.f -o dist/debug64/irr_res.o -I dist/debug64

dist/debug64/jdt.o: src/jdt.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/jdt.f -o dist/debug64/jdt.o -I dist/debug64

dist/debug64/killop.o: src/killop.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/killop.f -o dist/debug64/killop.o -I dist/debug64

dist/debug64/lakeq.o: src/lakeq.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/lakeq.f -o dist/debug64/lakeq.o -I dist/debug64

dist/debug64/latsed.o: src/latsed.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/latsed.f -o dist/debug64/latsed.o -I dist/debug64

dist/debug64/layersplit.o: src/layersplit.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/layersplit.f -o dist/debug64/layersplit.o -I dist/debug64

dist/debug64/lwqdef.o: src/lwqdef.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/lwqdef.f -o dist/debug64/lwqdef.o -I dist/debug64

dist/debug64/main.o: src/main.f src/modparm.f
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} src/main.f -o dist/debug64/main.o -J dist/debug64

dist/debug64/ncsed_leach.o: src/NCsed_leach.f90 dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} src/NCsed_leach.f90 -o dist/debug64/ncsed_leach.o -I dist/debug64

dist/debug64/ndenit.o: src/ndenit.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} src/ndenit.f -o dist/debug64/ndenit.o -I dist/debug64

dist/debug64/newtillmix.o: src/newtillmix.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} src/newtillmix.f -o dist/debug64/newtillmix.o -I dist/debug64

dist/debug64/nfix.o: src/nfix.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} src/nfix.f -o dist/debug64/nfix.o -I dist/debug64

dist/debug64/nitvol.o: src/nitvol.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/nitvol.f -o dist/debug64/nitvol.o -I dist/debug64

dist/debug64/nlch.o: src/nlch.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/nlch.f -o dist/debug64/nlch.o -I dist/debug64

dist/debug64/nminrl.o: src/nminrl.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ${LONGFIX} src/nminrl.f -o dist/debug64/nminrl.o -I dist/debug64

dist/debug64/noqual.o: src/noqual.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/noqual.f -o dist/debug64/noqual.o -I dist/debug64

dist/debug64/npup.o: src/npup.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/npup.f -o dist/debug64/npup.o -I dist/debug64

dist/debug64/nrain.o: src/nrain.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/nrain.f -o dist/debug64/nrain.o -I dist/debug64

dist/debug64/nup.o: src/nup.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/nup.f -o dist/debug64/nup.o -I dist/debug64

dist/debug64/nuts.o: src/nuts.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/nuts.f -o dist/debug64/nuts.o -I dist/debug64

dist/debug64/openwth.o: src/openwth.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/openwth.f -o dist/debug64/openwth.o -I dist/debug64

dist/debug64/operatn.o: src/operatn.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/operatn.f -o dist/debug64/operatn.o -I dist/debug64

dist/debug64/orgn.o: src/orgn.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/orgn.f -o dist/debug64/orgn.o -I dist/debug64

dist/debug64/orgncswat.o: src/orgncswat.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/orgncswat.f -o dist/debug64/orgncswat.o -I dist/debug64

dist/debug64/origtile.o: src/origtile.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/origtile.f -o dist/debug64/origtile.o -I dist/debug64

dist/debug64/ovr_sed.o: src/ovr_sed.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} src/ovr_sed.f -o dist/debug64/ovr_sed.o -I dist/debug64

dist/debug64/percmacro.o: src/percmacro.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/percmacro.f -o dist/debug64/percmacro.o -I dist/debug64

dist/debug64/percmain.o: src/percmain.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} src/percmain.f -o dist/debug64/percmain.o -I dist/debug64

dist/debug64/percmicro.o: src/percmicro.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/percmicro.f -o dist/debug64/percmicro.o -I dist/debug64

dist/debug64/pestlch.o: src/pestlch.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/pestlch.f -o dist/debug64/pestlch.o -I dist/debug64

dist/debug64/pestw.o: src/pestw.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/pestw.f -o dist/debug64/pestw.o -I dist/debug64

dist/debug64/pesty.o: src/pesty.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/pesty.f -o dist/debug64/pesty.o -I dist/debug64

dist/debug64/pgen.o: src/pgen.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/pgen.f -o dist/debug64/pgen.o -I dist/debug64

dist/debug64/pgenhr.o: src/pgenhr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/pgenhr.f -o dist/debug64/pgenhr.o -I dist/debug64

dist/debug64/pkq.o: src/pkq.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/pkq.f -o dist/debug64/pkq.o -I dist/debug64

dist/debug64/plantmod.o: src/plantmod.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/plantmod.f -o dist/debug64/plantmod.o -I dist/debug64

dist/debug64/plantop.o: src/plantop.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/plantop.f -o dist/debug64/plantop.o -I dist/debug64

dist/debug64/pmeas.o: src/pmeas.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/pmeas.f -o dist/debug64/pmeas.o -I dist/debug64

dist/debug64/pminrl.o: src/pminrl.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/pminrl.f -o dist/debug64/pminrl.o -I dist/debug64

dist/debug64/pminrl2.o: src/pminrl2.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/pminrl2.f -o dist/debug64/pminrl2.o -I dist/debug64

dist/debug64/pond.o: src/pond.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/pond.f -o dist/debug64/pond.o -I dist/debug64

dist/debug64/pondhr.o: src/pondhr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/pondhr.f -o dist/debug64/pondhr.o -I dist/debug64

dist/debug64/pothole.o: src/pothole.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/pothole.f -o dist/debug64/pothole.o -I dist/debug64

dist/debug64/potholehr.o: src/potholehr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/potholehr.f -o dist/debug64/potholehr.o -I dist/debug64

dist/debug64/print_hyd.o: src/print_hyd.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/print_hyd.f -o dist/debug64/print_hyd.o -I dist/debug64

dist/debug64/psed.o: src/psed.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/psed.f -o dist/debug64/psed.o -I dist/debug64

dist/debug64/qman.o: src/qman.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/qman.f -o dist/debug64/qman.o -I dist/debug64

dist/debug64/ran1.o: src/ran1.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/ran1.f -o dist/debug64/ran1.o -I dist/debug64

dist/debug64/rchaa.o: src/rchaa.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rchaa.f -o dist/debug64/rchaa.o -I dist/debug64

dist/debug64/rchday.o: src/rchday.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rchday.f -o dist/debug64/rchday.o -I dist/debug64

dist/debug64/rchinit.o: src/rchinit.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rchinit.f -o dist/debug64/rchinit.o -I dist/debug64

dist/debug64/rchmon.o: src/rchmon.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rchmon.f -o dist/debug64/rchmon.o -I dist/debug64

dist/debug64/rchuse.o: src/rchuse.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rchuse.f -o dist/debug64/rchuse.o -I dist/debug64

dist/debug64/rchyr.o: src/rchyr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rchyr.f -o dist/debug64/rchyr.o -I dist/debug64

dist/debug64/reachout.o: src/reachout.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/reachout.f -o dist/debug64/reachout.o -I dist/debug64

dist/debug64/readatmodep.o: src/readatmodep.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readatmodep.f -o dist/debug64/readatmodep.o -I dist/debug64

dist/debug64/readbsn.o: src/readbsn.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  ${LONGFIX} src/readbsn.f -o dist/debug64/readbsn.o -I dist/debug64

dist/debug64/readchm.o: src/readchm.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readchm.f -o dist/debug64/readchm.o -I dist/debug64

dist/debug64/readcnst.o: src/readcnst.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readcnst.f -o dist/debug64/readcnst.o -I dist/debug64

dist/debug64/readfcst.o: src/readfcst.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readfcst.f -o dist/debug64/readfcst.o -I dist/debug64

dist/debug64/readfert.o: src/readfert.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readfert.f -o dist/debug64/readfert.o -I dist/debug64

dist/debug64/readfig.o: src/readfig.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readfig.f -o dist/debug64/readfig.o -I dist/debug64

dist/debug64/readfile.o: src/readfile.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readfile.f -o dist/debug64/readfile.o -I dist/debug64

dist/debug64/readgw.o: src/readgw.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readgw.f -o dist/debug64/readgw.o -I dist/debug64

dist/debug64/readhru.o: src/readhru.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readhru.f -o dist/debug64/readhru.o -I dist/debug64

dist/debug64/readinpt.o: src/readinpt.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readinpt.f -o dist/debug64/readinpt.o -I dist/debug64

dist/debug64/readlup.o: src/readlup.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readlup.f -o dist/debug64/readlup.o -I dist/debug64

dist/debug64/readlwq.o: src/readlwq.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readlwq.f -o dist/debug64/readlwq.o -I dist/debug64

dist/debug64/readmgt.o: src/readmgt.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readmgt.f -o dist/debug64/readmgt.o -I dist/debug64

dist/debug64/readmon.o: src/readmon.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readmon.f -o dist/debug64/readmon.o -I dist/debug64

dist/debug64/readops.o: src/readops.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readops.f -o dist/debug64/readops.o -I dist/debug64

dist/debug64/readpest.o: src/readpest.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readpest.f -o dist/debug64/readpest.o -I dist/debug64

dist/debug64/readplant.o: src/readplant.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readplant.f -o dist/debug64/readplant.o -I dist/debug64

dist/debug64/readpnd.o: src/readpnd.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readpnd.f -o dist/debug64/readpnd.o -I dist/debug64

dist/debug64/readres.o: src/readres.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readres.f -o dist/debug64/readres.o -I dist/debug64

dist/debug64/readrte.o: src/readrte.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readrte.f -o dist/debug64/readrte.o -I dist/debug64

dist/debug64/readru.o: src/readru.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readru.f -o dist/debug64/readru.o -I dist/debug64

dist/debug64/readsdr.o: src/readsdr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readsdr.f -o dist/debug64/readsdr.o -I dist/debug64

dist/debug64/readsepticbz.o: src/readsepticbz.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readsepticbz.f -o dist/debug64/readsepticbz.o -I dist/debug64

dist/debug64/readseptwq.o: src/readseptwq.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readseptwq.f -o dist/debug64/readseptwq.o -I dist/debug64

dist/debug64/readsno.o: src/readsno.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readsno.f -o dist/debug64/readsno.o -I dist/debug64

dist/debug64/readsol.o: src/readsol.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readsol.f -o dist/debug64/readsol.o -I dist/debug64

dist/debug64/readsub.o: src/readsub.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readsub.f -o dist/debug64/readsub.o -I dist/debug64

dist/debug64/readswq.o: src/readswq.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readswq.f -o dist/debug64/readswq.o -I dist/debug64

dist/debug64/readtill.o: src/readtill.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readtill.f -o dist/debug64/readtill.o -I dist/debug64

dist/debug64/readurban.o: src/readurban.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readurban.f -o dist/debug64/readurban.o -I dist/debug64

dist/debug64/readwgn.o: src/readwgn.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readwgn.f -o dist/debug64/readwgn.o -I dist/debug64

dist/debug64/readwus.o: src/readwus.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readwus.f -o dist/debug64/readwus.o -I dist/debug64

dist/debug64/readwwq.o: src/readwwq.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readwwq.f -o dist/debug64/readwwq.o -I dist/debug64

dist/debug64/readyr.o: src/readyr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/readyr.f -o dist/debug64/readyr.o -I dist/debug64

dist/debug64/reccnst.o: src/reccnst.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/reccnst.f -o dist/debug64/reccnst.o -I dist/debug64

dist/debug64/recday.o: src/recday.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/recday.f -o dist/debug64/recday.o -I dist/debug64

dist/debug64/rechour.o: src/rechour.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rechour.f -o dist/debug64/rechour.o -I dist/debug64

dist/debug64/recmon.o: src/recmon.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/recmon.f -o dist/debug64/recmon.o -I dist/debug64

dist/debug64/recyear.o: src/recyear.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/recyear.f -o dist/debug64/recyear.o -I dist/debug64

dist/debug64/regres.o: src/regres.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/regres.f -o dist/debug64/regres.o -I dist/debug64

dist/debug64/res.o: src/res.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/res.f -o dist/debug64/res.o -I dist/debug64

dist/debug64/resbact.o: src/resbact.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/resbact.f -o dist/debug64/resbact.o -I dist/debug64

dist/debug64/resetlu.o: src/resetlu.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/resetlu.f -o dist/debug64/resetlu.o -I dist/debug64

dist/debug64/reshr.o: src/reshr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/reshr.f -o dist/debug64/reshr.o -I dist/debug64

dist/debug64/resinit.o: src/resinit.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/resinit.f -o dist/debug64/resinit.o -I dist/debug64

dist/debug64/resnut.o: src/resnut.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/resnut.f -o dist/debug64/resnut.o -I dist/debug64

dist/debug64/rewind_init.o: src/rewind_init.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rewind_init.f -o dist/debug64/rewind_init.o -I dist/debug64

dist/debug64/rhgen.o: src/rhgen.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rhgen.f -o dist/debug64/rhgen.o -I dist/debug64

dist/debug64/rootfr.o: src/rootfr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rootfr.f -o dist/debug64/rootfr.o -I dist/debug64

dist/debug64/route.o: src/route.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/route.f -o dist/debug64/route.o -I dist/debug64

dist/debug64/routels.o: src/routels.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/routels.f -o dist/debug64/routels.o -I dist/debug64

dist/debug64/routeunit.o: src/routeunit.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/routeunit.f -o dist/debug64/routeunit.o -I dist/debug64

dist/debug64/routres.o: src/routres.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/routres.f -o dist/debug64/routres.o -I dist/debug64

dist/debug64/rsedaa.o: src/rsedaa.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rsedaa.f -o dist/debug64/rsedaa.o -I dist/debug64

dist/debug64/rseday.o: src/rseday.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rseday.f -o dist/debug64/rseday.o -I dist/debug64

dist/debug64/rsedmon.o: src/rsedmon.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rsedmon.f -o dist/debug64/rsedmon.o -I dist/debug64

dist/debug64/rsedyr.o: src/rsedyr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rsedyr.f -o dist/debug64/rsedyr.o -I dist/debug64

dist/debug64/rtbact.o: src/rtbact.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rtbact.f -o dist/debug64/rtbact.o -I dist/debug64

dist/debug64/rtday.o: src/rtday.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rtday.f -o dist/debug64/rtday.o -I dist/debug64

dist/debug64/rteinit.o: src/rteinit.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rteinit.f -o dist/debug64/rteinit.o -I dist/debug64

dist/debug64/rthmusk.o: src/rthmusk.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rthmusk.f -o dist/debug64/rthmusk.o -I dist/debug64

dist/debug64/rthpest.o: src/rthpest.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rthpest.f -o dist/debug64/rthpest.o -I dist/debug64

dist/debug64/rthr.o: src/rthr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rthr.f -o dist/debug64/rthr.o -I dist/debug64

dist/debug64/rthsed.o: src/rthsed.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG} ${LONGFIX} src/rthsed.f -o dist/debug64/rthsed.o -I dist/debug64

dist/debug64/rtmusk.o: src/rtmusk.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rtmusk.f -o dist/debug64/rtmusk.o -I dist/debug64

dist/debug64/rtout.o: src/rtout.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rtout.f -o dist/debug64/rtout.o -I dist/debug64

dist/debug64/rtpest.o: src/rtpest.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rtpest.f -o dist/debug64/rtpest.o -I dist/debug64

dist/debug64/rtsed.o: src/rtsed.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rtsed.f -o dist/debug64/rtsed.o -I dist/debug64

dist/debug64/rtsed_bagnold.o: src/rtsed_bagnold.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rtsed_bagnold.f -o dist/debug64/rtsed_bagnold.o -I dist/debug64

dist/debug64/rtsed_kodatie.o: src/rtsed_kodatie.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rtsed_kodatie.f -o dist/debug64/rtsed_kodatie.o -I dist/debug64

dist/debug64/rtsed_molinas_wu.o: src/rtsed_Molinas_Wu.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rtsed_Molinas_Wu.f -o dist/debug64/rtsed_molinas_wu.o -I dist/debug64

dist/debug64/rtsed_yangsand.o: src/rtsed_yangsand.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/rtsed_yangsand.f -o dist/debug64/rtsed_yangsand.o -I dist/debug64

dist/debug64/sat_excess.o: src/sat_excess.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/sat_excess.f -o dist/debug64/sat_excess.o -I dist/debug64

dist/debug64/save.o: src/save.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/save.f -o dist/debug64/save.o -I dist/debug64

dist/debug64/saveconc.o: src/saveconc.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/saveconc.f -o dist/debug64/saveconc.o -I dist/debug64

dist/debug64/schedule_ops.o: src/schedule_ops.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/schedule_ops.f -o dist/debug64/schedule_ops.o -I dist/debug64

dist/debug64/sched_mgt.o: src/sched_mgt.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/sched_mgt.f -o dist/debug64/sched_mgt.o -I dist/debug64

dist/debug64/simulate.o: src/simulate.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/simulate.f -o dist/debug64/simulate.o -I dist/debug64

dist/debug64/sim_initday.o: src/sim_initday.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/sim_initday.f -o dist/debug64/sim_initday.o -I dist/debug64

dist/debug64/sim_inityr.o: src/sim_inityr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/sim_inityr.f -o dist/debug64/sim_inityr.o -I dist/debug64

dist/debug64/slrgen.o: src/slrgen.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/slrgen.f -o dist/debug64/slrgen.o -I dist/debug64

dist/debug64/smeas.o: src/smeas.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/smeas.f -o dist/debug64/smeas.o -I dist/debug64

dist/debug64/snom.o: src/snom.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/snom.f -o dist/debug64/snom.o -I dist/debug64

dist/debug64/soil_chem.o: src/soil_chem.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/soil_chem.f -o dist/debug64/soil_chem.o -I dist/debug64

dist/debug64/soil_par.o: src/soil_par.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/soil_par.f -o dist/debug64/soil_par.o -I dist/debug64

dist/debug64/soil_phys.o: src/soil_phys.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/soil_phys.f -o dist/debug64/soil_phys.o -I dist/debug64

dist/debug64/soil_write.o: src/soil_write.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/soil_write.f -o dist/debug64/soil_write.o -I dist/debug64

dist/debug64/solp.o: src/solp.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/solp.f -o dist/debug64/solp.o -I dist/debug64

dist/debug64/solt.o: src/solt.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/solt.f -o dist/debug64/solt.o -I dist/debug64

dist/debug64/std1.o: src/std1.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/std1.f -o dist/debug64/std1.o -I dist/debug64

dist/debug64/std2.o: src/std2.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/std2.f -o dist/debug64/std2.o -I dist/debug64

dist/debug64/std3.o: src/std3.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/std3.f -o dist/debug64/std3.o -I dist/debug64

dist/debug64/stdaa.o: src/stdaa.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/stdaa.f -o dist/debug64/stdaa.o -I dist/debug64

dist/debug64/storeinitial.o: src/storeinitial.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/storeinitial.f -o dist/debug64/storeinitial.o -I dist/debug64

dist/debug64/structure.o: src/structure.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/structure.f -o dist/debug64/structure.o -I dist/debug64

dist/debug64/subaa.o: src/subaa.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/subaa.f -o dist/debug64/subaa.o -I dist/debug64

dist/debug64/subbasin.o: src/subbasin.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/subbasin.f -o dist/debug64/subbasin.o -I dist/debug64

dist/debug64/subday.o: src/subday.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/subday.f -o dist/debug64/subday.o -I dist/debug64

dist/debug64/submon.o: src/submon.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/submon.f -o dist/debug64/submon.o -I dist/debug64

dist/debug64/substor.o: src/substor.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/substor.f -o dist/debug64/substor.o -I dist/debug64

dist/debug64/subwq.o: src/subwq.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/subwq.f -o dist/debug64/subwq.o -I dist/debug64

dist/debug64/subyr.o: src/subyr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/subyr.f -o dist/debug64/subyr.o -I dist/debug64

dist/debug64/sub_subbasin.o: src/sub_subbasin.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/sub_subbasin.f -o dist/debug64/sub_subbasin.o -I dist/debug64

dist/debug64/sumhyd.o: src/sumhyd.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/sumhyd.f -o dist/debug64/sumhyd.o -I dist/debug64

dist/debug64/sumv.o: src/sumv.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/sumv.f -o dist/debug64/sumv.o -I dist/debug64

dist/debug64/surface.o: src/surface.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/surface.f -o dist/debug64/surface.o -I dist/debug64

dist/debug64/surfstor.o: src/surfstor.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/surfstor.f -o dist/debug64/surfstor.o -I dist/debug64

dist/debug64/surfst_h2o.o: src/surfst_h2o.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/surfst_h2o.f -o dist/debug64/surfst_h2o.o -I dist/debug64

dist/debug64/surq_daycn.o: src/surq_daycn.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/surq_daycn.f -o dist/debug64/surq_daycn.o -I dist/debug64

dist/debug64/surq_greenampt.o: src/surq_greenampt.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/surq_greenampt.f -o dist/debug64/surq_greenampt.o -I dist/debug64

dist/debug64/swbl.o: src/swbl.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/swbl.f -o dist/debug64/swbl.o -I dist/debug64

dist/debug64/sweep.o: src/sweep.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/sweep.f -o dist/debug64/sweep.o -I dist/debug64

dist/debug64/swu.o: src/swu.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/swu.f -o dist/debug64/swu.o -I dist/debug64

dist/debug64/tair.o: src/tair.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/tair.f -o dist/debug64/tair.o -I dist/debug64

dist/debug64/tgen.o: src/tgen.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/tgen.f -o dist/debug64/tgen.o -I dist/debug64

dist/debug64/theta.o: src/theta.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/theta.f -o dist/debug64/theta.o -I dist/debug64

dist/debug64/tillfactor.o: src/tillfactor.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/tillfactor.f -o dist/debug64/tillfactor.o -I dist/debug64

dist/debug64/tillmix.o: src/tillmix.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/tillmix.f -o dist/debug64/tillmix.o -I dist/debug64

dist/debug64/tmeas.o: src/tmeas.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/tmeas.f -o dist/debug64/tmeas.o -I dist/debug64

dist/debug64/tran.o: src/tran.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/tran.f -o dist/debug64/tran.o -I dist/debug64

dist/debug64/transfer.o: src/transfer.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/transfer.f -o dist/debug64/transfer.o -I dist/debug64

dist/debug64/tstr.o: src/tstr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/tstr.f -o dist/debug64/tstr.o -I dist/debug64

dist/debug64/ttcoef.o: src/ttcoef.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/ttcoef.f -o dist/debug64/ttcoef.o -I dist/debug64

dist/debug64/ttcoef_wway.o: src/ttcoef_wway.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/ttcoef_wway.f -o dist/debug64/ttcoef_wway.o -I dist/debug64

dist/debug64/urban.o: src/urban.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/urban.f -o dist/debug64/urban.o -I dist/debug64

dist/debug64/urbanhr.o: src/urbanhr.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/urbanhr.f -o dist/debug64/urbanhr.o -I dist/debug64

dist/debug64/urb_bmp.o: src/urb_bmp.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/urb_bmp.f -o dist/debug64/urb_bmp.o -I dist/debug64

dist/debug64/varinit.o: src/varinit.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/varinit.f -o dist/debug64/varinit.o -I dist/debug64

dist/debug64/vbl.o: src/vbl.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/vbl.f -o dist/debug64/vbl.o -I dist/debug64

dist/debug64/virtual.o: src/virtual.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/virtual.f -o dist/debug64/virtual.o -I dist/debug64

dist/debug64/volq.o: src/volq.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/volq.f -o dist/debug64/volq.o -I dist/debug64

dist/debug64/washp.o: src/washp.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/washp.f -o dist/debug64/washp.o -I dist/debug64

dist/debug64/watbal.o: src/watbal.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/watbal.f -o dist/debug64/watbal.o -I dist/debug64

dist/debug64/water_hru.o: src/water_hru.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/water_hru.f -o dist/debug64/water_hru.o -I dist/debug64

dist/debug64/watqual.o: src/watqual.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/watqual.f -o dist/debug64/watqual.o -I dist/debug64

dist/debug64/watqual2.o: src/watqual2.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/watqual2.f -o dist/debug64/watqual2.o -I dist/debug64

dist/debug64/wattable.o: src/wattable.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/wattable.f -o dist/debug64/wattable.o -I dist/debug64

dist/debug64/watuse.o: src/watuse.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/watuse.f -o dist/debug64/watuse.o -I dist/debug64

dist/debug64/weatgn.o: src/weatgn.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/weatgn.f -o dist/debug64/weatgn.o -I dist/debug64

dist/debug64/wetlan.o: src/wetlan.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/wetlan.f -o dist/debug64/wetlan.o -I dist/debug64

dist/debug64/wmeas.o: src/wmeas.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/wmeas.f -o dist/debug64/wmeas.o -I dist/debug64

dist/debug64/wndgen.o: src/wndgen.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/wndgen.f -o dist/debug64/wndgen.o -I dist/debug64

dist/debug64/writea.o: src/writea.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/writea.f -o dist/debug64/writea.o -I dist/debug64

dist/debug64/writeaa.o: src/writeaa.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/writeaa.f -o dist/debug64/writeaa.o -I dist/debug64

dist/debug64/writed.o: src/writed.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/writed.f -o dist/debug64/writed.o -I dist/debug64

dist/debug64/writem.o: src/writem.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/writem.f -o dist/debug64/writem.o -I dist/debug64

dist/debug64/xmon.o: src/xmon.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/xmon.f -o dist/debug64/xmon.o -I dist/debug64

dist/debug64/ysed.o: src/ysed.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/ysed.f -o dist/debug64/ysed.o -I dist/debug64

dist/debug64/zero0.o: src/zero0.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/zero0.f -o dist/debug64/zero0.o -I dist/debug64

dist/debug64/zero1.o: src/zero1.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/zero1.f -o dist/debug64/zero1.o -I dist/debug64

dist/debug64/zero2.o: src/zero2.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/zero2.f -o dist/debug64/zero2.o -I dist/debug64

dist/debug64/zeroini.o: src/zeroini.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/zeroini.f -o dist/debug64/zeroini.o -I dist/debug64

dist/debug64/zero_urbn.o: src/zero_urbn.f dist/debug64/main.o
	${FC} ${ARCH64} ${FFLAG} ${DFLAG}  src/zero_urbn.f -o dist/debug64/zero_urbn.o -I dist/debug64

debug64_clean:
	rm -f dist/${NAMEDEBUG64}
	rm -f dist/debug64/*.o
	rm -f dist/debug64/*.mod
	rm -f dist/debug64/*~
	rm -rf dist/debug64

OBJECTS_REL32=dist/rel32/addh.o dist/rel32/albedo.o dist/rel32/allocate_parms.o dist/rel32/alph.o dist/rel32/anfert.o dist/rel32/apex_day.o dist/rel32/apply.o dist/rel32/ascrv.o dist/rel32/atri.o dist/rel32/aunif.o dist/rel32/autoirr.o dist/rel32/aveval.o dist/rel32/bacteria.o dist/rel32/biofilm.o dist/rel32/biozone.o dist/rel32/bmpfixed.o dist/rel32/bmpinit.o dist/rel32/bmp_det_pond.o dist/rel32/bmp_ri_pond.o dist/rel32/bmp_sand_filter.o dist/rel32/bmp_sed_pond.o dist/rel32/bmp_wet_pond.o dist/rel32/buffer.o dist/rel32/burnop.o dist/rel32/canopyint.o dist/rel32/caps.o dist/rel32/carbon_new.o dist/rel32/carbon_zhang2.o dist/rel32/cfactor.o dist/rel32/chkcst.o dist/rel32/clgen.o dist/rel32/clicon.o dist/rel32/command.o dist/rel32/conapply.o dist/rel32/confert.o dist/rel32/crackflow.o dist/rel32/crackvol.o dist/rel32/curno.o dist/rel32/dailycn.o dist/rel32/decay.o dist/rel32/depstor.o dist/rel32/distrib_bmps.o dist/rel32/dormant.o dist/rel32/drains.o dist/rel32/dstn1.o dist/rel32/ee.o dist/rel32/eiusle.o dist/rel32/enrsb.o dist/rel32/erfc.o dist/rel32/estimate_ksat.o dist/rel32/etact.o dist/rel32/etpot.o dist/rel32/expo.o dist/rel32/fert.o dist/rel32/filter.o dist/rel32/filtw.o dist/rel32/finalbal.o dist/rel32/gcycl.o dist/rel32/getallo.o dist/rel32/grass_wway.o dist/rel32/graze.o dist/rel32/grow.o dist/rel32/gwmod.o dist/rel32/gwmod_deep.o dist/rel32/gwnutr.o dist/rel32/gw_no3.o dist/rel32/h2omgt_init.o dist/rel32/harvestop.o dist/rel32/harvgrainop.o dist/rel32/harvkillop.o dist/rel32/header.o dist/rel32/headout.o dist/rel32/hhnoqual.o dist/rel32/hhwatqual.o dist/rel32/hmeas.o dist/rel32/hruaa.o dist/rel32/hruallo.o dist/rel32/hruday.o dist/rel32/hrumon.o dist/rel32/hrupond.o dist/rel32/hrupondhr.o dist/rel32/hruyr.o dist/rel32/hydroinit.o dist/rel32/icl.o dist/rel32/impndaa.o dist/rel32/impndday.o dist/rel32/impndmon.o dist/rel32/impndyr.o dist/rel32/impnd_init.o dist/rel32/irrigate.o dist/rel32/irrsub.o dist/rel32/irr_rch.o dist/rel32/irr_res.o dist/rel32/jdt.o dist/rel32/killop.o dist/rel32/lakeq.o dist/rel32/latsed.o dist/rel32/layersplit.o dist/rel32/lwqdef.o dist/rel32/main.o dist/rel32/ncsed_leach.o dist/rel32/ndenit.o dist/rel32/newtillmix.o dist/rel32/nfix.o dist/rel32/nitvol.o dist/rel32/nlch.o dist/rel32/nminrl.o dist/rel32/noqual.o dist/rel32/npup.o dist/rel32/nrain.o dist/rel32/nup.o dist/rel32/nuts.o dist/rel32/openwth.o dist/rel32/operatn.o dist/rel32/orgn.o dist/rel32/orgncswat.o dist/rel32/origtile.o dist/rel32/ovr_sed.o dist/rel32/percmacro.o dist/rel32/percmain.o dist/rel32/percmicro.o dist/rel32/pestlch.o dist/rel32/pestw.o dist/rel32/pesty.o dist/rel32/pgen.o dist/rel32/pgenhr.o dist/rel32/pkq.o dist/rel32/plantmod.o dist/rel32/plantop.o dist/rel32/pmeas.o dist/rel32/pminrl.o dist/rel32/pminrl2.o dist/rel32/pond.o dist/rel32/pondhr.o dist/rel32/pothole.o dist/rel32/potholehr.o dist/rel32/print_hyd.o dist/rel32/psed.o dist/rel32/qman.o dist/rel32/ran1.o dist/rel32/rchaa.o dist/rel32/rchday.o dist/rel32/rchinit.o dist/rel32/rchmon.o dist/rel32/rchuse.o dist/rel32/rchyr.o dist/rel32/reachout.o dist/rel32/readatmodep.o dist/rel32/readbsn.o dist/rel32/readchm.o dist/rel32/readcnst.o dist/rel32/readfcst.o dist/rel32/readfert.o dist/rel32/readfig.o dist/rel32/readfile.o dist/rel32/readgw.o dist/rel32/readhru.o dist/rel32/readinpt.o dist/rel32/readlup.o dist/rel32/readlwq.o dist/rel32/readmgt.o dist/rel32/readmon.o dist/rel32/readops.o dist/rel32/readpest.o dist/rel32/readplant.o dist/rel32/readpnd.o dist/rel32/readres.o dist/rel32/readrte.o dist/rel32/readru.o dist/rel32/readsdr.o dist/rel32/readsepticbz.o dist/rel32/readseptwq.o dist/rel32/readsno.o dist/rel32/readsol.o dist/rel32/readsub.o dist/rel32/readswq.o dist/rel32/readtill.o dist/rel32/readurban.o dist/rel32/readwgn.o dist/rel32/readwus.o dist/rel32/readwwq.o dist/rel32/readyr.o dist/rel32/reccnst.o dist/rel32/recday.o dist/rel32/rechour.o dist/rel32/recmon.o dist/rel32/recyear.o dist/rel32/regres.o dist/rel32/res.o dist/rel32/resbact.o dist/rel32/resetlu.o dist/rel32/reshr.o dist/rel32/resinit.o dist/rel32/resnut.o dist/rel32/rewind_init.o dist/rel32/rhgen.o dist/rel32/rootfr.o dist/rel32/route.o dist/rel32/routels.o dist/rel32/routeunit.o dist/rel32/routres.o dist/rel32/rsedaa.o dist/rel32/rseday.o dist/rel32/rsedmon.o dist/rel32/rsedyr.o dist/rel32/rtbact.o dist/rel32/rtday.o dist/rel32/rteinit.o dist/rel32/rthmusk.o dist/rel32/rthpest.o dist/rel32/rthr.o dist/rel32/rthsed.o dist/rel32/rtmusk.o dist/rel32/rtout.o dist/rel32/rtpest.o dist/rel32/rtsed.o dist/rel32/rtsed_bagnold.o dist/rel32/rtsed_kodatie.o dist/rel32/rtsed_molinas_wu.o dist/rel32/rtsed_yangsand.o dist/rel32/sat_excess.o dist/rel32/save.o dist/rel32/saveconc.o dist/rel32/schedule_ops.o dist/rel32/sched_mgt.o dist/rel32/simulate.o dist/rel32/sim_initday.o dist/rel32/sim_inityr.o dist/rel32/slrgen.o dist/rel32/smeas.o dist/rel32/snom.o dist/rel32/soil_chem.o dist/rel32/soil_par.o dist/rel32/soil_phys.o dist/rel32/soil_write.o dist/rel32/solp.o dist/rel32/solt.o dist/rel32/std1.o dist/rel32/std2.o dist/rel32/std3.o dist/rel32/stdaa.o dist/rel32/storeinitial.o dist/rel32/structure.o dist/rel32/subaa.o dist/rel32/subbasin.o dist/rel32/subday.o dist/rel32/submon.o dist/rel32/substor.o dist/rel32/subwq.o dist/rel32/subyr.o dist/rel32/sub_subbasin.o dist/rel32/sumhyd.o dist/rel32/sumv.o dist/rel32/surface.o dist/rel32/surfstor.o dist/rel32/surfst_h2o.o dist/rel32/surq_daycn.o dist/rel32/surq_greenampt.o dist/rel32/swbl.o dist/rel32/sweep.o dist/rel32/swu.o dist/rel32/tair.o dist/rel32/tgen.o dist/rel32/theta.o dist/rel32/tillfactor.o dist/rel32/tillmix.o dist/rel32/tmeas.o dist/rel32/tran.o dist/rel32/transfer.o dist/rel32/tstr.o dist/rel32/ttcoef.o dist/rel32/ttcoef_wway.o dist/rel32/urban.o dist/rel32/urbanhr.o dist/rel32/urb_bmp.o dist/rel32/varinit.o dist/rel32/vbl.o dist/rel32/virtual.o dist/rel32/volq.o dist/rel32/washp.o dist/rel32/watbal.o dist/rel32/water_hru.o dist/rel32/watqual.o dist/rel32/watqual2.o dist/rel32/wattable.o dist/rel32/watuse.o dist/rel32/weatgn.o dist/rel32/wetlan.o dist/rel32/wmeas.o dist/rel32/wndgen.o dist/rel32/writea.o dist/rel32/writeaa.o dist/rel32/writed.o dist/rel32/writem.o dist/rel32/xmon.o dist/rel32/ysed.o dist/rel32/zero0.o dist/rel32/zero1.o dist/rel32/zero2.o dist/rel32/zeroini.o dist/rel32/zero_urbn.o

NAMEREL32=swat_rel32
rel32:rel32_mkdir ${NAMEREL32}

rel32_mkdir:
	mkdir -p dist/rel32

${NAMEREL32}: ${OBJECTS_REL32}
	${FC} ${OBJECTS_REL32} ${ARCH32} -static -o dist/${NAMEREL32}


dist/rel32/addh.o: src/addh.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/addh.f -o dist/rel32/addh.o -I dist/rel32

dist/rel32/albedo.o: src/albedo.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/albedo.f -o dist/rel32/albedo.o -I dist/rel32

dist/rel32/allocate_parms.o: src/allocate_parms.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/allocate_parms.f -o dist/rel32/allocate_parms.o -I dist/rel32

dist/rel32/alph.o: src/alph.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/alph.f -o dist/rel32/alph.o -I dist/rel32

dist/rel32/anfert.o: src/anfert.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/anfert.f -o dist/rel32/anfert.o -I dist/rel32

dist/rel32/apex_day.o: src/apex_day.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/apex_day.f -o dist/rel32/apex_day.o -I dist/rel32

dist/rel32/apply.o: src/apply.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/apply.f -o dist/rel32/apply.o -I dist/rel32

dist/rel32/ascrv.o: src/ascrv.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/ascrv.f -o dist/rel32/ascrv.o -I dist/rel32

dist/rel32/atri.o: src/atri.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/atri.f -o dist/rel32/atri.o -I dist/rel32

dist/rel32/aunif.o: src/aunif.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/aunif.f -o dist/rel32/aunif.o -I dist/rel32

dist/rel32/autoirr.o: src/autoirr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/autoirr.f -o dist/rel32/autoirr.o -I dist/rel32

dist/rel32/aveval.o: src/aveval.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/aveval.f -o dist/rel32/aveval.o -I dist/rel32

dist/rel32/bacteria.o: src/bacteria.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/bacteria.f -o dist/rel32/bacteria.o -I dist/rel32

dist/rel32/biofilm.o: src/biofilm.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/biofilm.f -o dist/rel32/biofilm.o -I dist/rel32

dist/rel32/biozone.o: src/biozone.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG} ${LONGFIX} src/biozone.f -o dist/rel32/biozone.o -I dist/rel32

dist/rel32/bmpfixed.o: src/bmpfixed.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/bmpfixed.f -o dist/rel32/bmpfixed.o -I dist/rel32

dist/rel32/bmpinit.o: src/bmpinit.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG} ${LONGFIX} src/bmpinit.f -o dist/rel32/bmpinit.o -I dist/rel32

dist/rel32/bmp_det_pond.o: src/bmp_det_pond.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/bmp_det_pond.f -o dist/rel32/bmp_det_pond.o -I dist/rel32

dist/rel32/bmp_ri_pond.o: src/bmp_ri_pond.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/bmp_ri_pond.f -o dist/rel32/bmp_ri_pond.o -I dist/rel32

dist/rel32/bmp_sand_filter.o: src/bmp_sand_filter.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/bmp_sand_filter.f -o dist/rel32/bmp_sand_filter.o -I dist/rel32

dist/rel32/bmp_sed_pond.o: src/bmp_sed_pond.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/bmp_sed_pond.f -o dist/rel32/bmp_sed_pond.o -I dist/rel32

dist/rel32/bmp_wet_pond.o: src/bmp_wet_pond.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/bmp_wet_pond.f -o dist/rel32/bmp_wet_pond.o -I dist/rel32

dist/rel32/buffer.o: src/buffer.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/buffer.f -o dist/rel32/buffer.o -I dist/rel32

dist/rel32/burnop.o: src/burnop.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/burnop.f -o dist/rel32/burnop.o -I dist/rel32

dist/rel32/canopyint.o: src/canopyint.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/canopyint.f -o dist/rel32/canopyint.o -I dist/rel32

dist/rel32/caps.o: src/caps.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/caps.f -o dist/rel32/caps.o -I dist/rel32

dist/rel32/carbon_new.o: src/carbon_new.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/carbon_new.f -o dist/rel32/carbon_new.o -I dist/rel32

dist/rel32/carbon_zhang2.o: src/carbon_zhang2.f90 dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG} ${LONGFREE} src/carbon_zhang2.f90 -o dist/rel32/carbon_zhang2.o -I dist/rel32

dist/rel32/cfactor.o: src/cfactor.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/cfactor.f -o dist/rel32/cfactor.o -I dist/rel32

dist/rel32/chkcst.o: src/chkcst.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/chkcst.f -o dist/rel32/chkcst.o -I dist/rel32

dist/rel32/clgen.o: src/clgen.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/clgen.f -o dist/rel32/clgen.o -I dist/rel32

dist/rel32/clicon.o: src/clicon.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/clicon.f -o dist/rel32/clicon.o -I dist/rel32

dist/rel32/command.o: src/command.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/command.f -o dist/rel32/command.o -I dist/rel32

dist/rel32/conapply.o: src/conapply.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/conapply.f -o dist/rel32/conapply.o -I dist/rel32

dist/rel32/confert.o: src/confert.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/confert.f -o dist/rel32/confert.o -I dist/rel32

dist/rel32/crackflow.o: src/crackflow.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/crackflow.f -o dist/rel32/crackflow.o -I dist/rel32

dist/rel32/crackvol.o: src/crackvol.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/crackvol.f -o dist/rel32/crackvol.o -I dist/rel32

dist/rel32/curno.o: src/curno.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/curno.f -o dist/rel32/curno.o -I dist/rel32

dist/rel32/dailycn.o: src/dailycn.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/dailycn.f -o dist/rel32/dailycn.o -I dist/rel32

dist/rel32/decay.o: src/decay.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/decay.f -o dist/rel32/decay.o -I dist/rel32

dist/rel32/depstor.o: src/depstor.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/depstor.f -o dist/rel32/depstor.o -I dist/rel32

dist/rel32/distrib_bmps.o: src/distrib_bmps.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/distrib_bmps.f -o dist/rel32/distrib_bmps.o -I dist/rel32

dist/rel32/dormant.o: src/dormant.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/dormant.f -o dist/rel32/dormant.o -I dist/rel32

dist/rel32/drains.o: src/drains.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/drains.f -o dist/rel32/drains.o -I dist/rel32

dist/rel32/dstn1.o: src/dstn1.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/dstn1.f -o dist/rel32/dstn1.o -I dist/rel32

dist/rel32/ee.o: src/ee.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/ee.f -o dist/rel32/ee.o -I dist/rel32

dist/rel32/eiusle.o: src/eiusle.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/eiusle.f -o dist/rel32/eiusle.o -I dist/rel32

dist/rel32/enrsb.o: src/enrsb.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/enrsb.f -o dist/rel32/enrsb.o -I dist/rel32

dist/rel32/erfc.o: src/erfc.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/erfc.f -o dist/rel32/erfc.o -I dist/rel32

dist/rel32/estimate_ksat.o: src/estimate_ksat.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/estimate_ksat.f -o dist/rel32/estimate_ksat.o -I dist/rel32

dist/rel32/etact.o: src/etact.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/etact.f -o dist/rel32/etact.o -I dist/rel32

dist/rel32/etpot.o: src/etpot.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/etpot.f -o dist/rel32/etpot.o -I dist/rel32

dist/rel32/expo.o: src/expo.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/expo.f -o dist/rel32/expo.o -I dist/rel32

dist/rel32/fert.o: src/fert.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/fert.f -o dist/rel32/fert.o -I dist/rel32

dist/rel32/filter.o: src/filter.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/filter.f -o dist/rel32/filter.o -I dist/rel32

dist/rel32/filtw.o: src/filtw.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/filtw.f -o dist/rel32/filtw.o -I dist/rel32

dist/rel32/finalbal.o: src/finalbal.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/finalbal.f -o dist/rel32/finalbal.o -I dist/rel32

dist/rel32/gcycl.o: src/gcycl.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/gcycl.f -o dist/rel32/gcycl.o -I dist/rel32

dist/rel32/getallo.o: src/getallo.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/getallo.f -o dist/rel32/getallo.o -I dist/rel32

dist/rel32/grass_wway.o: src/grass_wway.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/grass_wway.f -o dist/rel32/grass_wway.o -I dist/rel32

dist/rel32/graze.o: src/graze.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/graze.f -o dist/rel32/graze.o -I dist/rel32

dist/rel32/grow.o: src/grow.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/grow.f -o dist/rel32/grow.o -I dist/rel32

dist/rel32/gwmod.o: src/gwmod.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/gwmod.f -o dist/rel32/gwmod.o -I dist/rel32

dist/rel32/gwmod_deep.o: src/gwmod_deep.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/gwmod_deep.f -o dist/rel32/gwmod_deep.o -I dist/rel32

dist/rel32/gwnutr.o: src/gwnutr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/gwnutr.f -o dist/rel32/gwnutr.o -I dist/rel32

dist/rel32/gw_no3.o: src/gw_no3.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/gw_no3.f -o dist/rel32/gw_no3.o -I dist/rel32

dist/rel32/h2omgt_init.o: src/h2omgt_init.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/h2omgt_init.f -o dist/rel32/h2omgt_init.o -I dist/rel32

dist/rel32/harvestop.o: src/harvestop.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/harvestop.f -o dist/rel32/harvestop.o -I dist/rel32

dist/rel32/harvgrainop.o: src/harvgrainop.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/harvgrainop.f -o dist/rel32/harvgrainop.o -I dist/rel32

dist/rel32/harvkillop.o: src/harvkillop.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/harvkillop.f -o dist/rel32/harvkillop.o -I dist/rel32

dist/rel32/header.o: src/header.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/header.f -o dist/rel32/header.o -I dist/rel32

dist/rel32/headout.o: src/headout.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/headout.f -o dist/rel32/headout.o -I dist/rel32

dist/rel32/hhnoqual.o: src/hhnoqual.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/hhnoqual.f -o dist/rel32/hhnoqual.o -I dist/rel32

dist/rel32/hhwatqual.o: src/hhwatqual.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/hhwatqual.f -o dist/rel32/hhwatqual.o -I dist/rel32

dist/rel32/hmeas.o: src/hmeas.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/hmeas.f -o dist/rel32/hmeas.o -I dist/rel32

dist/rel32/hruaa.o: src/hruaa.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/hruaa.f -o dist/rel32/hruaa.o -I dist/rel32

dist/rel32/hruallo.o: src/hruallo.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/hruallo.f -o dist/rel32/hruallo.o -I dist/rel32

dist/rel32/hruday.o: src/hruday.f90 dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/hruday.f90 -o dist/rel32/hruday.o -I dist/rel32

dist/rel32/hrumon.o: src/hrumon.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/hrumon.f -o dist/rel32/hrumon.o -I dist/rel32

dist/rel32/hrupond.o: src/hrupond.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/hrupond.f -o dist/rel32/hrupond.o -I dist/rel32

dist/rel32/hrupondhr.o: src/hrupondhr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/hrupondhr.f -o dist/rel32/hrupondhr.o -I dist/rel32

dist/rel32/hruyr.o: src/hruyr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/hruyr.f -o dist/rel32/hruyr.o -I dist/rel32

dist/rel32/hydroinit.o: src/hydroinit.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/hydroinit.f -o dist/rel32/hydroinit.o -I dist/rel32

dist/rel32/icl.o: src/icl.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/icl.f -o dist/rel32/icl.o -I dist/rel32

dist/rel32/impndaa.o: src/impndaa.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/impndaa.f -o dist/rel32/impndaa.o -I dist/rel32

dist/rel32/impndday.o: src/impndday.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/impndday.f -o dist/rel32/impndday.o -I dist/rel32

dist/rel32/impndmon.o: src/impndmon.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/impndmon.f -o dist/rel32/impndmon.o -I dist/rel32

dist/rel32/impndyr.o: src/impndyr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/impndyr.f -o dist/rel32/impndyr.o -I dist/rel32

dist/rel32/impnd_init.o: src/impnd_init.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/impnd_init.f -o dist/rel32/impnd_init.o -I dist/rel32

dist/rel32/irrigate.o: src/irrigate.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/irrigate.f -o dist/rel32/irrigate.o -I dist/rel32

dist/rel32/irrsub.o: src/irrsub.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/irrsub.f -o dist/rel32/irrsub.o -I dist/rel32

dist/rel32/irr_rch.o: src/irr_rch.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/irr_rch.f -o dist/rel32/irr_rch.o -I dist/rel32

dist/rel32/irr_res.o: src/irr_res.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/irr_res.f -o dist/rel32/irr_res.o -I dist/rel32

dist/rel32/jdt.o: src/jdt.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/jdt.f -o dist/rel32/jdt.o -I dist/rel32

dist/rel32/killop.o: src/killop.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/killop.f -o dist/rel32/killop.o -I dist/rel32

dist/rel32/lakeq.o: src/lakeq.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/lakeq.f -o dist/rel32/lakeq.o -I dist/rel32

dist/rel32/latsed.o: src/latsed.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/latsed.f -o dist/rel32/latsed.o -I dist/rel32

dist/rel32/layersplit.o: src/layersplit.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/layersplit.f -o dist/rel32/layersplit.o -I dist/rel32

dist/rel32/lwqdef.o: src/lwqdef.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/lwqdef.f -o dist/rel32/lwqdef.o -I dist/rel32

dist/rel32/main.o: src/main.f src/modparm.f
	${FC} ${ARCH32} ${FFLAG} ${RFLAG} ${LONGFIX} src/main.f -o dist/rel32/main.o -J dist/rel32

dist/rel32/ncsed_leach.o: src/NCsed_leach.f90 dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/NCsed_leach.f90 -o dist/rel32/ncsed_leach.o -I dist/rel32

dist/rel32/ndenit.o: src/ndenit.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  ${LONGFIX} src/ndenit.f -o dist/rel32/ndenit.o -I dist/rel32

dist/rel32/newtillmix.o: src/newtillmix.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/newtillmix.f -o dist/rel32/newtillmix.o -I dist/rel32

dist/rel32/nfix.o: src/nfix.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/nfix.f -o dist/rel32/nfix.o -I dist/rel32

dist/rel32/nitvol.o: src/nitvol.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/nitvol.f -o dist/rel32/nitvol.o -I dist/rel32

dist/rel32/nlch.o: src/nlch.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/nlch.f -o dist/rel32/nlch.o -I dist/rel32

dist/rel32/nminrl.o: src/nminrl.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  ${LONGFIX} src/nminrl.f -o dist/rel32/nminrl.o -I dist/rel32

dist/rel32/noqual.o: src/noqual.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/noqual.f -o dist/rel32/noqual.o -I dist/rel32

dist/rel32/npup.o: src/npup.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/npup.f -o dist/rel32/npup.o -I dist/rel32

dist/rel32/nrain.o: src/nrain.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/nrain.f -o dist/rel32/nrain.o -I dist/rel32

dist/rel32/nup.o: src/nup.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/nup.f -o dist/rel32/nup.o -I dist/rel32

dist/rel32/nuts.o: src/nuts.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/nuts.f -o dist/rel32/nuts.o -I dist/rel32

dist/rel32/openwth.o: src/openwth.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/openwth.f -o dist/rel32/openwth.o -I dist/rel32

dist/rel32/operatn.o: src/operatn.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/operatn.f -o dist/rel32/operatn.o -I dist/rel32

dist/rel32/orgn.o: src/orgn.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/orgn.f -o dist/rel32/orgn.o -I dist/rel32

dist/rel32/orgncswat.o: src/orgncswat.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/orgncswat.f -o dist/rel32/orgncswat.o -I dist/rel32

dist/rel32/origtile.o: src/origtile.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/origtile.f -o dist/rel32/origtile.o -I dist/rel32

dist/rel32/ovr_sed.o: src/ovr_sed.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG} ${LONGFIX} src/ovr_sed.f -o dist/rel32/ovr_sed.o -I dist/rel32

dist/rel32/percmacro.o: src/percmacro.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/percmacro.f -o dist/rel32/percmacro.o -I dist/rel32

dist/rel32/percmain.o: src/percmain.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG} ${LONGFIX} src/percmain.f -o dist/rel32/percmain.o -I dist/rel32

dist/rel32/percmicro.o: src/percmicro.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/percmicro.f -o dist/rel32/percmicro.o -I dist/rel32

dist/rel32/pestlch.o: src/pestlch.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/pestlch.f -o dist/rel32/pestlch.o -I dist/rel32

dist/rel32/pestw.o: src/pestw.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/pestw.f -o dist/rel32/pestw.o -I dist/rel32

dist/rel32/pesty.o: src/pesty.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/pesty.f -o dist/rel32/pesty.o -I dist/rel32

dist/rel32/pgen.o: src/pgen.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/pgen.f -o dist/rel32/pgen.o -I dist/rel32

dist/rel32/pgenhr.o: src/pgenhr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/pgenhr.f -o dist/rel32/pgenhr.o -I dist/rel32

dist/rel32/pkq.o: src/pkq.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/pkq.f -o dist/rel32/pkq.o -I dist/rel32

dist/rel32/plantmod.o: src/plantmod.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/plantmod.f -o dist/rel32/plantmod.o -I dist/rel32

dist/rel32/plantop.o: src/plantop.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/plantop.f -o dist/rel32/plantop.o -I dist/rel32

dist/rel32/pmeas.o: src/pmeas.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/pmeas.f -o dist/rel32/pmeas.o -I dist/rel32

dist/rel32/pminrl.o: src/pminrl.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/pminrl.f -o dist/rel32/pminrl.o -I dist/rel32

dist/rel32/pminrl2.o: src/pminrl2.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/pminrl2.f -o dist/rel32/pminrl2.o -I dist/rel32

dist/rel32/pond.o: src/pond.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/pond.f -o dist/rel32/pond.o -I dist/rel32

dist/rel32/pondhr.o: src/pondhr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/pondhr.f -o dist/rel32/pondhr.o -I dist/rel32

dist/rel32/pothole.o: src/pothole.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/pothole.f -o dist/rel32/pothole.o -I dist/rel32

dist/rel32/potholehr.o: src/potholehr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/potholehr.f -o dist/rel32/potholehr.o -I dist/rel32

dist/rel32/print_hyd.o: src/print_hyd.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/print_hyd.f -o dist/rel32/print_hyd.o -I dist/rel32

dist/rel32/psed.o: src/psed.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/psed.f -o dist/rel32/psed.o -I dist/rel32

dist/rel32/qman.o: src/qman.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/qman.f -o dist/rel32/qman.o -I dist/rel32

dist/rel32/ran1.o: src/ran1.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/ran1.f -o dist/rel32/ran1.o -I dist/rel32

dist/rel32/rchaa.o: src/rchaa.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rchaa.f -o dist/rel32/rchaa.o -I dist/rel32

dist/rel32/rchday.o: src/rchday.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rchday.f -o dist/rel32/rchday.o -I dist/rel32

dist/rel32/rchinit.o: src/rchinit.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rchinit.f -o dist/rel32/rchinit.o -I dist/rel32

dist/rel32/rchmon.o: src/rchmon.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rchmon.f -o dist/rel32/rchmon.o -I dist/rel32

dist/rel32/rchuse.o: src/rchuse.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rchuse.f -o dist/rel32/rchuse.o -I dist/rel32

dist/rel32/rchyr.o: src/rchyr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rchyr.f -o dist/rel32/rchyr.o -I dist/rel32

dist/rel32/reachout.o: src/reachout.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/reachout.f -o dist/rel32/reachout.o -I dist/rel32

dist/rel32/readatmodep.o: src/readatmodep.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readatmodep.f -o dist/rel32/readatmodep.o -I dist/rel32

dist/rel32/readbsn.o: src/readbsn.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  ${LONGFIX} src/readbsn.f -o dist/rel32/readbsn.o -I dist/rel32

dist/rel32/readchm.o: src/readchm.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readchm.f -o dist/rel32/readchm.o -I dist/rel32

dist/rel32/readcnst.o: src/readcnst.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readcnst.f -o dist/rel32/readcnst.o -I dist/rel32

dist/rel32/readfcst.o: src/readfcst.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readfcst.f -o dist/rel32/readfcst.o -I dist/rel32

dist/rel32/readfert.o: src/readfert.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readfert.f -o dist/rel32/readfert.o -I dist/rel32

dist/rel32/readfig.o: src/readfig.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readfig.f -o dist/rel32/readfig.o -I dist/rel32

dist/rel32/readfile.o: src/readfile.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readfile.f -o dist/rel32/readfile.o -I dist/rel32

dist/rel32/readgw.o: src/readgw.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readgw.f -o dist/rel32/readgw.o -I dist/rel32

dist/rel32/readhru.o: src/readhru.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readhru.f -o dist/rel32/readhru.o -I dist/rel32

dist/rel32/readinpt.o: src/readinpt.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readinpt.f -o dist/rel32/readinpt.o -I dist/rel32

dist/rel32/readlup.o: src/readlup.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readlup.f -o dist/rel32/readlup.o -I dist/rel32

dist/rel32/readlwq.o: src/readlwq.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readlwq.f -o dist/rel32/readlwq.o -I dist/rel32

dist/rel32/readmgt.o: src/readmgt.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readmgt.f -o dist/rel32/readmgt.o -I dist/rel32

dist/rel32/readmon.o: src/readmon.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readmon.f -o dist/rel32/readmon.o -I dist/rel32

dist/rel32/readops.o: src/readops.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readops.f -o dist/rel32/readops.o -I dist/rel32

dist/rel32/readpest.o: src/readpest.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readpest.f -o dist/rel32/readpest.o -I dist/rel32

dist/rel32/readplant.o: src/readplant.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readplant.f -o dist/rel32/readplant.o -I dist/rel32

dist/rel32/readpnd.o: src/readpnd.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readpnd.f -o dist/rel32/readpnd.o -I dist/rel32

dist/rel32/readres.o: src/readres.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readres.f -o dist/rel32/readres.o -I dist/rel32

dist/rel32/readrte.o: src/readrte.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readrte.f -o dist/rel32/readrte.o -I dist/rel32

dist/rel32/readru.o: src/readru.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readru.f -o dist/rel32/readru.o -I dist/rel32

dist/rel32/readsdr.o: src/readsdr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readsdr.f -o dist/rel32/readsdr.o -I dist/rel32

dist/rel32/readsepticbz.o: src/readsepticbz.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readsepticbz.f -o dist/rel32/readsepticbz.o -I dist/rel32

dist/rel32/readseptwq.o: src/readseptwq.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readseptwq.f -o dist/rel32/readseptwq.o -I dist/rel32

dist/rel32/readsno.o: src/readsno.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readsno.f -o dist/rel32/readsno.o -I dist/rel32

dist/rel32/readsol.o: src/readsol.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readsol.f -o dist/rel32/readsol.o -I dist/rel32

dist/rel32/readsub.o: src/readsub.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readsub.f -o dist/rel32/readsub.o -I dist/rel32

dist/rel32/readswq.o: src/readswq.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readswq.f -o dist/rel32/readswq.o -I dist/rel32

dist/rel32/readtill.o: src/readtill.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readtill.f -o dist/rel32/readtill.o -I dist/rel32

dist/rel32/readurban.o: src/readurban.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readurban.f -o dist/rel32/readurban.o -I dist/rel32

dist/rel32/readwgn.o: src/readwgn.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readwgn.f -o dist/rel32/readwgn.o -I dist/rel32

dist/rel32/readwus.o: src/readwus.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readwus.f -o dist/rel32/readwus.o -I dist/rel32

dist/rel32/readwwq.o: src/readwwq.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readwwq.f -o dist/rel32/readwwq.o -I dist/rel32

dist/rel32/readyr.o: src/readyr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/readyr.f -o dist/rel32/readyr.o -I dist/rel32

dist/rel32/reccnst.o: src/reccnst.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/reccnst.f -o dist/rel32/reccnst.o -I dist/rel32

dist/rel32/recday.o: src/recday.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/recday.f -o dist/rel32/recday.o -I dist/rel32

dist/rel32/rechour.o: src/rechour.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rechour.f -o dist/rel32/rechour.o -I dist/rel32

dist/rel32/recmon.o: src/recmon.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/recmon.f -o dist/rel32/recmon.o -I dist/rel32

dist/rel32/recyear.o: src/recyear.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/recyear.f -o dist/rel32/recyear.o -I dist/rel32

dist/rel32/regres.o: src/regres.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/regres.f -o dist/rel32/regres.o -I dist/rel32

dist/rel32/res.o: src/res.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/res.f -o dist/rel32/res.o -I dist/rel32

dist/rel32/resbact.o: src/resbact.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/resbact.f -o dist/rel32/resbact.o -I dist/rel32

dist/rel32/resetlu.o: src/resetlu.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/resetlu.f -o dist/rel32/resetlu.o -I dist/rel32

dist/rel32/reshr.o: src/reshr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/reshr.f -o dist/rel32/reshr.o -I dist/rel32

dist/rel32/resinit.o: src/resinit.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/resinit.f -o dist/rel32/resinit.o -I dist/rel32

dist/rel32/resnut.o: src/resnut.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/resnut.f -o dist/rel32/resnut.o -I dist/rel32

dist/rel32/rewind_init.o: src/rewind_init.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rewind_init.f -o dist/rel32/rewind_init.o -I dist/rel32

dist/rel32/rhgen.o: src/rhgen.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rhgen.f -o dist/rel32/rhgen.o -I dist/rel32

dist/rel32/rootfr.o: src/rootfr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rootfr.f -o dist/rel32/rootfr.o -I dist/rel32

dist/rel32/route.o: src/route.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/route.f -o dist/rel32/route.o -I dist/rel32

dist/rel32/routels.o: src/routels.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/routels.f -o dist/rel32/routels.o -I dist/rel32

dist/rel32/routeunit.o: src/routeunit.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/routeunit.f -o dist/rel32/routeunit.o -I dist/rel32

dist/rel32/routres.o: src/routres.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/routres.f -o dist/rel32/routres.o -I dist/rel32

dist/rel32/rsedaa.o: src/rsedaa.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rsedaa.f -o dist/rel32/rsedaa.o -I dist/rel32

dist/rel32/rseday.o: src/rseday.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rseday.f -o dist/rel32/rseday.o -I dist/rel32

dist/rel32/rsedmon.o: src/rsedmon.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rsedmon.f -o dist/rel32/rsedmon.o -I dist/rel32

dist/rel32/rsedyr.o: src/rsedyr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rsedyr.f -o dist/rel32/rsedyr.o -I dist/rel32

dist/rel32/rtbact.o: src/rtbact.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rtbact.f -o dist/rel32/rtbact.o -I dist/rel32

dist/rel32/rtday.o: src/rtday.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rtday.f -o dist/rel32/rtday.o -I dist/rel32

dist/rel32/rteinit.o: src/rteinit.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rteinit.f -o dist/rel32/rteinit.o -I dist/rel32

dist/rel32/rthmusk.o: src/rthmusk.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rthmusk.f -o dist/rel32/rthmusk.o -I dist/rel32

dist/rel32/rthpest.o: src/rthpest.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rthpest.f -o dist/rel32/rthpest.o -I dist/rel32

dist/rel32/rthr.o: src/rthr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rthr.f -o dist/rel32/rthr.o -I dist/rel32

dist/rel32/rthsed.o: src/rthsed.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG} ${LONGFIX} src/rthsed.f -o dist/rel32/rthsed.o -I dist/rel32

dist/rel32/rtmusk.o: src/rtmusk.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rtmusk.f -o dist/rel32/rtmusk.o -I dist/rel32

dist/rel32/rtout.o: src/rtout.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rtout.f -o dist/rel32/rtout.o -I dist/rel32

dist/rel32/rtpest.o: src/rtpest.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rtpest.f -o dist/rel32/rtpest.o -I dist/rel32

dist/rel32/rtsed.o: src/rtsed.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rtsed.f -o dist/rel32/rtsed.o -I dist/rel32

dist/rel32/rtsed_bagnold.o: src/rtsed_bagnold.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rtsed_bagnold.f -o dist/rel32/rtsed_bagnold.o -I dist/rel32

dist/rel32/rtsed_kodatie.o: src/rtsed_kodatie.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rtsed_kodatie.f -o dist/rel32/rtsed_kodatie.o -I dist/rel32

dist/rel32/rtsed_molinas_wu.o: src/rtsed_Molinas_Wu.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rtsed_Molinas_Wu.f -o dist/rel32/rtsed_molinas_wu.o -I dist/rel32

dist/rel32/rtsed_yangsand.o: src/rtsed_yangsand.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/rtsed_yangsand.f -o dist/rel32/rtsed_yangsand.o -I dist/rel32

dist/rel32/sat_excess.o: src/sat_excess.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/sat_excess.f -o dist/rel32/sat_excess.o -I dist/rel32

dist/rel32/save.o: src/save.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/save.f -o dist/rel32/save.o -I dist/rel32

dist/rel32/saveconc.o: src/saveconc.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/saveconc.f -o dist/rel32/saveconc.o -I dist/rel32

dist/rel32/schedule_ops.o: src/schedule_ops.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/schedule_ops.f -o dist/rel32/schedule_ops.o -I dist/rel32

dist/rel32/sched_mgt.o: src/sched_mgt.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/sched_mgt.f -o dist/rel32/sched_mgt.o -I dist/rel32

dist/rel32/simulate.o: src/simulate.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/simulate.f -o dist/rel32/simulate.o -I dist/rel32

dist/rel32/sim_initday.o: src/sim_initday.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/sim_initday.f -o dist/rel32/sim_initday.o -I dist/rel32

dist/rel32/sim_inityr.o: src/sim_inityr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/sim_inityr.f -o dist/rel32/sim_inityr.o -I dist/rel32

dist/rel32/slrgen.o: src/slrgen.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/slrgen.f -o dist/rel32/slrgen.o -I dist/rel32

dist/rel32/smeas.o: src/smeas.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/smeas.f -o dist/rel32/smeas.o -I dist/rel32

dist/rel32/snom.o: src/snom.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/snom.f -o dist/rel32/snom.o -I dist/rel32

dist/rel32/soil_chem.o: src/soil_chem.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/soil_chem.f -o dist/rel32/soil_chem.o -I dist/rel32

dist/rel32/soil_par.o: src/soil_par.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/soil_par.f -o dist/rel32/soil_par.o -I dist/rel32

dist/rel32/soil_phys.o: src/soil_phys.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/soil_phys.f -o dist/rel32/soil_phys.o -I dist/rel32

dist/rel32/soil_write.o: src/soil_write.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/soil_write.f -o dist/rel32/soil_write.o -I dist/rel32

dist/rel32/solp.o: src/solp.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/solp.f -o dist/rel32/solp.o -I dist/rel32

dist/rel32/solt.o: src/solt.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/solt.f -o dist/rel32/solt.o -I dist/rel32

dist/rel32/std1.o: src/std1.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/std1.f -o dist/rel32/std1.o -I dist/rel32

dist/rel32/std2.o: src/std2.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/std2.f -o dist/rel32/std2.o -I dist/rel32

dist/rel32/std3.o: src/std3.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/std3.f -o dist/rel32/std3.o -I dist/rel32

dist/rel32/stdaa.o: src/stdaa.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/stdaa.f -o dist/rel32/stdaa.o -I dist/rel32

dist/rel32/storeinitial.o: src/storeinitial.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/storeinitial.f -o dist/rel32/storeinitial.o -I dist/rel32

dist/rel32/structure.o: src/structure.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/structure.f -o dist/rel32/structure.o -I dist/rel32

dist/rel32/subaa.o: src/subaa.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/subaa.f -o dist/rel32/subaa.o -I dist/rel32

dist/rel32/subbasin.o: src/subbasin.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/subbasin.f -o dist/rel32/subbasin.o -I dist/rel32

dist/rel32/subday.o: src/subday.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/subday.f -o dist/rel32/subday.o -I dist/rel32

dist/rel32/submon.o: src/submon.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/submon.f -o dist/rel32/submon.o -I dist/rel32

dist/rel32/substor.o: src/substor.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/substor.f -o dist/rel32/substor.o -I dist/rel32

dist/rel32/subwq.o: src/subwq.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/subwq.f -o dist/rel32/subwq.o -I dist/rel32

dist/rel32/subyr.o: src/subyr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/subyr.f -o dist/rel32/subyr.o -I dist/rel32

dist/rel32/sub_subbasin.o: src/sub_subbasin.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/sub_subbasin.f -o dist/rel32/sub_subbasin.o -I dist/rel32

dist/rel32/sumhyd.o: src/sumhyd.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/sumhyd.f -o dist/rel32/sumhyd.o -I dist/rel32

dist/rel32/sumv.o: src/sumv.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/sumv.f -o dist/rel32/sumv.o -I dist/rel32

dist/rel32/surface.o: src/surface.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/surface.f -o dist/rel32/surface.o -I dist/rel32

dist/rel32/surfstor.o: src/surfstor.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/surfstor.f -o dist/rel32/surfstor.o -I dist/rel32

dist/rel32/surfst_h2o.o: src/surfst_h2o.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/surfst_h2o.f -o dist/rel32/surfst_h2o.o -I dist/rel32

dist/rel32/surq_daycn.o: src/surq_daycn.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/surq_daycn.f -o dist/rel32/surq_daycn.o -I dist/rel32

dist/rel32/surq_greenampt.o: src/surq_greenampt.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/surq_greenampt.f -o dist/rel32/surq_greenampt.o -I dist/rel32

dist/rel32/swbl.o: src/swbl.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/swbl.f -o dist/rel32/swbl.o -I dist/rel32

dist/rel32/sweep.o: src/sweep.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/sweep.f -o dist/rel32/sweep.o -I dist/rel32

dist/rel32/swu.o: src/swu.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/swu.f -o dist/rel32/swu.o -I dist/rel32

dist/rel32/tair.o: src/tair.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/tair.f -o dist/rel32/tair.o -I dist/rel32

dist/rel32/tgen.o: src/tgen.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/tgen.f -o dist/rel32/tgen.o -I dist/rel32

dist/rel32/theta.o: src/theta.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/theta.f -o dist/rel32/theta.o -I dist/rel32

dist/rel32/tillfactor.o: src/tillfactor.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/tillfactor.f -o dist/rel32/tillfactor.o -I dist/rel32

dist/rel32/tillmix.o: src/tillmix.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/tillmix.f -o dist/rel32/tillmix.o -I dist/rel32

dist/rel32/tmeas.o: src/tmeas.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/tmeas.f -o dist/rel32/tmeas.o -I dist/rel32

dist/rel32/tran.o: src/tran.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/tran.f -o dist/rel32/tran.o -I dist/rel32

dist/rel32/transfer.o: src/transfer.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/transfer.f -o dist/rel32/transfer.o -I dist/rel32

dist/rel32/tstr.o: src/tstr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/tstr.f -o dist/rel32/tstr.o -I dist/rel32

dist/rel32/ttcoef.o: src/ttcoef.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/ttcoef.f -o dist/rel32/ttcoef.o -I dist/rel32

dist/rel32/ttcoef_wway.o: src/ttcoef_wway.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/ttcoef_wway.f -o dist/rel32/ttcoef_wway.o -I dist/rel32

dist/rel32/urban.o: src/urban.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/urban.f -o dist/rel32/urban.o -I dist/rel32

dist/rel32/urbanhr.o: src/urbanhr.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/urbanhr.f -o dist/rel32/urbanhr.o -I dist/rel32

dist/rel32/urb_bmp.o: src/urb_bmp.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/urb_bmp.f -o dist/rel32/urb_bmp.o -I dist/rel32

dist/rel32/varinit.o: src/varinit.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/varinit.f -o dist/rel32/varinit.o -I dist/rel32

dist/rel32/vbl.o: src/vbl.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/vbl.f -o dist/rel32/vbl.o -I dist/rel32

dist/rel32/virtual.o: src/virtual.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/virtual.f -o dist/rel32/virtual.o -I dist/rel32

dist/rel32/volq.o: src/volq.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/volq.f -o dist/rel32/volq.o -I dist/rel32

dist/rel32/washp.o: src/washp.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/washp.f -o dist/rel32/washp.o -I dist/rel32

dist/rel32/watbal.o: src/watbal.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/watbal.f -o dist/rel32/watbal.o -I dist/rel32

dist/rel32/water_hru.o: src/water_hru.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/water_hru.f -o dist/rel32/water_hru.o -I dist/rel32

dist/rel32/watqual.o: src/watqual.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/watqual.f -o dist/rel32/watqual.o -I dist/rel32

dist/rel32/watqual2.o: src/watqual2.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/watqual2.f -o dist/rel32/watqual2.o -I dist/rel32

dist/rel32/wattable.o: src/wattable.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/wattable.f -o dist/rel32/wattable.o -I dist/rel32

dist/rel32/watuse.o: src/watuse.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/watuse.f -o dist/rel32/watuse.o -I dist/rel32

dist/rel32/weatgn.o: src/weatgn.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/weatgn.f -o dist/rel32/weatgn.o -I dist/rel32

dist/rel32/wetlan.o: src/wetlan.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/wetlan.f -o dist/rel32/wetlan.o -I dist/rel32

dist/rel32/wmeas.o: src/wmeas.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/wmeas.f -o dist/rel32/wmeas.o -I dist/rel32

dist/rel32/wndgen.o: src/wndgen.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/wndgen.f -o dist/rel32/wndgen.o -I dist/rel32

dist/rel32/writea.o: src/writea.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/writea.f -o dist/rel32/writea.o -I dist/rel32

dist/rel32/writeaa.o: src/writeaa.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/writeaa.f -o dist/rel32/writeaa.o -I dist/rel32

dist/rel32/writed.o: src/writed.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/writed.f -o dist/rel32/writed.o -I dist/rel32

dist/rel32/writem.o: src/writem.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/writem.f -o dist/rel32/writem.o -I dist/rel32

dist/rel32/xmon.o: src/xmon.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/xmon.f -o dist/rel32/xmon.o -I dist/rel32

dist/rel32/ysed.o: src/ysed.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/ysed.f -o dist/rel32/ysed.o -I dist/rel32

dist/rel32/zero0.o: src/zero0.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/zero0.f -o dist/rel32/zero0.o -I dist/rel32

dist/rel32/zero1.o: src/zero1.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/zero1.f -o dist/rel32/zero1.o -I dist/rel32

dist/rel32/zero2.o: src/zero2.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/zero2.f -o dist/rel32/zero2.o -I dist/rel32

dist/rel32/zeroini.o: src/zeroini.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/zeroini.f -o dist/rel32/zeroini.o -I dist/rel32

dist/rel32/zero_urbn.o: src/zero_urbn.f dist/rel32/main.o
	${FC} ${ARCH32} ${FFLAG} ${RFLAG}  src/zero_urbn.f -o dist/rel32/zero_urbn.o -I dist/rel32

rel32_clean:
	rm -f dist/${NAMEREL32}
	rm -f dist/rel32/*.o
	rm -f dist/rel32/*.mod
	rm -f dist/rel32/*~
	rm -rf dist/rel32

OBJECTS_REL64=  dist/rel64/addh.o dist/rel64/albedo.o dist/rel64/allocate_parms.o dist/rel64/alph.o dist/rel64/anfert.o dist/rel64/apex_day.o dist/rel64/apply.o dist/rel64/ascrv.o dist/rel64/atri.o dist/rel64/aunif.o dist/rel64/autoirr.o dist/rel64/aveval.o dist/rel64/bacteria.o dist/rel64/biofilm.o dist/rel64/biozone.o dist/rel64/bmpfixed.o dist/rel64/bmpinit.o dist/rel64/bmp_det_pond.o dist/rel64/bmp_ri_pond.o dist/rel64/bmp_sand_filter.o dist/rel64/bmp_sed_pond.o dist/rel64/bmp_wet_pond.o dist/rel64/buffer.o dist/rel64/burnop.o dist/rel64/canopyint.o dist/rel64/caps.o dist/rel64/carbon_new.o dist/rel64/carbon_zhang2.o dist/rel64/cfactor.o dist/rel64/chkcst.o dist/rel64/clgen.o dist/rel64/clicon.o dist/rel64/command.o dist/rel64/conapply.o dist/rel64/confert.o dist/rel64/crackflow.o dist/rel64/crackvol.o dist/rel64/curno.o dist/rel64/dailycn.o dist/rel64/decay.o dist/rel64/depstor.o dist/rel64/distrib_bmps.o dist/rel64/dormant.o dist/rel64/drains.o dist/rel64/dstn1.o dist/rel64/ee.o dist/rel64/eiusle.o dist/rel64/enrsb.o dist/rel64/erfc.o dist/rel64/estimate_ksat.o dist/rel64/etact.o dist/rel64/etpot.o dist/rel64/expo.o dist/rel64/fert.o dist/rel64/filter.o dist/rel64/filtw.o dist/rel64/finalbal.o dist/rel64/gcycl.o dist/rel64/getallo.o dist/rel64/grass_wway.o dist/rel64/graze.o dist/rel64/grow.o dist/rel64/gwmod.o dist/rel64/gwmod_deep.o dist/rel64/gwnutr.o dist/rel64/gw_no3.o dist/rel64/h2omgt_init.o dist/rel64/harvestop.o dist/rel64/harvgrainop.o dist/rel64/harvkillop.o dist/rel64/header.o dist/rel64/headout.o dist/rel64/hhnoqual.o dist/rel64/hhwatqual.o dist/rel64/hmeas.o dist/rel64/hruaa.o dist/rel64/hruallo.o dist/rel64/hruday.o dist/rel64/hrumon.o dist/rel64/hrupond.o dist/rel64/hrupondhr.o dist/rel64/hruyr.o dist/rel64/hydroinit.o dist/rel64/icl.o dist/rel64/impndaa.o dist/rel64/impndday.o dist/rel64/impndmon.o dist/rel64/impndyr.o dist/rel64/impnd_init.o dist/rel64/irrigate.o dist/rel64/irrsub.o dist/rel64/irr_rch.o dist/rel64/irr_res.o dist/rel64/jdt.o dist/rel64/killop.o dist/rel64/lakeq.o dist/rel64/latsed.o dist/rel64/layersplit.o dist/rel64/lwqdef.o dist/rel64/main.o dist/rel64/ncsed_leach.o dist/rel64/ndenit.o dist/rel64/newtillmix.o dist/rel64/nfix.o dist/rel64/nitvol.o dist/rel64/nlch.o dist/rel64/nminrl.o dist/rel64/noqual.o dist/rel64/npup.o dist/rel64/nrain.o dist/rel64/nup.o dist/rel64/nuts.o dist/rel64/openwth.o dist/rel64/operatn.o dist/rel64/orgn.o dist/rel64/orgncswat.o dist/rel64/origtile.o dist/rel64/ovr_sed.o dist/rel64/percmacro.o dist/rel64/percmain.o dist/rel64/percmicro.o dist/rel64/pestlch.o dist/rel64/pestw.o dist/rel64/pesty.o dist/rel64/pgen.o dist/rel64/pgenhr.o dist/rel64/pkq.o dist/rel64/plantmod.o dist/rel64/plantop.o dist/rel64/pmeas.o dist/rel64/pminrl.o dist/rel64/pminrl2.o dist/rel64/pond.o dist/rel64/pondhr.o dist/rel64/pothole.o dist/rel64/potholehr.o dist/rel64/print_hyd.o dist/rel64/psed.o dist/rel64/qman.o dist/rel64/ran1.o dist/rel64/rchaa.o dist/rel64/rchday.o dist/rel64/rchinit.o dist/rel64/rchmon.o dist/rel64/rchuse.o dist/rel64/rchyr.o dist/rel64/reachout.o dist/rel64/readatmodep.o dist/rel64/readbsn.o dist/rel64/readchm.o dist/rel64/readcnst.o dist/rel64/readfcst.o dist/rel64/readfert.o dist/rel64/readfig.o dist/rel64/readfile.o dist/rel64/readgw.o dist/rel64/readhru.o dist/rel64/readinpt.o dist/rel64/readlup.o dist/rel64/readlwq.o dist/rel64/readmgt.o dist/rel64/readmon.o dist/rel64/readops.o dist/rel64/readpest.o dist/rel64/readplant.o dist/rel64/readpnd.o dist/rel64/readres.o dist/rel64/readrte.o dist/rel64/readru.o dist/rel64/readsdr.o dist/rel64/readsepticbz.o dist/rel64/readseptwq.o dist/rel64/readsno.o dist/rel64/readsol.o dist/rel64/readsub.o dist/rel64/readswq.o dist/rel64/readtill.o dist/rel64/readurban.o dist/rel64/readwgn.o dist/rel64/readwus.o dist/rel64/readwwq.o dist/rel64/readyr.o dist/rel64/reccnst.o dist/rel64/recday.o dist/rel64/rechour.o dist/rel64/recmon.o dist/rel64/recyear.o dist/rel64/regres.o dist/rel64/res.o dist/rel64/resbact.o dist/rel64/resetlu.o dist/rel64/reshr.o dist/rel64/resinit.o dist/rel64/resnut.o dist/rel64/rewind_init.o dist/rel64/rhgen.o dist/rel64/rootfr.o dist/rel64/route.o dist/rel64/routels.o dist/rel64/routeunit.o dist/rel64/routres.o dist/rel64/rsedaa.o dist/rel64/rseday.o dist/rel64/rsedmon.o dist/rel64/rsedyr.o dist/rel64/rtbact.o dist/rel64/rtday.o dist/rel64/rteinit.o dist/rel64/rthmusk.o dist/rel64/rthpest.o dist/rel64/rthr.o dist/rel64/rthsed.o dist/rel64/rtmusk.o dist/rel64/rtout.o dist/rel64/rtpest.o dist/rel64/rtsed.o dist/rel64/rtsed_bagnold.o dist/rel64/rtsed_kodatie.o dist/rel64/rtsed_molinas_wu.o dist/rel64/rtsed_yangsand.o dist/rel64/sat_excess.o dist/rel64/save.o dist/rel64/saveconc.o dist/rel64/schedule_ops.o dist/rel64/sched_mgt.o dist/rel64/simulate.o dist/rel64/sim_initday.o dist/rel64/sim_inityr.o dist/rel64/slrgen.o dist/rel64/smeas.o dist/rel64/snom.o dist/rel64/soil_chem.o dist/rel64/soil_par.o dist/rel64/soil_phys.o dist/rel64/soil_write.o dist/rel64/solp.o dist/rel64/solt.o dist/rel64/std1.o dist/rel64/std2.o dist/rel64/std3.o dist/rel64/stdaa.o dist/rel64/storeinitial.o dist/rel64/structure.o dist/rel64/subaa.o dist/rel64/subbasin.o dist/rel64/subday.o dist/rel64/submon.o dist/rel64/substor.o dist/rel64/subwq.o dist/rel64/subyr.o dist/rel64/sub_subbasin.o dist/rel64/sumhyd.o dist/rel64/sumv.o dist/rel64/surface.o dist/rel64/surfstor.o dist/rel64/surfst_h2o.o dist/rel64/surq_daycn.o dist/rel64/surq_greenampt.o dist/rel64/swbl.o dist/rel64/sweep.o dist/rel64/swu.o dist/rel64/tair.o dist/rel64/tgen.o dist/rel64/theta.o dist/rel64/tillfactor.o dist/rel64/tillmix.o dist/rel64/tmeas.o dist/rel64/tran.o dist/rel64/transfer.o dist/rel64/tstr.o dist/rel64/ttcoef.o dist/rel64/ttcoef_wway.o dist/rel64/urban.o dist/rel64/urbanhr.o dist/rel64/urb_bmp.o dist/rel64/varinit.o dist/rel64/vbl.o dist/rel64/virtual.o dist/rel64/volq.o dist/rel64/washp.o dist/rel64/watbal.o dist/rel64/water_hru.o dist/rel64/watqual.o dist/rel64/watqual2.o dist/rel64/wattable.o dist/rel64/watuse.o dist/rel64/weatgn.o dist/rel64/wetlan.o dist/rel64/wmeas.o dist/rel64/wndgen.o dist/rel64/writea.o dist/rel64/writeaa.o dist/rel64/writed.o dist/rel64/writem.o dist/rel64/xmon.o dist/rel64/ysed.o dist/rel64/zero0.o dist/rel64/zero1.o dist/rel64/zero2.o dist/rel64/zeroini.o dist/rel64/zero_urbn.o

NAMEREL64=swat_rel64
rel64:rel64_mkdir ${NAMEREL64}

rel64_mkdir:
	mkdir -p dist/rel64

${NAMEREL64}: ${OBJECTS_REL64}
	${FC} ${OBJECTS_REL64} ${ARCH64} -static -o dist/${NAMEREL64}


dist/rel64/addh.o: src/addh.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/addh.f -o dist/rel64/addh.o -I dist/rel64

dist/rel64/albedo.o: src/albedo.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/albedo.f -o dist/rel64/albedo.o -I dist/rel64

dist/rel64/allocate_parms.o: src/allocate_parms.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/allocate_parms.f -o dist/rel64/allocate_parms.o -I dist/rel64

dist/rel64/alph.o: src/alph.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/alph.f -o dist/rel64/alph.o -I dist/rel64

dist/rel64/anfert.o: src/anfert.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/anfert.f -o dist/rel64/anfert.o -I dist/rel64

dist/rel64/apex_day.o: src/apex_day.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/apex_day.f -o dist/rel64/apex_day.o -I dist/rel64

dist/rel64/apply.o: src/apply.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/apply.f -o dist/rel64/apply.o -I dist/rel64

dist/rel64/ascrv.o: src/ascrv.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/ascrv.f -o dist/rel64/ascrv.o -I dist/rel64

dist/rel64/atri.o: src/atri.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/atri.f -o dist/rel64/atri.o -I dist/rel64

dist/rel64/aunif.o: src/aunif.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/aunif.f -o dist/rel64/aunif.o -I dist/rel64

dist/rel64/autoirr.o: src/autoirr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/autoirr.f -o dist/rel64/autoirr.o -I dist/rel64

dist/rel64/aveval.o: src/aveval.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/aveval.f -o dist/rel64/aveval.o -I dist/rel64

dist/rel64/bacteria.o: src/bacteria.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/bacteria.f -o dist/rel64/bacteria.o -I dist/rel64

dist/rel64/biofilm.o: src/biofilm.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/biofilm.f -o dist/rel64/biofilm.o -I dist/rel64

dist/rel64/biozone.o: src/biozone.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} src/biozone.f -o dist/rel64/biozone.o -I dist/rel64

dist/rel64/bmpfixed.o: src/bmpfixed.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/bmpfixed.f -o dist/rel64/bmpfixed.o -I dist/rel64

dist/rel64/bmpinit.o: src/bmpinit.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} src/bmpinit.f -o dist/rel64/bmpinit.o -I dist/rel64

dist/rel64/bmp_det_pond.o: src/bmp_det_pond.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/bmp_det_pond.f -o dist/rel64/bmp_det_pond.o -I dist/rel64

dist/rel64/bmp_ri_pond.o: src/bmp_ri_pond.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/bmp_ri_pond.f -o dist/rel64/bmp_ri_pond.o -I dist/rel64

dist/rel64/bmp_sand_filter.o: src/bmp_sand_filter.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/bmp_sand_filter.f -o dist/rel64/bmp_sand_filter.o -I dist/rel64

dist/rel64/bmp_sed_pond.o: src/bmp_sed_pond.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/bmp_sed_pond.f -o dist/rel64/bmp_sed_pond.o -I dist/rel64

dist/rel64/bmp_wet_pond.o: src/bmp_wet_pond.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/bmp_wet_pond.f -o dist/rel64/bmp_wet_pond.o -I dist/rel64

dist/rel64/buffer.o: src/buffer.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/buffer.f -o dist/rel64/buffer.o -I dist/rel64

dist/rel64/burnop.o: src/burnop.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/burnop.f -o dist/rel64/burnop.o -I dist/rel64

dist/rel64/canopyint.o: src/canopyint.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/canopyint.f -o dist/rel64/canopyint.o -I dist/rel64

dist/rel64/caps.o: src/caps.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/caps.f -o dist/rel64/caps.o -I dist/rel64

dist/rel64/carbon_new.o: src/carbon_new.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/carbon_new.f -o dist/rel64/carbon_new.o -I dist/rel64

dist/rel64/carbon_zhang2.o: src/carbon_zhang2.f90 dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFREE} src/carbon_zhang2.f90 -o dist/rel64/carbon_zhang2.o -I dist/rel64

dist/rel64/cfactor.o: src/cfactor.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/cfactor.f -o dist/rel64/cfactor.o -I dist/rel64

dist/rel64/chkcst.o: src/chkcst.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/chkcst.f -o dist/rel64/chkcst.o -I dist/rel64

dist/rel64/clgen.o: src/clgen.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/clgen.f -o dist/rel64/clgen.o -I dist/rel64

dist/rel64/clicon.o: src/clicon.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/clicon.f -o dist/rel64/clicon.o -I dist/rel64

dist/rel64/command.o: src/command.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/command.f -o dist/rel64/command.o -I dist/rel64

dist/rel64/conapply.o: src/conapply.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/conapply.f -o dist/rel64/conapply.o -I dist/rel64

dist/rel64/confert.o: src/confert.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/confert.f -o dist/rel64/confert.o -I dist/rel64

dist/rel64/crackflow.o: src/crackflow.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/crackflow.f -o dist/rel64/crackflow.o -I dist/rel64

dist/rel64/crackvol.o: src/crackvol.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/crackvol.f -o dist/rel64/crackvol.o -I dist/rel64

dist/rel64/curno.o: src/curno.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/curno.f -o dist/rel64/curno.o -I dist/rel64

dist/rel64/dailycn.o: src/dailycn.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/dailycn.f -o dist/rel64/dailycn.o -I dist/rel64

dist/rel64/decay.o: src/decay.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/decay.f -o dist/rel64/decay.o -I dist/rel64

dist/rel64/depstor.o: src/depstor.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/depstor.f -o dist/rel64/depstor.o -I dist/rel64

dist/rel64/distrib_bmps.o: src/distrib_bmps.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/distrib_bmps.f -o dist/rel64/distrib_bmps.o -I dist/rel64

dist/rel64/dormant.o: src/dormant.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/dormant.f -o dist/rel64/dormant.o -I dist/rel64

dist/rel64/drains.o: src/drains.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/drains.f -o dist/rel64/drains.o -I dist/rel64

dist/rel64/dstn1.o: src/dstn1.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/dstn1.f -o dist/rel64/dstn1.o -I dist/rel64

dist/rel64/ee.o: src/ee.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/ee.f -o dist/rel64/ee.o -I dist/rel64

dist/rel64/eiusle.o: src/eiusle.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/eiusle.f -o dist/rel64/eiusle.o -I dist/rel64

dist/rel64/enrsb.o: src/enrsb.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/enrsb.f -o dist/rel64/enrsb.o -I dist/rel64

dist/rel64/erfc.o: src/erfc.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/erfc.f -o dist/rel64/erfc.o -I dist/rel64

dist/rel64/estimate_ksat.o: src/estimate_ksat.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/estimate_ksat.f -o dist/rel64/estimate_ksat.o -I dist/rel64

dist/rel64/etact.o: src/etact.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/etact.f -o dist/rel64/etact.o -I dist/rel64

dist/rel64/etpot.o: src/etpot.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/etpot.f -o dist/rel64/etpot.o -I dist/rel64

dist/rel64/expo.o: src/expo.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/expo.f -o dist/rel64/expo.o -I dist/rel64

dist/rel64/fert.o: src/fert.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/fert.f -o dist/rel64/fert.o -I dist/rel64

dist/rel64/filter.o: src/filter.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/filter.f -o dist/rel64/filter.o -I dist/rel64

dist/rel64/filtw.o: src/filtw.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/filtw.f -o dist/rel64/filtw.o -I dist/rel64

dist/rel64/finalbal.o: src/finalbal.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/finalbal.f -o dist/rel64/finalbal.o -I dist/rel64

dist/rel64/gcycl.o: src/gcycl.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/gcycl.f -o dist/rel64/gcycl.o -I dist/rel64

dist/rel64/getallo.o: src/getallo.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/getallo.f -o dist/rel64/getallo.o -I dist/rel64

dist/rel64/grass_wway.o: src/grass_wway.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/grass_wway.f -o dist/rel64/grass_wway.o -I dist/rel64

dist/rel64/graze.o: src/graze.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/graze.f -o dist/rel64/graze.o -I dist/rel64

dist/rel64/grow.o: src/grow.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/grow.f -o dist/rel64/grow.o -I dist/rel64

dist/rel64/gwmod.o: src/gwmod.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/gwmod.f -o dist/rel64/gwmod.o -I dist/rel64

dist/rel64/gwmod_deep.o: src/gwmod_deep.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/gwmod_deep.f -o dist/rel64/gwmod_deep.o -I dist/rel64

dist/rel64/gwnutr.o: src/gwnutr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/gwnutr.f -o dist/rel64/gwnutr.o -I dist/rel64

dist/rel64/gw_no3.o: src/gw_no3.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/gw_no3.f -o dist/rel64/gw_no3.o -I dist/rel64

dist/rel64/h2omgt_init.o: src/h2omgt_init.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/h2omgt_init.f -o dist/rel64/h2omgt_init.o -I dist/rel64

dist/rel64/harvestop.o: src/harvestop.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/harvestop.f -o dist/rel64/harvestop.o -I dist/rel64

dist/rel64/harvgrainop.o: src/harvgrainop.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/harvgrainop.f -o dist/rel64/harvgrainop.o -I dist/rel64

dist/rel64/harvkillop.o: src/harvkillop.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/harvkillop.f -o dist/rel64/harvkillop.o -I dist/rel64

dist/rel64/header.o: src/header.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/header.f -o dist/rel64/header.o -I dist/rel64

dist/rel64/headout.o: src/headout.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/headout.f -o dist/rel64/headout.o -I dist/rel64

dist/rel64/hhnoqual.o: src/hhnoqual.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/hhnoqual.f -o dist/rel64/hhnoqual.o -I dist/rel64

dist/rel64/hhwatqual.o: src/hhwatqual.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/hhwatqual.f -o dist/rel64/hhwatqual.o -I dist/rel64

dist/rel64/hmeas.o: src/hmeas.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/hmeas.f -o dist/rel64/hmeas.o -I dist/rel64

dist/rel64/hruaa.o: src/hruaa.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/hruaa.f -o dist/rel64/hruaa.o -I dist/rel64

dist/rel64/hruallo.o: src/hruallo.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/hruallo.f -o dist/rel64/hruallo.o -I dist/rel64

dist/rel64/hruday.o: src/hruday.f90 dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/hruday.f90 -o dist/rel64/hruday.o -I dist/rel64

dist/rel64/hrumon.o: src/hrumon.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/hrumon.f -o dist/rel64/hrumon.o -I dist/rel64

dist/rel64/hrupond.o: src/hrupond.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/hrupond.f -o dist/rel64/hrupond.o -I dist/rel64

dist/rel64/hrupondhr.o: src/hrupondhr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/hrupondhr.f -o dist/rel64/hrupondhr.o -I dist/rel64

dist/rel64/hruyr.o: src/hruyr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/hruyr.f -o dist/rel64/hruyr.o -I dist/rel64

dist/rel64/hydroinit.o: src/hydroinit.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/hydroinit.f -o dist/rel64/hydroinit.o -I dist/rel64

dist/rel64/icl.o: src/icl.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/icl.f -o dist/rel64/icl.o -I dist/rel64

dist/rel64/impndaa.o: src/impndaa.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/impndaa.f -o dist/rel64/impndaa.o -I dist/rel64

dist/rel64/impndday.o: src/impndday.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/impndday.f -o dist/rel64/impndday.o -I dist/rel64

dist/rel64/impndmon.o: src/impndmon.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/impndmon.f -o dist/rel64/impndmon.o -I dist/rel64

dist/rel64/impndyr.o: src/impndyr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/impndyr.f -o dist/rel64/impndyr.o -I dist/rel64

dist/rel64/impnd_init.o: src/impnd_init.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/impnd_init.f -o dist/rel64/impnd_init.o -I dist/rel64

dist/rel64/irrigate.o: src/irrigate.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/irrigate.f -o dist/rel64/irrigate.o -I dist/rel64

dist/rel64/irrsub.o: src/irrsub.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/irrsub.f -o dist/rel64/irrsub.o -I dist/rel64

dist/rel64/irr_rch.o: src/irr_rch.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/irr_rch.f -o dist/rel64/irr_rch.o -I dist/rel64

dist/rel64/irr_res.o: src/irr_res.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/irr_res.f -o dist/rel64/irr_res.o -I dist/rel64

dist/rel64/jdt.o: src/jdt.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/jdt.f -o dist/rel64/jdt.o -I dist/rel64

dist/rel64/killop.o: src/killop.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/killop.f -o dist/rel64/killop.o -I dist/rel64

dist/rel64/lakeq.o: src/lakeq.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/lakeq.f -o dist/rel64/lakeq.o -I dist/rel64

dist/rel64/latsed.o: src/latsed.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/latsed.f -o dist/rel64/latsed.o -I dist/rel64

dist/rel64/layersplit.o: src/layersplit.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/layersplit.f -o dist/rel64/layersplit.o -I dist/rel64

dist/rel64/lwqdef.o: src/lwqdef.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/lwqdef.f -o dist/rel64/lwqdef.o -I dist/rel64

dist/rel64/main.o: src/main.f src/modparm.f
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} src/main.f -o dist/rel64/main.o -J dist/rel64

dist/rel64/ncsed_leach.o: src/NCsed_leach.f90 dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/NCsed_leach.f90 -o dist/rel64/ncsed_leach.o -I dist/rel64

dist/rel64/ndenit.o: src/ndenit.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ${LONGFIX} src/ndenit.f -o dist/rel64/ndenit.o -I dist/rel64

dist/rel64/newtillmix.o: src/newtillmix.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/newtillmix.f -o dist/rel64/newtillmix.o -I dist/rel64

dist/rel64/nfix.o: src/nfix.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/nfix.f -o dist/rel64/nfix.o -I dist/rel64

dist/rel64/nitvol.o: src/nitvol.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/nitvol.f -o dist/rel64/nitvol.o -I dist/rel64

dist/rel64/nlch.o: src/nlch.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/nlch.f -o dist/rel64/nlch.o -I dist/rel64

dist/rel64/nminrl.o: src/nminrl.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ${LONGFIX} src/nminrl.f -o dist/rel64/nminrl.o -I dist/rel64

dist/rel64/noqual.o: src/noqual.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/noqual.f -o dist/rel64/noqual.o -I dist/rel64

dist/rel64/npup.o: src/npup.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/npup.f -o dist/rel64/npup.o -I dist/rel64

dist/rel64/nrain.o: src/nrain.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/nrain.f -o dist/rel64/nrain.o -I dist/rel64

dist/rel64/nup.o: src/nup.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/nup.f -o dist/rel64/nup.o -I dist/rel64

dist/rel64/nuts.o: src/nuts.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/nuts.f -o dist/rel64/nuts.o -I dist/rel64

dist/rel64/openwth.o: src/openwth.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/openwth.f -o dist/rel64/openwth.o -I dist/rel64

dist/rel64/operatn.o: src/operatn.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/operatn.f -o dist/rel64/operatn.o -I dist/rel64

dist/rel64/orgn.o: src/orgn.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/orgn.f -o dist/rel64/orgn.o -I dist/rel64

dist/rel64/orgncswat.o: src/orgncswat.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/orgncswat.f -o dist/rel64/orgncswat.o -I dist/rel64

dist/rel64/origtile.o: src/origtile.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/origtile.f -o dist/rel64/origtile.o -I dist/rel64

dist/rel64/ovr_sed.o: src/ovr_sed.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} src/ovr_sed.f -o dist/rel64/ovr_sed.o -I dist/rel64

dist/rel64/percmacro.o: src/percmacro.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/percmacro.f -o dist/rel64/percmacro.o -I dist/rel64

dist/rel64/percmain.o: src/percmain.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} src/percmain.f -o dist/rel64/percmain.o -I dist/rel64

dist/rel64/percmicro.o: src/percmicro.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/percmicro.f -o dist/rel64/percmicro.o -I dist/rel64

dist/rel64/pestlch.o: src/pestlch.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/pestlch.f -o dist/rel64/pestlch.o -I dist/rel64

dist/rel64/pestw.o: src/pestw.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/pestw.f -o dist/rel64/pestw.o -I dist/rel64

dist/rel64/pesty.o: src/pesty.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/pesty.f -o dist/rel64/pesty.o -I dist/rel64

dist/rel64/pgen.o: src/pgen.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/pgen.f -o dist/rel64/pgen.o -I dist/rel64

dist/rel64/pgenhr.o: src/pgenhr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/pgenhr.f -o dist/rel64/pgenhr.o -I dist/rel64

dist/rel64/pkq.o: src/pkq.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/pkq.f -o dist/rel64/pkq.o -I dist/rel64

dist/rel64/plantmod.o: src/plantmod.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/plantmod.f -o dist/rel64/plantmod.o -I dist/rel64

dist/rel64/plantop.o: src/plantop.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/plantop.f -o dist/rel64/plantop.o -I dist/rel64

dist/rel64/pmeas.o: src/pmeas.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/pmeas.f -o dist/rel64/pmeas.o -I dist/rel64

dist/rel64/pminrl.o: src/pminrl.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/pminrl.f -o dist/rel64/pminrl.o -I dist/rel64

dist/rel64/pminrl2.o: src/pminrl2.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/pminrl2.f -o dist/rel64/pminrl2.o -I dist/rel64

dist/rel64/pond.o: src/pond.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/pond.f -o dist/rel64/pond.o -I dist/rel64

dist/rel64/pondhr.o: src/pondhr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/pondhr.f -o dist/rel64/pondhr.o -I dist/rel64

dist/rel64/pothole.o: src/pothole.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/pothole.f -o dist/rel64/pothole.o -I dist/rel64

dist/rel64/potholehr.o: src/potholehr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/potholehr.f -o dist/rel64/potholehr.o -I dist/rel64

dist/rel64/print_hyd.o: src/print_hyd.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/print_hyd.f -o dist/rel64/print_hyd.o -I dist/rel64

dist/rel64/psed.o: src/psed.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/psed.f -o dist/rel64/psed.o -I dist/rel64

dist/rel64/qman.o: src/qman.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/qman.f -o dist/rel64/qman.o -I dist/rel64

dist/rel64/ran1.o: src/ran1.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/ran1.f -o dist/rel64/ran1.o -I dist/rel64

dist/rel64/rchaa.o: src/rchaa.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rchaa.f -o dist/rel64/rchaa.o -I dist/rel64

dist/rel64/rchday.o: src/rchday.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rchday.f -o dist/rel64/rchday.o -I dist/rel64

dist/rel64/rchinit.o: src/rchinit.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rchinit.f -o dist/rel64/rchinit.o -I dist/rel64

dist/rel64/rchmon.o: src/rchmon.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rchmon.f -o dist/rel64/rchmon.o -I dist/rel64

dist/rel64/rchuse.o: src/rchuse.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rchuse.f -o dist/rel64/rchuse.o -I dist/rel64

dist/rel64/rchyr.o: src/rchyr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rchyr.f -o dist/rel64/rchyr.o -I dist/rel64

dist/rel64/reachout.o: src/reachout.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/reachout.f -o dist/rel64/reachout.o -I dist/rel64

dist/rel64/readatmodep.o: src/readatmodep.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readatmodep.f -o dist/rel64/readatmodep.o -I dist/rel64

dist/rel64/readbsn.o: src/readbsn.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  ${LONGFIX} src/readbsn.f -o dist/rel64/readbsn.o -I dist/rel64

dist/rel64/readchm.o: src/readchm.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readchm.f -o dist/rel64/readchm.o -I dist/rel64

dist/rel64/readcnst.o: src/readcnst.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readcnst.f -o dist/rel64/readcnst.o -I dist/rel64

dist/rel64/readfcst.o: src/readfcst.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readfcst.f -o dist/rel64/readfcst.o -I dist/rel64

dist/rel64/readfert.o: src/readfert.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readfert.f -o dist/rel64/readfert.o -I dist/rel64

dist/rel64/readfig.o: src/readfig.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readfig.f -o dist/rel64/readfig.o -I dist/rel64

dist/rel64/readfile.o: src/readfile.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readfile.f -o dist/rel64/readfile.o -I dist/rel64

dist/rel64/readgw.o: src/readgw.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readgw.f -o dist/rel64/readgw.o -I dist/rel64

dist/rel64/readhru.o: src/readhru.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readhru.f -o dist/rel64/readhru.o -I dist/rel64

dist/rel64/readinpt.o: src/readinpt.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readinpt.f -o dist/rel64/readinpt.o -I dist/rel64

dist/rel64/readlup.o: src/readlup.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readlup.f -o dist/rel64/readlup.o -I dist/rel64

dist/rel64/readlwq.o: src/readlwq.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readlwq.f -o dist/rel64/readlwq.o -I dist/rel64

dist/rel64/readmgt.o: src/readmgt.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readmgt.f -o dist/rel64/readmgt.o -I dist/rel64

dist/rel64/readmon.o: src/readmon.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readmon.f -o dist/rel64/readmon.o -I dist/rel64

dist/rel64/readops.o: src/readops.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readops.f -o dist/rel64/readops.o -I dist/rel64

dist/rel64/readpest.o: src/readpest.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readpest.f -o dist/rel64/readpest.o -I dist/rel64

dist/rel64/readplant.o: src/readplant.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readplant.f -o dist/rel64/readplant.o -I dist/rel64

dist/rel64/readpnd.o: src/readpnd.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readpnd.f -o dist/rel64/readpnd.o -I dist/rel64

dist/rel64/readres.o: src/readres.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readres.f -o dist/rel64/readres.o -I dist/rel64

dist/rel64/readrte.o: src/readrte.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readrte.f -o dist/rel64/readrte.o -I dist/rel64

dist/rel64/readru.o: src/readru.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readru.f -o dist/rel64/readru.o -I dist/rel64

dist/rel64/readsdr.o: src/readsdr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readsdr.f -o dist/rel64/readsdr.o -I dist/rel64

dist/rel64/readsepticbz.o: src/readsepticbz.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readsepticbz.f -o dist/rel64/readsepticbz.o -I dist/rel64

dist/rel64/readseptwq.o: src/readseptwq.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readseptwq.f -o dist/rel64/readseptwq.o -I dist/rel64

dist/rel64/readsno.o: src/readsno.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readsno.f -o dist/rel64/readsno.o -I dist/rel64

dist/rel64/readsol.o: src/readsol.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readsol.f -o dist/rel64/readsol.o -I dist/rel64

dist/rel64/readsub.o: src/readsub.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readsub.f -o dist/rel64/readsub.o -I dist/rel64

dist/rel64/readswq.o: src/readswq.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readswq.f -o dist/rel64/readswq.o -I dist/rel64

dist/rel64/readtill.o: src/readtill.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readtill.f -o dist/rel64/readtill.o -I dist/rel64

dist/rel64/readurban.o: src/readurban.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readurban.f -o dist/rel64/readurban.o -I dist/rel64

dist/rel64/readwgn.o: src/readwgn.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readwgn.f -o dist/rel64/readwgn.o -I dist/rel64

dist/rel64/readwus.o: src/readwus.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readwus.f -o dist/rel64/readwus.o -I dist/rel64

dist/rel64/readwwq.o: src/readwwq.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readwwq.f -o dist/rel64/readwwq.o -I dist/rel64

dist/rel64/readyr.o: src/readyr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/readyr.f -o dist/rel64/readyr.o -I dist/rel64

dist/rel64/reccnst.o: src/reccnst.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/reccnst.f -o dist/rel64/reccnst.o -I dist/rel64

dist/rel64/recday.o: src/recday.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/recday.f -o dist/rel64/recday.o -I dist/rel64

dist/rel64/rechour.o: src/rechour.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rechour.f -o dist/rel64/rechour.o -I dist/rel64

dist/rel64/recmon.o: src/recmon.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/recmon.f -o dist/rel64/recmon.o -I dist/rel64

dist/rel64/recyear.o: src/recyear.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/recyear.f -o dist/rel64/recyear.o -I dist/rel64

dist/rel64/regres.o: src/regres.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/regres.f -o dist/rel64/regres.o -I dist/rel64

dist/rel64/res.o: src/res.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/res.f -o dist/rel64/res.o -I dist/rel64

dist/rel64/resbact.o: src/resbact.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/resbact.f -o dist/rel64/resbact.o -I dist/rel64

dist/rel64/resetlu.o: src/resetlu.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/resetlu.f -o dist/rel64/resetlu.o -I dist/rel64

dist/rel64/reshr.o: src/reshr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/reshr.f -o dist/rel64/reshr.o -I dist/rel64

dist/rel64/resinit.o: src/resinit.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/resinit.f -o dist/rel64/resinit.o -I dist/rel64

dist/rel64/resnut.o: src/resnut.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/resnut.f -o dist/rel64/resnut.o -I dist/rel64

dist/rel64/rewind_init.o: src/rewind_init.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rewind_init.f -o dist/rel64/rewind_init.o -I dist/rel64

dist/rel64/rhgen.o: src/rhgen.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rhgen.f -o dist/rel64/rhgen.o -I dist/rel64

dist/rel64/rootfr.o: src/rootfr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rootfr.f -o dist/rel64/rootfr.o -I dist/rel64

dist/rel64/route.o: src/route.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/route.f -o dist/rel64/route.o -I dist/rel64

dist/rel64/routels.o: src/routels.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/routels.f -o dist/rel64/routels.o -I dist/rel64

dist/rel64/routeunit.o: src/routeunit.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/routeunit.f -o dist/rel64/routeunit.o -I dist/rel64

dist/rel64/routres.o: src/routres.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/routres.f -o dist/rel64/routres.o -I dist/rel64

dist/rel64/rsedaa.o: src/rsedaa.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rsedaa.f -o dist/rel64/rsedaa.o -I dist/rel64

dist/rel64/rseday.o: src/rseday.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rseday.f -o dist/rel64/rseday.o -I dist/rel64

dist/rel64/rsedmon.o: src/rsedmon.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rsedmon.f -o dist/rel64/rsedmon.o -I dist/rel64

dist/rel64/rsedyr.o: src/rsedyr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rsedyr.f -o dist/rel64/rsedyr.o -I dist/rel64

dist/rel64/rtbact.o: src/rtbact.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rtbact.f -o dist/rel64/rtbact.o -I dist/rel64

dist/rel64/rtday.o: src/rtday.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rtday.f -o dist/rel64/rtday.o -I dist/rel64

dist/rel64/rteinit.o: src/rteinit.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rteinit.f -o dist/rel64/rteinit.o -I dist/rel64

dist/rel64/rthmusk.o: src/rthmusk.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rthmusk.f -o dist/rel64/rthmusk.o -I dist/rel64

dist/rel64/rthpest.o: src/rthpest.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rthpest.f -o dist/rel64/rthpest.o -I dist/rel64

dist/rel64/rthr.o: src/rthr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rthr.f -o dist/rel64/rthr.o -I dist/rel64

dist/rel64/rthsed.o: src/rthsed.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG} ${LONGFIX} src/rthsed.f -o dist/rel64/rthsed.o -I dist/rel64

dist/rel64/rtmusk.o: src/rtmusk.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rtmusk.f -o dist/rel64/rtmusk.o -I dist/rel64

dist/rel64/rtout.o: src/rtout.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rtout.f -o dist/rel64/rtout.o -I dist/rel64

dist/rel64/rtpest.o: src/rtpest.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rtpest.f -o dist/rel64/rtpest.o -I dist/rel64

dist/rel64/rtsed.o: src/rtsed.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rtsed.f -o dist/rel64/rtsed.o -I dist/rel64

dist/rel64/rtsed_bagnold.o: src/rtsed_bagnold.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rtsed_bagnold.f -o dist/rel64/rtsed_bagnold.o -I dist/rel64

dist/rel64/rtsed_kodatie.o: src/rtsed_kodatie.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rtsed_kodatie.f -o dist/rel64/rtsed_kodatie.o -I dist/rel64

dist/rel64/rtsed_molinas_wu.o: src/rtsed_Molinas_Wu.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rtsed_Molinas_Wu.f -o dist/rel64/rtsed_molinas_wu.o -I dist/rel64

dist/rel64/rtsed_yangsand.o: src/rtsed_yangsand.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/rtsed_yangsand.f -o dist/rel64/rtsed_yangsand.o -I dist/rel64

dist/rel64/sat_excess.o: src/sat_excess.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/sat_excess.f -o dist/rel64/sat_excess.o -I dist/rel64

dist/rel64/save.o: src/save.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/save.f -o dist/rel64/save.o -I dist/rel64

dist/rel64/saveconc.o: src/saveconc.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/saveconc.f -o dist/rel64/saveconc.o -I dist/rel64

dist/rel64/schedule_ops.o: src/schedule_ops.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/schedule_ops.f -o dist/rel64/schedule_ops.o -I dist/rel64

dist/rel64/sched_mgt.o: src/sched_mgt.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/sched_mgt.f -o dist/rel64/sched_mgt.o -I dist/rel64

dist/rel64/simulate.o: src/simulate.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/simulate.f -o dist/rel64/simulate.o -I dist/rel64

dist/rel64/sim_initday.o: src/sim_initday.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/sim_initday.f -o dist/rel64/sim_initday.o -I dist/rel64

dist/rel64/sim_inityr.o: src/sim_inityr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/sim_inityr.f -o dist/rel64/sim_inityr.o -I dist/rel64

dist/rel64/slrgen.o: src/slrgen.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/slrgen.f -o dist/rel64/slrgen.o -I dist/rel64

dist/rel64/smeas.o: src/smeas.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/smeas.f -o dist/rel64/smeas.o -I dist/rel64

dist/rel64/snom.o: src/snom.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/snom.f -o dist/rel64/snom.o -I dist/rel64

dist/rel64/soil_chem.o: src/soil_chem.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/soil_chem.f -o dist/rel64/soil_chem.o -I dist/rel64

dist/rel64/soil_par.o: src/soil_par.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/soil_par.f -o dist/rel64/soil_par.o -I dist/rel64

dist/rel64/soil_phys.o: src/soil_phys.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/soil_phys.f -o dist/rel64/soil_phys.o -I dist/rel64

dist/rel64/soil_write.o: src/soil_write.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/soil_write.f -o dist/rel64/soil_write.o -I dist/rel64

dist/rel64/solp.o: src/solp.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/solp.f -o dist/rel64/solp.o -I dist/rel64

dist/rel64/solt.o: src/solt.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/solt.f -o dist/rel64/solt.o -I dist/rel64

dist/rel64/std1.o: src/std1.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/std1.f -o dist/rel64/std1.o -I dist/rel64

dist/rel64/std2.o: src/std2.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/std2.f -o dist/rel64/std2.o -I dist/rel64

dist/rel64/std3.o: src/std3.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/std3.f -o dist/rel64/std3.o -I dist/rel64

dist/rel64/stdaa.o: src/stdaa.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/stdaa.f -o dist/rel64/stdaa.o -I dist/rel64

dist/rel64/storeinitial.o: src/storeinitial.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/storeinitial.f -o dist/rel64/storeinitial.o -I dist/rel64

dist/rel64/structure.o: src/structure.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/structure.f -o dist/rel64/structure.o -I dist/rel64

dist/rel64/subaa.o: src/subaa.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/subaa.f -o dist/rel64/subaa.o -I dist/rel64

dist/rel64/subbasin.o: src/subbasin.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/subbasin.f -o dist/rel64/subbasin.o -I dist/rel64

dist/rel64/subday.o: src/subday.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/subday.f -o dist/rel64/subday.o -I dist/rel64

dist/rel64/submon.o: src/submon.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/submon.f -o dist/rel64/submon.o -I dist/rel64

dist/rel64/substor.o: src/substor.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/substor.f -o dist/rel64/substor.o -I dist/rel64

dist/rel64/subwq.o: src/subwq.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/subwq.f -o dist/rel64/subwq.o -I dist/rel64

dist/rel64/subyr.o: src/subyr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/subyr.f -o dist/rel64/subyr.o -I dist/rel64

dist/rel64/sub_subbasin.o: src/sub_subbasin.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/sub_subbasin.f -o dist/rel64/sub_subbasin.o -I dist/rel64

dist/rel64/sumhyd.o: src/sumhyd.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/sumhyd.f -o dist/rel64/sumhyd.o -I dist/rel64

dist/rel64/sumv.o: src/sumv.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/sumv.f -o dist/rel64/sumv.o -I dist/rel64

dist/rel64/surface.o: src/surface.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/surface.f -o dist/rel64/surface.o -I dist/rel64

dist/rel64/surfstor.o: src/surfstor.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/surfstor.f -o dist/rel64/surfstor.o -I dist/rel64

dist/rel64/surfst_h2o.o: src/surfst_h2o.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/surfst_h2o.f -o dist/rel64/surfst_h2o.o -I dist/rel64

dist/rel64/surq_daycn.o: src/surq_daycn.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/surq_daycn.f -o dist/rel64/surq_daycn.o -I dist/rel64

dist/rel64/surq_greenampt.o: src/surq_greenampt.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/surq_greenampt.f -o dist/rel64/surq_greenampt.o -I dist/rel64

dist/rel64/swbl.o: src/swbl.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/swbl.f -o dist/rel64/swbl.o -I dist/rel64

dist/rel64/sweep.o: src/sweep.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/sweep.f -o dist/rel64/sweep.o -I dist/rel64

dist/rel64/swu.o: src/swu.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/swu.f -o dist/rel64/swu.o -I dist/rel64

dist/rel64/tair.o: src/tair.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/tair.f -o dist/rel64/tair.o -I dist/rel64

dist/rel64/tgen.o: src/tgen.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/tgen.f -o dist/rel64/tgen.o -I dist/rel64

dist/rel64/theta.o: src/theta.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/theta.f -o dist/rel64/theta.o -I dist/rel64

dist/rel64/tillfactor.o: src/tillfactor.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/tillfactor.f -o dist/rel64/tillfactor.o -I dist/rel64

dist/rel64/tillmix.o: src/tillmix.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/tillmix.f -o dist/rel64/tillmix.o -I dist/rel64

dist/rel64/tmeas.o: src/tmeas.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/tmeas.f -o dist/rel64/tmeas.o -I dist/rel64

dist/rel64/tran.o: src/tran.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/tran.f -o dist/rel64/tran.o -I dist/rel64

dist/rel64/transfer.o: src/transfer.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/transfer.f -o dist/rel64/transfer.o -I dist/rel64

dist/rel64/tstr.o: src/tstr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/tstr.f -o dist/rel64/tstr.o -I dist/rel64

dist/rel64/ttcoef.o: src/ttcoef.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/ttcoef.f -o dist/rel64/ttcoef.o -I dist/rel64

dist/rel64/ttcoef_wway.o: src/ttcoef_wway.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/ttcoef_wway.f -o dist/rel64/ttcoef_wway.o -I dist/rel64

dist/rel64/urban.o: src/urban.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/urban.f -o dist/rel64/urban.o -I dist/rel64

dist/rel64/urbanhr.o: src/urbanhr.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/urbanhr.f -o dist/rel64/urbanhr.o -I dist/rel64

dist/rel64/urb_bmp.o: src/urb_bmp.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/urb_bmp.f -o dist/rel64/urb_bmp.o -I dist/rel64

dist/rel64/varinit.o: src/varinit.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/varinit.f -o dist/rel64/varinit.o -I dist/rel64

dist/rel64/vbl.o: src/vbl.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/vbl.f -o dist/rel64/vbl.o -I dist/rel64

dist/rel64/virtual.o: src/virtual.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/virtual.f -o dist/rel64/virtual.o -I dist/rel64

dist/rel64/volq.o: src/volq.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/volq.f -o dist/rel64/volq.o -I dist/rel64

dist/rel64/washp.o: src/washp.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/washp.f -o dist/rel64/washp.o -I dist/rel64

dist/rel64/watbal.o: src/watbal.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/watbal.f -o dist/rel64/watbal.o -I dist/rel64

dist/rel64/water_hru.o: src/water_hru.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/water_hru.f -o dist/rel64/water_hru.o -I dist/rel64

dist/rel64/watqual.o: src/watqual.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/watqual.f -o dist/rel64/watqual.o -I dist/rel64

dist/rel64/watqual2.o: src/watqual2.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/watqual2.f -o dist/rel64/watqual2.o -I dist/rel64

dist/rel64/wattable.o: src/wattable.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/wattable.f -o dist/rel64/wattable.o -I dist/rel64

dist/rel64/watuse.o: src/watuse.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/watuse.f -o dist/rel64/watuse.o -I dist/rel64

dist/rel64/weatgn.o: src/weatgn.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/weatgn.f -o dist/rel64/weatgn.o -I dist/rel64

dist/rel64/wetlan.o: src/wetlan.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/wetlan.f -o dist/rel64/wetlan.o -I dist/rel64

dist/rel64/wmeas.o: src/wmeas.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/wmeas.f -o dist/rel64/wmeas.o -I dist/rel64

dist/rel64/wndgen.o: src/wndgen.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/wndgen.f -o dist/rel64/wndgen.o -I dist/rel64

dist/rel64/writea.o: src/writea.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/writea.f -o dist/rel64/writea.o -I dist/rel64

dist/rel64/writeaa.o: src/writeaa.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/writeaa.f -o dist/rel64/writeaa.o -I dist/rel64

dist/rel64/writed.o: src/writed.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/writed.f -o dist/rel64/writed.o -I dist/rel64

dist/rel64/writem.o: src/writem.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/writem.f -o dist/rel64/writem.o -I dist/rel64

dist/rel64/xmon.o: src/xmon.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/xmon.f -o dist/rel64/xmon.o -I dist/rel64

dist/rel64/ysed.o: src/ysed.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/ysed.f -o dist/rel64/ysed.o -I dist/rel64

dist/rel64/zero0.o: src/zero0.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/zero0.f -o dist/rel64/zero0.o -I dist/rel64

dist/rel64/zero1.o: src/zero1.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/zero1.f -o dist/rel64/zero1.o -I dist/rel64

dist/rel64/zero2.o: src/zero2.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/zero2.f -o dist/rel64/zero2.o -I dist/rel64

dist/rel64/zeroini.o: src/zeroini.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/zeroini.f -o dist/rel64/zeroini.o -I dist/rel64

dist/rel64/zero_urbn.o: src/zero_urbn.f dist/rel64/main.o
	${FC} ${ARCH64} ${FFLAG} ${RFLAG}  src/zero_urbn.f -o dist/rel64/zero_urbn.o -I dist/rel64

rel64_clean:
	rm -f dist/${NAMEREL64}
	rm -f dist/rel64/*.o
	rm -f dist/rel64/*.mod
	rm -f dist/rel64/*~
	rm -rf dist/rel32