# Name:        build/android/jni/Android.mk
# Purpose:     Build system for android port
# Author:      Wlodzimierz ABX Skiba
# Created:     2019-10-24
# Copyright:   (c) Wlodzimierz ABX Skiba 2019
# Licence:     wxWindows licence

LOCAL_PATH := $(call my-dir)/..
SETUPHDIR := $(LOCAL_PATH)/.

include $(CLEAR_VARS)
LOCAL_MODULE := wxregex
LOCAL_SRC_FILES := \
	../../src/regex/regcomp.c \
	../../src/regex/regexec.c \
	../../src/regex/regerror.c \
	../../src/regex/regfree.c
LOCAL_C_INCLUDES := \
	../../include \
	$(SETUPHDIR)
LOCAL_CFLAGS := \
	-D__ANDROID__
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxzlib
LOCAL_SRC_FILES := \
	../../src/zlib/adler32.c \
	../../src/zlib/compress.c \
	../../src/zlib/crc32.c \
	../../src/zlib/deflate.c \
	../../src/zlib/gzclose.c \
	../../src/zlib/gzlib.c \
	../../src/zlib/gzread.c \
	../../src/zlib/gzwrite.c \
	../../src/zlib/infback.c \
	../../src/zlib/inffast.c \
	../../src/zlib/inflate.c \
	../../src/zlib/inftrees.c \
	../../src/zlib/trees.c \
	../../src/zlib/uncompr.c \
	../../src/zlib/zutil.c
LOCAL_CFLAGS := \
	-D__ANDROID__
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxpng
LOCAL_SRC_FILES := \
	../../src/png/png.c \
	../../src/png/pngerror.c \
	../../src/png/pngget.c \
	../../src/png/pngmem.c \
	../../src/png/pngpread.c \
	../../src/png/pngread.c \
	../../src/png/pngrio.c \
	../../src/png/pngrtran.c \
	../../src/png/pngrutil.c \
	../../src/png/pngset.c \
	../../src/png/pngtrans.c \
	../../src/png/pngwio.c \
	../../src/png/pngwrite.c \
	../../src/png/pngwtran.c \
	../../src/png/pngwutil.c
LOCAL_C_INCLUDES := \
	../../src/zlib
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxjpeg
LOCAL_SRC_FILES := \
	../../src/jpeg/jaricom.c \
	../../src/jpeg/jcapimin.c \
	../../src/jpeg/jcapistd.c \
	../../src/jpeg/jcarith.c \
	../../src/jpeg/jccoefct.c \
	../../src/jpeg/jccolor.c \
	../../src/jpeg/jcdctmgr.c \
	../../src/jpeg/jchuff.c \
	../../src/jpeg/jcinit.c \
	../../src/jpeg/jcmainct.c \
	../../src/jpeg/jcmarker.c \
	../../src/jpeg/jcmaster.c \
	../../src/jpeg/jcomapi.c \
	../../src/jpeg/jcparam.c \
	../../src/jpeg/jcprepct.c \
	../../src/jpeg/jcsample.c \
	../../src/jpeg/jctrans.c \
	../../src/jpeg/jdapimin.c \
	../../src/jpeg/jdapistd.c \
	../../src/jpeg/jdarith.c \
	../../src/jpeg/jdatadst.c \
	../../src/jpeg/jdatasrc.c \
	../../src/jpeg/jdcoefct.c \
	../../src/jpeg/jdcolor.c \
	../../src/jpeg/jddctmgr.c \
	../../src/jpeg/jdhuff.c \
	../../src/jpeg/jdinput.c \
	../../src/jpeg/jdmainct.c \
	../../src/jpeg/jdmarker.c \
	../../src/jpeg/jdmaster.c \
	../../src/jpeg/jdmerge.c \
	../../src/jpeg/jdpostct.c \
	../../src/jpeg/jdsample.c \
	../../src/jpeg/jdtrans.c \
	../../src/jpeg/jerror.c \
	../../src/jpeg/jfdctflt.c \
	../../src/jpeg/jfdctfst.c \
	../../src/jpeg/jfdctint.c \
	../../src/jpeg/jidctflt.c \
	../../src/jpeg/jidctfst.c \
	../../src/jpeg/jidctint.c \
	../../src/jpeg/jmemmgr.c \
	../../src/jpeg/jmemnobs.c \
	../../src/jpeg/jquant1.c \
	../../src/jpeg/jquant2.c \
	../../src/jpeg/jutils.c
LOCAL_C_INCLUDES := \
	$(SETUPHDIR)
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxtiff
LOCAL_SRC_FILES := \
	../../src/tiff/libtiff/tif_unix.c \
	../../src/tiff/libtiff/tif_aux.c \
	../../src/tiff/libtiff/tif_close.c \
	../../src/tiff/libtiff/tif_codec.c \
	../../src/tiff/libtiff/tif_color.c \
	../../src/tiff/libtiff/tif_compress.c \
	../../src/tiff/libtiff/tif_dir.c \
	../../src/tiff/libtiff/tif_dirinfo.c \
	../../src/tiff/libtiff/tif_dirread.c \
	../../src/tiff/libtiff/tif_dirwrite.c \
	../../src/tiff/libtiff/tif_dumpmode.c \
	../../src/tiff/libtiff/tif_error.c \
	../../src/tiff/libtiff/tif_extension.c \
	../../src/tiff/libtiff/tif_fax3.c \
	../../src/tiff/libtiff/tif_fax3sm.c \
	../../src/tiff/libtiff/tif_flush.c \
	../../src/tiff/libtiff/tif_getimage.c \
	../../src/tiff/libtiff/tif_jbig.c \
	../../src/tiff/libtiff/tif_jpeg.c \
	../../src/tiff/libtiff/tif_jpeg_12.c \
	../../src/tiff/libtiff/tif_luv.c \
	../../src/tiff/libtiff/tif_lzma.c \
	../../src/tiff/libtiff/tif_lzw.c \
	../../src/tiff/libtiff/tif_next.c \
	../../src/tiff/libtiff/tif_ojpeg.c \
	../../src/tiff/libtiff/tif_open.c \
	../../src/tiff/libtiff/tif_packbits.c \
	../../src/tiff/libtiff/tif_pixarlog.c \
	../../src/tiff/libtiff/tif_predict.c \
	../../src/tiff/libtiff/tif_print.c \
	../../src/tiff/libtiff/tif_read.c \
	../../src/tiff/libtiff/tif_strip.c \
	../../src/tiff/libtiff/tif_swab.c \
	../../src/tiff/libtiff/tif_thunder.c \
	../../src/tiff/libtiff/tif_tile.c \
	../../src/tiff/libtiff/tif_version.c \
	../../src/tiff/libtiff/tif_warning.c \
	../../src/tiff/libtiff/tif_webp.c \
	../../src/tiff/libtiff/tif_write.c \
	../../src/tiff/libtiff/tif_zip.c \
	../../src/tiff/libtiff/tif_zstd.c
LOCAL_C_INCLUDES := \
	../../src/zlib \
	../../src/jpeg \
	../../src/tiff/libtiff
LOCAL_CFLAGS := \
	-D__ANDROID__
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxexpat
LOCAL_SRC_FILES := \
	../../src/expat/expat/lib/xmlparse.c \
	../../src/expat/expat/lib/xmlrole.c \
	../../src/expat/expat/lib/xmltok.c
LOCAL_C_INCLUDES := \
	../../include/wx/android/expat
LOCAL_CFLAGS := \
	-DHAVE_EXPAT_CONFIG_H
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxscintilla
LOCAL_SRC_FILES := \
	../../src/stc/scintilla/lexers/LexA68k.cxx \
	../../src/stc/scintilla/lexers/LexAbaqus.cxx \
	../../src/stc/scintilla/lexers/LexAda.cxx \
	../../src/stc/scintilla/lexers/LexAPDL.cxx \
	../../src/stc/scintilla/lexers/LexAsm.cxx \
	../../src/stc/scintilla/lexers/LexAsn1.cxx \
	../../src/stc/scintilla/lexers/LexASY.cxx \
	../../src/stc/scintilla/lexers/LexAU3.cxx \
	../../src/stc/scintilla/lexers/LexAVE.cxx \
	../../src/stc/scintilla/lexers/LexAVS.cxx \
	../../src/stc/scintilla/lexers/LexBaan.cxx \
	../../src/stc/scintilla/lexers/LexBash.cxx \
	../../src/stc/scintilla/lexers/LexBasic.cxx \
	../../src/stc/scintilla/lexers/LexBatch.cxx \
	../../src/stc/scintilla/lexers/LexBibTeX.cxx \
	../../src/stc/scintilla/lexers/LexBullant.cxx \
	../../src/stc/scintilla/lexers/LexCaml.cxx \
	../../src/stc/scintilla/lexers/LexCLW.cxx \
	../../src/stc/scintilla/lexers/LexCmake.cxx \
	../../src/stc/scintilla/lexers/LexCOBOL.cxx \
	../../src/stc/scintilla/lexers/LexCoffeeScript.cxx \
	../../src/stc/scintilla/lexers/LexConf.cxx \
	../../src/stc/scintilla/lexers/LexCPP.cxx \
	../../src/stc/scintilla/lexers/LexCrontab.cxx \
	../../src/stc/scintilla/lexers/LexCsound.cxx \
	../../src/stc/scintilla/lexers/LexCSS.cxx \
	../../src/stc/scintilla/lexers/LexD.cxx \
	../../src/stc/scintilla/lexers/LexDiff.cxx \
	../../src/stc/scintilla/lexers/LexDMAP.cxx \
	../../src/stc/scintilla/lexers/LexDMIS.cxx \
	../../src/stc/scintilla/lexers/LexECL.cxx \
	../../src/stc/scintilla/lexers/LexEDIFACT.cxx \
	../../src/stc/scintilla/lexers/LexEiffel.cxx \
	../../src/stc/scintilla/lexers/LexErlang.cxx \
	../../src/stc/scintilla/lexers/LexErrorList.cxx \
	../../src/stc/scintilla/lexers/LexEScript.cxx \
	../../src/stc/scintilla/lexers/LexFlagship.cxx \
	../../src/stc/scintilla/lexers/LexForth.cxx \
	../../src/stc/scintilla/lexers/LexFortran.cxx \
	../../src/stc/scintilla/lexers/LexGAP.cxx \
	../../src/stc/scintilla/lexers/LexGui4Cli.cxx \
	../../src/stc/scintilla/lexers/LexHaskell.cxx \
	../../src/stc/scintilla/lexers/LexHex.cxx \
	../../src/stc/scintilla/lexers/LexHTML.cxx \
	../../src/stc/scintilla/lexers/LexInno.cxx \
	../../src/stc/scintilla/lexers/LexJSON.cxx \
	../../src/stc/scintilla/lexers/LexKix.cxx \
	../../src/stc/scintilla/lexers/LexKVIrc.cxx \
	../../src/stc/scintilla/lexers/LexLaTeX.cxx \
	../../src/stc/scintilla/lexers/LexLisp.cxx \
	../../src/stc/scintilla/lexers/LexLout.cxx \
	../../src/stc/scintilla/lexers/LexLua.cxx \
	../../src/stc/scintilla/lexers/LexMagik.cxx \
	../../src/stc/scintilla/lexers/LexMake.cxx \
	../../src/stc/scintilla/lexers/LexMarkdown.cxx \
	../../src/stc/scintilla/lexers/LexMatlab.cxx \
	../../src/stc/scintilla/lexers/LexMetapost.cxx \
	../../src/stc/scintilla/lexers/LexMMIXAL.cxx \
	../../src/stc/scintilla/lexers/LexModula.cxx \
	../../src/stc/scintilla/lexers/LexMPT.cxx \
	../../src/stc/scintilla/lexers/LexMSSQL.cxx \
	../../src/stc/scintilla/lexers/LexMySQL.cxx \
	../../src/stc/scintilla/lexers/LexNimrod.cxx \
	../../src/stc/scintilla/lexers/LexNsis.cxx \
	../../src/stc/scintilla/lexers/LexNull.cxx \
	../../src/stc/scintilla/lexers/LexOpal.cxx \
	../../src/stc/scintilla/lexers/LexOScript.cxx \
	../../src/stc/scintilla/lexers/LexPascal.cxx \
	../../src/stc/scintilla/lexers/LexPB.cxx \
	../../src/stc/scintilla/lexers/LexPerl.cxx \
	../../src/stc/scintilla/lexers/LexPLM.cxx \
	../../src/stc/scintilla/lexers/LexPO.cxx \
	../../src/stc/scintilla/lexers/LexPOV.cxx \
	../../src/stc/scintilla/lexers/LexPowerPro.cxx \
	../../src/stc/scintilla/lexers/LexPowerShell.cxx \
	../../src/stc/scintilla/lexers/LexProgress.cxx \
	../../src/stc/scintilla/lexers/LexProps.cxx \
	../../src/stc/scintilla/lexers/LexPS.cxx \
	../../src/stc/scintilla/lexers/LexPython.cxx \
	../../src/stc/scintilla/lexers/LexR.cxx \
	../../src/stc/scintilla/lexers/LexRebol.cxx \
	../../src/stc/scintilla/lexers/LexRegistry.cxx \
	../../src/stc/scintilla/lexers/LexRuby.cxx \
	../../src/stc/scintilla/lexers/LexRust.cxx \
	../../src/stc/scintilla/lexers/LexScriptol.cxx \
	../../src/stc/scintilla/lexers/LexSmalltalk.cxx \
	../../src/stc/scintilla/lexers/LexSML.cxx \
	../../src/stc/scintilla/lexers/LexSorcus.cxx \
	../../src/stc/scintilla/lexers/LexSpecman.cxx \
	../../src/stc/scintilla/lexers/LexSpice.cxx \
	../../src/stc/scintilla/lexers/LexSQL.cxx \
	../../src/stc/scintilla/lexers/LexSTTXT.cxx \
	../../src/stc/scintilla/lexers/LexTACL.cxx \
	../../src/stc/scintilla/lexers/LexTADS3.cxx \
	../../src/stc/scintilla/lexers/LexTAL.cxx \
	../../src/stc/scintilla/lexers/LexTCL.cxx \
	../../src/stc/scintilla/lexers/LexTCMD.cxx \
	../../src/stc/scintilla/lexers/LexTeX.cxx \
	../../src/stc/scintilla/lexers/LexTxt2tags.cxx \
	../../src/stc/scintilla/lexers/LexVB.cxx \
	../../src/stc/scintilla/lexers/LexVerilog.cxx \
	../../src/stc/scintilla/lexers/LexVHDL.cxx \
	../../src/stc/scintilla/lexers/LexVisualProlog.cxx \
	../../src/stc/scintilla/lexers/LexYAML.cxx \
	../../src/stc/scintilla/lexlib/Accessor.cxx \
	../../src/stc/scintilla/lexlib/CharacterCategory.cxx \
	../../src/stc/scintilla/lexlib/CharacterSet.cxx \
	../../src/stc/scintilla/lexlib/LexerBase.cxx \
	../../src/stc/scintilla/lexlib/LexerModule.cxx \
	../../src/stc/scintilla/lexlib/LexerNoExceptions.cxx \
	../../src/stc/scintilla/lexlib/LexerSimple.cxx \
	../../src/stc/scintilla/lexlib/PropSetSimple.cxx \
	../../src/stc/scintilla/lexlib/StyleContext.cxx \
	../../src/stc/scintilla/lexlib/WordList.cxx \
	../../src/stc/scintilla/src/AutoComplete.cxx \
	../../src/stc/scintilla/src/CallTip.cxx \
	../../src/stc/scintilla/src/CaseConvert.cxx \
	../../src/stc/scintilla/src/CaseFolder.cxx \
	../../src/stc/scintilla/src/Catalogue.cxx \
	../../src/stc/scintilla/src/CellBuffer.cxx \
	../../src/stc/scintilla/src/CharClassify.cxx \
	../../src/stc/scintilla/src/ContractionState.cxx \
	../../src/stc/scintilla/src/Decoration.cxx \
	../../src/stc/scintilla/src/Document.cxx \
	../../src/stc/scintilla/src/EditModel.cxx \
	../../src/stc/scintilla/src/EditView.cxx \
	../../src/stc/scintilla/src/Editor.cxx \
	../../src/stc/scintilla/src/ExternalLexer.cxx \
	../../src/stc/scintilla/src/Indicator.cxx \
	../../src/stc/scintilla/src/KeyMap.cxx \
	../../src/stc/scintilla/src/LineMarker.cxx \
	../../src/stc/scintilla/src/MarginView.cxx \
	../../src/stc/scintilla/src/PerLine.cxx \
	../../src/stc/scintilla/src/PositionCache.cxx \
	../../src/stc/scintilla/src/RESearch.cxx \
	../../src/stc/scintilla/src/RunStyles.cxx \
	../../src/stc/scintilla/src/ScintillaBase.cxx \
	../../src/stc/scintilla/src/Selection.cxx \
	../../src/stc/scintilla/src/Style.cxx \
	../../src/stc/scintilla/src/UniConversion.cxx \
	../../src/stc/scintilla/src/ViewStyle.cxx \
	../../src/stc/scintilla/src/XPM.cxx
LOCAL_CPP_EXTENSION := .cxx
LOCAL_CPP_FEATURES := exceptions
LOCAL_C_INCLUDES := \
	../../src/stc/scintilla/include \
	../../src/stc/scintilla/lexlib \
	../../src/stc/scintilla/src \
	$(SETUPHDIR) \
	../../include
LOCAL_CFLAGS := \
	-D__WX__ \
	-DSCI_LEXER \
	-DNO_CXX11_REGEX \
	-DLINK_LEXERS
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxbase
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/common/any.cpp \
	../../src/common/appbase.cpp \
	../../src/common/arcall.cpp \
	../../src/common/arcfind.cpp \
	../../src/common/archive.cpp \
	../../src/common/arrstr.cpp \
	../../src/common/base64.cpp \
	../../src/common/clntdata.cpp \
	../../src/common/cmdline.cpp \
	../../src/common/config.cpp \
	../../src/common/convauto.cpp \
	../../src/common/datetime.cpp \
	../../src/common/datetimefmt.cpp \
	../../src/common/datstrm.cpp \
	../../src/common/dircmn.cpp \
	../../src/common/dynlib.cpp \
	../../src/common/dynload.cpp \
	../../src/common/encconv.cpp \
	../../src/common/evtloopcmn.cpp \
	../../src/common/extended.c \
	../../src/common/ffile.cpp \
	../../src/common/file.cpp \
	../../src/common/fileback.cpp \
	../../src/common/fileconf.cpp \
	../../src/common/filefn.cpp \
	../../src/common/filename.cpp \
	../../src/common/filesys.cpp \
	../../src/common/filtall.cpp \
	../../src/common/filtfind.cpp \
	../../src/common/fmapbase.cpp \
	../../src/common/fs_arc.cpp \
	../../src/common/fs_filter.cpp \
	../../src/common/hash.cpp \
	../../src/common/hashmap.cpp \
	../../src/common/init.cpp \
	../../src/common/intl.cpp \
	../../src/common/ipcbase.cpp \
	../../src/common/languageinfo.cpp \
	../../src/common/list.cpp \
	../../src/common/log.cpp \
	../../src/common/longlong.cpp \
	../../src/common/memory.cpp \
	../../src/common/mimecmn.cpp \
	../../src/common/module.cpp \
	../../src/common/mstream.cpp \
	../../src/common/numformatter.cpp \
	../../src/common/object.cpp \
	../../src/common/platinfo.cpp \
	../../src/common/powercmn.cpp \
	../../src/common/process.cpp \
	../../src/common/regex.cpp \
	../../src/common/stdpbase.cpp \
	../../src/common/sstream.cpp \
	../../src/common/stdstream.cpp \
	../../src/common/stopwatch.cpp \
	../../src/common/strconv.cpp \
	../../src/common/stream.cpp \
	../../src/common/string.cpp \
	../../src/common/stringimpl.cpp \
	../../src/common/stringops.cpp \
	../../src/common/strvararg.cpp \
	../../src/common/sysopt.cpp \
	../../src/common/tarstrm.cpp \
	../../src/common/textbuf.cpp \
	../../src/common/textfile.cpp \
	../../src/common/threadinfo.cpp \
	../../src/common/time.cpp \
	../../src/common/timercmn.cpp \
	../../src/common/timerimpl.cpp \
	../../src/common/tokenzr.cpp \
	../../src/common/translation.cpp \
	../../src/common/txtstrm.cpp \
	../../src/common/unichar.cpp \
	../../src/common/uri.cpp \
	../../src/common/ustring.cpp \
	../../src/common/variant.cpp \
	../../src/common/wfstream.cpp \
	../../src/common/wxcrt.cpp \
	../../src/common/wxprintf.cpp \
	../../src/common/xlocale.cpp \
	../../src/common/xti.cpp \
	../../src/common/xtistrm.cpp \
	../../src/common/zipstrm.cpp \
	../../src/common/zstream.cpp \
	../../src/common/fswatchercmn.cpp \
	../../src/generic/fswatcherg.cpp \
	../../src/common/secretstore.cpp \
	../../src/common/lzmastream.cpp \
	../../src/common/event.cpp \
	../../src/common/fs_mem.cpp \
	../../src/common/msgout.cpp \
	../../src/common/utilscmn.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING \
	-DwxUSE_GUI=0 \
	-DwxUSE_BASE=1
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxnet
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/common/fs_inet.cpp \
	../../src/common/ftp.cpp \
	../../src/common/http.cpp \
	../../src/common/protocol.cpp \
	../../src/common/sckaddr.cpp \
	../../src/common/sckfile.cpp \
	../../src/common/sckipc.cpp \
	../../src/common/sckstrm.cpp \
	../../src/common/socket.cpp \
	../../src/common/url.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING \
	-DwxUSE_GUI=0
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxcore
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/common/event.cpp \
	../../src/common/fs_mem.cpp \
	../../src/common/msgout.cpp \
	../../src/common/utilscmn.cpp \
	../../src/generic/statusbr.cpp \
	../../src/generic/accel.cpp \
	../../src/generic/colrdlgg.cpp \
	../../src/generic/dirdlgg.cpp \
	../../src/generic/fdrepdlg.cpp \
	../../src/generic/filedlgg.cpp \
	../../src/generic/fontdlgg.cpp \
	../../src/generic/listctrl.cpp \
	../../src/generic/mdig.cpp \
	../../src/univ/anybutton.cpp \
	../../src/univ/bmpbuttn.cpp \
	../../src/univ/button.cpp \
	../../src/univ/checkbox.cpp \
	../../src/univ/checklst.cpp \
	../../src/univ/choice.cpp \
	../../src/univ/combobox.cpp \
	../../src/univ/control.cpp \
	../../src/univ/ctrlrend.cpp \
	../../src/univ/gauge.cpp \
	../../src/univ/inpcons.cpp \
	../../src/univ/inphand.cpp \
	../../src/univ/listbox.cpp \
	../../src/univ/menu.cpp \
	../../src/univ/notebook.cpp \
	../../src/univ/radiobox.cpp \
	../../src/univ/radiobut.cpp \
	../../src/univ/scrarrow.cpp \
	../../src/univ/scrolbar.cpp \
	../../src/univ/scrthumb.cpp \
	../../src/univ/slider.cpp \
	../../src/univ/spinbutt.cpp \
	../../src/univ/statbmp.cpp \
	../../src/univ/statbox.cpp \
	../../src/univ/statline.cpp \
	../../src/univ/stattext.cpp \
	../../src/univ/statusbr.cpp \
	../../src/univ/textctrl.cpp \
	../../src/univ/tglbtn.cpp \
	../../src/univ/theme.cpp \
	../../src/univ/toolbar.cpp \
	../../src/common/taskbarcmn.cpp \
	../../src/generic/clrpickerg.cpp \
	../../src/generic/collpaneg.cpp \
	../../src/generic/filepickerg.cpp \
	../../src/generic/fontpickerg.cpp \
	../../src/generic/prntdlgg.cpp \
	../../src/generic/animateg.cpp \
	../../src/generic/activityindicator.cpp \
	../../src/common/accelcmn.cpp \
	../../src/common/accesscmn.cpp \
	../../src/common/anidecod.cpp \
	../../src/common/affinematrix2d.cpp \
	../../src/common/appcmn.cpp \
	../../src/common/artprov.cpp \
	../../src/common/artstd.cpp \
	../../src/common/arttango.cpp \
	../../src/common/bmpbase.cpp \
	../../src/common/bmpbtncmn.cpp \
	../../src/common/bookctrl.cpp \
	../../src/common/btncmn.cpp \
	../../src/common/cairo.cpp \
	../../src/common/checkboxcmn.cpp \
	../../src/common/checklstcmn.cpp \
	../../src/common/choiccmn.cpp \
	../../src/common/clipcmn.cpp \
	../../src/common/clrpickercmn.cpp \
	../../src/common/colourcmn.cpp \
	../../src/common/colourdata.cpp \
	../../src/common/combocmn.cpp \
	../../src/common/cmdproc.cpp \
	../../src/common/cmndata.cpp \
	../../src/common/containr.cpp \
	../../src/common/cshelp.cpp \
	../../src/common/ctrlcmn.cpp \
	../../src/common/ctrlsub.cpp \
	../../src/common/dcbase.cpp \
	../../src/common/dcbufcmn.cpp \
	../../src/common/dcgraph.cpp \
	../../src/common/dcsvg.cpp \
	../../src/common/dirctrlcmn.cpp \
	../../src/common/dlgcmn.cpp \
	../../src/common/dndcmn.cpp \
	../../src/common/dobjcmn.cpp \
	../../src/common/docmdi.cpp \
	../../src/common/docview.cpp \
	../../src/common/dpycmn.cpp \
	../../src/common/dseldlg.cpp \
	../../src/common/effects.cpp \
	../../src/common/fddlgcmn.cpp \
	../../src/common/filectrlcmn.cpp \
	../../src/common/filehistorycmn.cpp \
	../../src/common/filepickercmn.cpp \
	../../src/common/fontpickercmn.cpp \
	../../src/common/fldlgcmn.cpp \
	../../src/common/fontcmn.cpp \
	../../src/common/fontdata.cpp \
	../../src/generic/graphicc.cpp \
	../../src/common/fontenumcmn.cpp \
	../../src/common/fontmap.cpp \
	../../src/common/fontutilcmn.cpp \
	../../src/common/framecmn.cpp \
	../../src/common/gaugecmn.cpp \
	../../src/common/gbsizer.cpp \
	../../src/common/gdicmn.cpp \
	../../src/common/geometry.cpp \
	../../src/common/gifdecod.cpp \
	../../src/common/graphcmn.cpp \
	../../src/common/headercolcmn.cpp \
	../../src/common/headerctrlcmn.cpp \
	../../src/common/helpbase.cpp \
	../../src/common/iconbndl.cpp \
	../../src/common/imagall.cpp \
	../../src/common/imagbmp.cpp \
	../../src/common/image.cpp \
	../../src/common/imagfill.cpp \
	../../src/common/imaggif.cpp \
	../../src/common/imagiff.cpp \
	../../src/common/imagjpeg.cpp \
	../../src/common/imagpcx.cpp \
	../../src/common/imagpng.cpp \
	../../src/common/imagpnm.cpp \
	../../src/common/imagtga.cpp \
	../../src/common/imagtiff.cpp \
	../../src/common/imagxpm.cpp \
	../../src/common/layout.cpp \
	../../src/common/lboxcmn.cpp \
	../../src/common/listctrlcmn.cpp \
	../../src/common/markupparser.cpp \
	../../src/common/matrix.cpp \
	../../src/common/menucmn.cpp \
	../../src/common/modalhook.cpp \
	../../src/common/mousemanager.cpp \
	../../src/common/nbkbase.cpp \
	../../src/common/overlaycmn.cpp \
	../../src/common/ownerdrwcmn.cpp \
	../../src/common/paper.cpp \
	../../src/common/panelcmn.cpp \
	../../src/common/persist.cpp \
	../../src/common/pickerbase.cpp \
	../../src/common/popupcmn.cpp \
	../../src/common/preferencescmn.cpp \
	../../src/common/prntbase.cpp \
	../../src/common/quantize.cpp \
	../../src/common/radiobtncmn.cpp \
	../../src/common/radiocmn.cpp \
	../../src/common/rearrangectrl.cpp \
	../../src/common/rendcmn.cpp \
	../../src/common/rgncmn.cpp \
	../../src/common/scrolbarcmn.cpp \
	../../src/common/settcmn.cpp \
	../../src/common/sizer.cpp \
	../../src/common/slidercmn.cpp \
	../../src/common/spinbtncmn.cpp \
	../../src/common/spinctrlcmn.cpp \
	../../src/common/srchcmn.cpp \
	../../src/common/statbar.cpp \
	../../src/common/statbmpcmn.cpp \
	../../src/common/statboxcmn.cpp \
	../../src/common/statlinecmn.cpp \
	../../src/common/stattextcmn.cpp \
	../../src/common/stockitem.cpp \
	../../src/common/tbarbase.cpp \
	../../src/common/textcmn.cpp \
	../../src/common/textentrycmn.cpp \
	../../src/common/textmeasurecmn.cpp \
	../../src/common/toplvcmn.cpp \
	../../src/common/treebase.cpp \
	../../src/common/uiactioncmn.cpp \
	../../src/common/valgen.cpp \
	../../src/common/validate.cpp \
	../../src/common/valtext.cpp \
	../../src/common/valnum.cpp \
	../../src/common/wincmn.cpp \
	../../src/common/windowid.cpp \
	../../src/common/wrapsizer.cpp \
	../../src/common/xpmdecod.cpp \
	../../src/generic/busyinfo.cpp \
	../../src/generic/buttonbar.cpp \
	../../src/generic/choicdgg.cpp \
	../../src/generic/choicbkg.cpp \
	../../src/generic/collheaderctrlg.cpp \
	../../src/generic/combog.cpp \
	../../src/generic/dcpsg.cpp \
	../../src/generic/dirctrlg.cpp \
	../../src/generic/dragimgg.cpp \
	../../src/generic/filectrlg.cpp \
	../../src/generic/headerctrlg.cpp \
	../../src/generic/infobar.cpp \
	../../src/generic/listbkg.cpp \
	../../src/generic/logg.cpp \
	../../src/generic/markuptext.cpp \
	../../src/generic/msgdlgg.cpp \
	../../src/generic/numdlgg.cpp \
	../../src/generic/progdlgg.cpp \
	../../src/generic/preferencesg.cpp \
	../../src/generic/printps.cpp \
	../../src/generic/renderg.cpp \
	../../src/generic/richmsgdlgg.cpp \
	../../src/generic/scrlwing.cpp \
	../../src/generic/selstore.cpp \
	../../src/generic/spinctlg.cpp \
	../../src/generic/splitter.cpp \
	../../src/generic/srchctlg.cpp \
	../../src/generic/statbmpg.cpp \
	../../src/generic/stattextg.cpp \
	../../src/generic/textdlgg.cpp \
	../../src/generic/tipwin.cpp \
	../../src/generic/toolbkg.cpp \
	../../src/generic/treectlg.cpp \
	../../src/generic/treebkg.cpp \
	../../src/generic/vlbox.cpp \
	../../src/generic/vscroll.cpp \
	../../src/xrc/xmlreshandler.cpp \
	../../src/generic/splash.cpp \
	../../src/generic/notifmsgg.cpp \
	../../src/generic/odcombo.cpp \
	../../src/common/calctrlcmn.cpp \
	../../src/generic/grideditors.cpp \
	../../src/common/bmpcboxcmn.cpp \
	../../src/generic/grid.cpp \
	../../src/generic/gridctrl.cpp \
	../../src/generic/hyperlinkg.cpp \
	../../src/generic/helpext.cpp \
	../../src/generic/sashwin.cpp \
	../../src/generic/gridsel.cpp \
	../../src/common/addremovectrl.cpp \
	../../src/generic/tipdlg.cpp \
	../../src/generic/aboutdlgg.cpp \
	../../src/common/gridcmn.cpp \
	../../src/common/richtooltipcmn.cpp \
	../../src/generic/datectlg.cpp \
	../../src/generic/bannerwindow.cpp \
	../../src/generic/treelist.cpp \
	../../src/common/datavcmn.cpp \
	../../src/common/animatecmn.cpp \
	../../src/common/odcombocmn.cpp \
	../../src/common/hyperlnkcmn.cpp \
	../../src/generic/propdlg.cpp \
	../../src/generic/bmpcboxg.cpp \
	../../src/generic/richtooltipg.cpp \
	../../src/generic/timectrlg.cpp \
	../../src/generic/commandlinkbuttong.cpp \
	../../src/common/notifmsgcmn.cpp \
	../../src/generic/wizard.cpp \
	../../src/generic/datavgen.cpp \
	../../src/generic/editlbox.cpp \
	../../src/generic/laywin.cpp \
	../../src/generic/calctrlg.cpp
#
# unused LOCAL_SRC_FILES
#	../../src/univ/dialog.cpp
#	../../src/univ/framuniv.cpp
#	../../src/univ/settingsuniv.cpp
#	../../src/univ/stdrend.cpp
#	../../src/univ/topluniv.cpp
#	../../src/univ/winuniv.cpp
#	../../src/univ/themes/gtk.cpp
#	../../src/univ/themes/metal.cpp
#	../../src/univ/themes/mono.cpp
#	../../src/univ/themes/win32.cpp
#
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING \
	-DwxUSE_BASE=0
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxadv
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxmedia
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/common/mediactrlcmn.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxhtml
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/html/chm.cpp \
	../../src/html/helpctrl.cpp \
	../../src/html/helpdata.cpp \
	../../src/html/helpdlg.cpp \
	../../src/html/helpfrm.cpp \
	../../src/html/helpwnd.cpp \
	../../src/html/htmlcell.cpp \
	../../src/html/htmlfilt.cpp \
	../../src/html/htmlpars.cpp \
	../../src/html/htmltag.cpp \
	../../src/html/htmlwin.cpp \
	../../src/html/htmprint.cpp \
	../../src/html/m_dflist.cpp \
	../../src/html/m_fonts.cpp \
	../../src/html/m_hline.cpp \
	../../src/html/m_image.cpp \
	../../src/html/m_layout.cpp \
	../../src/html/m_links.cpp \
	../../src/html/m_list.cpp \
	../../src/html/m_pre.cpp \
	../../src/html/m_span.cpp \
	../../src/html/m_style.cpp \
	../../src/html/m_tables.cpp \
	../../src/html/styleparams.cpp \
	../../src/html/winpars.cpp \
	../../src/generic/htmllbox.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxwebview
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/common/webview.cpp \
	../../src/common/webviewarchivehandler.cpp \
	../../src/common/webviewfshandler.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxqa
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/common/debugrpt.cpp \
	../../src/generic/dbgrptg.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxxml
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/xml/xml.cpp \
	../../src/common/xtixml.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING \
	-DwxUSE_GUI=0
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxxrc
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/xrc/xh_activityindicator.cpp \
	../../src/xrc/xh_animatctrl.cpp \
	../../src/xrc/xh_bannerwindow.cpp \
	../../src/xrc/xh_bmp.cpp \
	../../src/xrc/xh_bmpcbox.cpp \
	../../src/xrc/xh_bmpbt.cpp \
	../../src/xrc/xh_bttn.cpp \
	../../src/xrc/xh_cald.cpp \
	../../src/xrc/xh_chckb.cpp \
	../../src/xrc/xh_chckl.cpp \
	../../src/xrc/xh_choic.cpp \
	../../src/xrc/xh_choicbk.cpp \
	../../src/xrc/xh_clrpicker.cpp \
	../../src/xrc/xh_cmdlinkbn.cpp \
	../../src/xrc/xh_collpane.cpp \
	../../src/xrc/xh_combo.cpp \
	../../src/xrc/xh_comboctrl.cpp \
	../../src/xrc/xh_datectrl.cpp \
	../../src/xrc/xh_dirpicker.cpp \
	../../src/xrc/xh_dlg.cpp \
	../../src/xrc/xh_editlbox.cpp \
	../../src/xrc/xh_filectrl.cpp \
	../../src/xrc/xh_filepicker.cpp \
	../../src/xrc/xh_fontpicker.cpp \
	../../src/xrc/xh_frame.cpp \
	../../src/xrc/xh_gauge.cpp \
	../../src/xrc/xh_gdctl.cpp \
	../../src/xrc/xh_grid.cpp \
	../../src/xrc/xh_html.cpp \
	../../src/xrc/xh_hyperlink.cpp \
	../../src/xrc/xh_listb.cpp \
	../../src/xrc/xh_listbk.cpp \
	../../src/xrc/xh_listc.cpp \
	../../src/xrc/xh_mdi.cpp \
	../../src/xrc/xh_menu.cpp \
	../../src/xrc/xh_notbk.cpp \
	../../src/xrc/xh_odcombo.cpp \
	../../src/xrc/xh_panel.cpp \
	../../src/xrc/xh_propdlg.cpp \
	../../src/xrc/xh_radbt.cpp \
	../../src/xrc/xh_radbx.cpp \
	../../src/xrc/xh_scrol.cpp \
	../../src/xrc/xh_scwin.cpp \
	../../src/xrc/xh_htmllbox.cpp \
	../../src/xrc/xh_simplebook.cpp \
	../../src/xrc/xh_sizer.cpp \
	../../src/xrc/xh_slidr.cpp \
	../../src/xrc/xh_spin.cpp \
	../../src/xrc/xh_split.cpp \
	../../src/xrc/xh_srchctrl.cpp \
	../../src/xrc/xh_statbar.cpp \
	../../src/xrc/xh_stbmp.cpp \
	../../src/xrc/xh_stbox.cpp \
	../../src/xrc/xh_stlin.cpp \
	../../src/xrc/xh_sttxt.cpp \
	../../src/xrc/xh_text.cpp \
	../../src/xrc/xh_tglbtn.cpp \
	../../src/xrc/xh_timectrl.cpp \
	../../src/xrc/xh_toolb.cpp \
	../../src/xrc/xh_toolbk.cpp \
	../../src/xrc/xh_tree.cpp \
	../../src/xrc/xh_treebk.cpp \
	../../src/xrc/xh_unkwn.cpp \
	../../src/xrc/xh_wizrd.cpp \
	../../src/xrc/xmlres.cpp \
	../../src/xrc/xmladv.cpp \
	../../src/xrc/xmlrsall.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxaui
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/aui/framemanager.cpp \
	../../src/aui/dockart.cpp \
	../../src/aui/floatpane.cpp \
	../../src/aui/auibook.cpp \
	../../src/aui/auibar.cpp \
	../../src/aui/tabmdi.cpp \
	../../src/aui/tabart.cpp \
	../../src/xrc/xh_aui.cpp \
	../../src/xrc/xh_auitoolb.cpp \
	../../src/aui/tabartmsw.cpp \
	../../src/aui/barartmsw.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxribbon
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/ribbon/art_internal.cpp \
	../../src/ribbon/art_msw.cpp \
	../../src/ribbon/art_aui.cpp \
	../../src/ribbon/bar.cpp \
	../../src/ribbon/buttonbar.cpp \
	../../src/ribbon/control.cpp \
	../../src/ribbon/gallery.cpp \
	../../src/ribbon/page.cpp \
	../../src/ribbon/panel.cpp \
	../../src/ribbon/toolbar.cpp \
	../../src/xrc/xh_ribbon.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxpropgrid
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/propgrid/advprops.cpp \
	../../src/propgrid/editors.cpp \
	../../src/propgrid/manager.cpp \
	../../src/propgrid/property.cpp \
	../../src/propgrid/propgrid.cpp \
	../../src/propgrid/propgridiface.cpp \
	../../src/propgrid/propgridpagestate.cpp \
	../../src/propgrid/props.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxrichtext
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/richtext/richtextbuffer.cpp \
	../../src/richtext/richtextctrl.cpp \
	../../src/richtext/richtextformatdlg.cpp \
	../../src/richtext/richtexthtml.cpp \
	../../src/richtext/richtextimagedlg.cpp \
	../../src/richtext/richtextprint.cpp \
	../../src/richtext/richtextstyledlg.cpp \
	../../src/richtext/richtextstyles.cpp \
	../../src/richtext/richtextsymboldlg.cpp \
	../../src/richtext/richtextxml.cpp \
	../../src/xrc/xh_richtext.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxstc
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/stc/stc.cpp \
	../../src/stc/PlatWX.cpp \
	../../src/stc/ScintillaWX.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib \
	../../src/stc/scintilla/include \
	../../src/stc/scintilla/lexlib \
	../../src/stc/scintilla\src
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING \
	-D__WX__ \
	-DSCI_LEXER \
	-DNO_CXX11_REGEX \
	-DLINK_LEXERS
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := wxgl
LOCAL_SRC_FILES := \
	../../src/common/dummy.cpp \
	../../src/common/glcmn.cpp
LOCAL_CPP_FEATURES := exceptions rtti
LOCAL_C_INCLUDES := \
	$(SETUPHDIR) \
	../../include \
	../../src/tiff/libtiff \
	../../src/jpeg \
	../../src/png \
	../../src/zlib \
	../../src/regex \
	../../src/expat/expat/lib
LOCAL_CFLAGS := \
	-D__ANDROID__ \
	-DWXBUILDING
include $(BUILD_STATIC_LIBRARY)

