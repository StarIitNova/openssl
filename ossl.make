# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_x86
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

RESCOMP = windres
INCLUDES += -Iinclude -Icrypto -Issl
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LINKCMD = $(AR) -rcs "$@" $(OBJECTS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),debug_x86)
TARGETDIR = build/Debug
TARGET = $(TARGETDIR)/ossl.lib
OBJDIR = build/Debug/int/x86/Debug/ossl
DEFINES += -D_CRT_SECURE_NO_WARNINGS -DNO_WINDOWS_BRAINDEATH -DOPENSSL_NO_FIPS -DWIN32_LEAN_AND_MEAN -D_CRT_SECURE_NO_DEPRECATE -DOPENSSL_SYSNAME_WIN32 -DOPENSSL_SYS_WINDOWS -DDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g
LIBS += build/Debug/crypto.lib
LDDEPS += build/Debug/crypto.lib
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32

else ifeq ($(config),debug_x64)
TARGETDIR = build/Debug
TARGET = $(TARGETDIR)/ossl.lib
OBJDIR = build/Debug/int/x64/Debug/ossl
DEFINES += -D_CRT_SECURE_NO_WARNINGS -DNO_WINDOWS_BRAINDEATH -DOPENSSL_NO_FIPS -DWIN32_LEAN_AND_MEAN -D_CRT_SECURE_NO_DEPRECATE -DOPENSSL_SYSNAME_WIN32 -DOPENSSL_SYS_WINDOWS -DDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g
LIBS += build/Debug/crypto.lib
LDDEPS += build/Debug/crypto.lib
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64

else ifeq ($(config),release_x86)
TARGETDIR = build/Release
TARGET = $(TARGETDIR)/ossl.lib
OBJDIR = build/Release/int/x86/Release/ossl
DEFINES += -D_CRT_SECURE_NO_WARNINGS -DNO_WINDOWS_BRAINDEATH -DOPENSSL_NO_FIPS -DWIN32_LEAN_AND_MEAN -D_CRT_SECURE_NO_DEPRECATE -DOPENSSL_SYSNAME_WIN32 -DOPENSSL_SYS_WINDOWS -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O2
LIBS += build/Release/crypto.lib
LDDEPS += build/Release/crypto.lib
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -s

else ifeq ($(config),release_x64)
TARGETDIR = build/Release
TARGET = $(TARGETDIR)/ossl.lib
OBJDIR = build/Release/int/x64/Release/ossl
DEFINES += -D_CRT_SECURE_NO_WARNINGS -DNO_WINDOWS_BRAINDEATH -DOPENSSL_NO_FIPS -DWIN32_LEAN_AND_MEAN -D_CRT_SECURE_NO_DEPRECATE -DOPENSSL_SYSNAME_WIN32 -DOPENSSL_SYS_WINDOWS -DNDEBUG
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2
LIBS += build/Release/crypto.lib
LDDEPS += build/Release/crypto.lib
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -s

endif

# Per File Configurations
# #############################################


# File sets
# #############################################

GENERATED :=
OBJECTS :=

GENERATED += $(OBJDIR)/bio_ssl.o
GENERATED += $(OBJDIR)/cc_newreno.o
GENERATED += $(OBJDIR)/d1_lib.o
GENERATED += $(OBJDIR)/d1_msg.o
GENERATED += $(OBJDIR)/d1_srtp.o
GENERATED += $(OBJDIR)/dtls_meth.o
GENERATED += $(OBJDIR)/extensions.o
GENERATED += $(OBJDIR)/extensions_clnt.o
GENERATED += $(OBJDIR)/extensions_cust.o
GENERATED += $(OBJDIR)/extensions_srvr.o
GENERATED += $(OBJDIR)/json_enc.o
GENERATED += $(OBJDIR)/ktls_meth.o
GENERATED += $(OBJDIR)/methods.o
GENERATED += $(OBJDIR)/poll_immediate.o
GENERATED += $(OBJDIR)/pqueue.o
GENERATED += $(OBJDIR)/priority_queue.o
GENERATED += $(OBJDIR)/qlog.o
GENERATED += $(OBJDIR)/qlog_event_helpers.o
GENERATED += $(OBJDIR)/quic_ackm.o
GENERATED += $(OBJDIR)/quic_cfq.o
GENERATED += $(OBJDIR)/quic_channel.o
GENERATED += $(OBJDIR)/quic_demux.o
GENERATED += $(OBJDIR)/quic_engine.o
GENERATED += $(OBJDIR)/quic_fc.o
GENERATED += $(OBJDIR)/quic_fifd.o
GENERATED += $(OBJDIR)/quic_impl.o
GENERATED += $(OBJDIR)/quic_lcidm.o
GENERATED += $(OBJDIR)/quic_method.o
GENERATED += $(OBJDIR)/quic_port.o
GENERATED += $(OBJDIR)/quic_rcidm.o
GENERATED += $(OBJDIR)/quic_reactor.o
GENERATED += $(OBJDIR)/quic_record_rx.o
GENERATED += $(OBJDIR)/quic_record_shared.o
GENERATED += $(OBJDIR)/quic_record_tx.o
GENERATED += $(OBJDIR)/quic_record_util.o
GENERATED += $(OBJDIR)/quic_rstream.o
GENERATED += $(OBJDIR)/quic_rx_depack.o
GENERATED += $(OBJDIR)/quic_sf_list.o
GENERATED += $(OBJDIR)/quic_srt_gen.o
GENERATED += $(OBJDIR)/quic_srtm.o
GENERATED += $(OBJDIR)/quic_sstream.o
GENERATED += $(OBJDIR)/quic_statm.o
GENERATED += $(OBJDIR)/quic_stream_map.o
GENERATED += $(OBJDIR)/quic_thread_assist.o
GENERATED += $(OBJDIR)/quic_tls.o
GENERATED += $(OBJDIR)/quic_trace.o
GENERATED += $(OBJDIR)/quic_tserver.o
GENERATED += $(OBJDIR)/quic_txp.o
GENERATED += $(OBJDIR)/quic_txpim.o
GENERATED += $(OBJDIR)/quic_types.o
GENERATED += $(OBJDIR)/quic_wire.o
GENERATED += $(OBJDIR)/quic_wire_pkt.o
GENERATED += $(OBJDIR)/rec_layer_d1.o
GENERATED += $(OBJDIR)/rec_layer_s3.o
GENERATED += $(OBJDIR)/s3_enc.o
GENERATED += $(OBJDIR)/s3_lib.o
GENERATED += $(OBJDIR)/s3_msg.o
GENERATED += $(OBJDIR)/ssl3_cbc.o
GENERATED += $(OBJDIR)/ssl3_meth.o
GENERATED += $(OBJDIR)/ssl_asn1.o
GENERATED += $(OBJDIR)/ssl_cert.o
GENERATED += $(OBJDIR)/ssl_cert_comp.o
GENERATED += $(OBJDIR)/ssl_ciph.o
GENERATED += $(OBJDIR)/ssl_conf.o
GENERATED += $(OBJDIR)/ssl_err.o
GENERATED += $(OBJDIR)/ssl_err_legacy.o
GENERATED += $(OBJDIR)/ssl_init.o
GENERATED += $(OBJDIR)/ssl_lib.o
GENERATED += $(OBJDIR)/ssl_mcnf.o
GENERATED += $(OBJDIR)/ssl_rsa.o
GENERATED += $(OBJDIR)/ssl_rsa_legacy.o
GENERATED += $(OBJDIR)/ssl_sess.o
GENERATED += $(OBJDIR)/ssl_stat.o
GENERATED += $(OBJDIR)/ssl_txt.o
GENERATED += $(OBJDIR)/ssl_utst.o
GENERATED += $(OBJDIR)/statem.o
GENERATED += $(OBJDIR)/statem_clnt.o
GENERATED += $(OBJDIR)/statem_dtls.o
GENERATED += $(OBJDIR)/statem_lib.o
GENERATED += $(OBJDIR)/statem_srvr.o
GENERATED += $(OBJDIR)/t1_enc.o
GENERATED += $(OBJDIR)/t1_lib.o
GENERATED += $(OBJDIR)/t1_trce.o
GENERATED += $(OBJDIR)/tls13_enc.o
GENERATED += $(OBJDIR)/tls13_meth.o
GENERATED += $(OBJDIR)/tls1_meth.o
GENERATED += $(OBJDIR)/tls_common.o
GENERATED += $(OBJDIR)/tls_depr.o
GENERATED += $(OBJDIR)/tls_multib.o
GENERATED += $(OBJDIR)/tls_pad.o
GENERATED += $(OBJDIR)/tls_srp.o
GENERATED += $(OBJDIR)/tlsany_meth.o
GENERATED += $(OBJDIR)/uint_set.o
OBJECTS += $(OBJDIR)/bio_ssl.o
OBJECTS += $(OBJDIR)/cc_newreno.o
OBJECTS += $(OBJDIR)/d1_lib.o
OBJECTS += $(OBJDIR)/d1_msg.o
OBJECTS += $(OBJDIR)/d1_srtp.o
OBJECTS += $(OBJDIR)/dtls_meth.o
OBJECTS += $(OBJDIR)/extensions.o
OBJECTS += $(OBJDIR)/extensions_clnt.o
OBJECTS += $(OBJDIR)/extensions_cust.o
OBJECTS += $(OBJDIR)/extensions_srvr.o
OBJECTS += $(OBJDIR)/json_enc.o
OBJECTS += $(OBJDIR)/ktls_meth.o
OBJECTS += $(OBJDIR)/methods.o
OBJECTS += $(OBJDIR)/poll_immediate.o
OBJECTS += $(OBJDIR)/pqueue.o
OBJECTS += $(OBJDIR)/priority_queue.o
OBJECTS += $(OBJDIR)/qlog.o
OBJECTS += $(OBJDIR)/qlog_event_helpers.o
OBJECTS += $(OBJDIR)/quic_ackm.o
OBJECTS += $(OBJDIR)/quic_cfq.o
OBJECTS += $(OBJDIR)/quic_channel.o
OBJECTS += $(OBJDIR)/quic_demux.o
OBJECTS += $(OBJDIR)/quic_engine.o
OBJECTS += $(OBJDIR)/quic_fc.o
OBJECTS += $(OBJDIR)/quic_fifd.o
OBJECTS += $(OBJDIR)/quic_impl.o
OBJECTS += $(OBJDIR)/quic_lcidm.o
OBJECTS += $(OBJDIR)/quic_method.o
OBJECTS += $(OBJDIR)/quic_port.o
OBJECTS += $(OBJDIR)/quic_rcidm.o
OBJECTS += $(OBJDIR)/quic_reactor.o
OBJECTS += $(OBJDIR)/quic_record_rx.o
OBJECTS += $(OBJDIR)/quic_record_shared.o
OBJECTS += $(OBJDIR)/quic_record_tx.o
OBJECTS += $(OBJDIR)/quic_record_util.o
OBJECTS += $(OBJDIR)/quic_rstream.o
OBJECTS += $(OBJDIR)/quic_rx_depack.o
OBJECTS += $(OBJDIR)/quic_sf_list.o
OBJECTS += $(OBJDIR)/quic_srt_gen.o
OBJECTS += $(OBJDIR)/quic_srtm.o
OBJECTS += $(OBJDIR)/quic_sstream.o
OBJECTS += $(OBJDIR)/quic_statm.o
OBJECTS += $(OBJDIR)/quic_stream_map.o
OBJECTS += $(OBJDIR)/quic_thread_assist.o
OBJECTS += $(OBJDIR)/quic_tls.o
OBJECTS += $(OBJDIR)/quic_trace.o
OBJECTS += $(OBJDIR)/quic_tserver.o
OBJECTS += $(OBJDIR)/quic_txp.o
OBJECTS += $(OBJDIR)/quic_txpim.o
OBJECTS += $(OBJDIR)/quic_types.o
OBJECTS += $(OBJDIR)/quic_wire.o
OBJECTS += $(OBJDIR)/quic_wire_pkt.o
OBJECTS += $(OBJDIR)/rec_layer_d1.o
OBJECTS += $(OBJDIR)/rec_layer_s3.o
OBJECTS += $(OBJDIR)/s3_enc.o
OBJECTS += $(OBJDIR)/s3_lib.o
OBJECTS += $(OBJDIR)/s3_msg.o
OBJECTS += $(OBJDIR)/ssl3_cbc.o
OBJECTS += $(OBJDIR)/ssl3_meth.o
OBJECTS += $(OBJDIR)/ssl_asn1.o
OBJECTS += $(OBJDIR)/ssl_cert.o
OBJECTS += $(OBJDIR)/ssl_cert_comp.o
OBJECTS += $(OBJDIR)/ssl_ciph.o
OBJECTS += $(OBJDIR)/ssl_conf.o
OBJECTS += $(OBJDIR)/ssl_err.o
OBJECTS += $(OBJDIR)/ssl_err_legacy.o
OBJECTS += $(OBJDIR)/ssl_init.o
OBJECTS += $(OBJDIR)/ssl_lib.o
OBJECTS += $(OBJDIR)/ssl_mcnf.o
OBJECTS += $(OBJDIR)/ssl_rsa.o
OBJECTS += $(OBJDIR)/ssl_rsa_legacy.o
OBJECTS += $(OBJDIR)/ssl_sess.o
OBJECTS += $(OBJDIR)/ssl_stat.o
OBJECTS += $(OBJDIR)/ssl_txt.o
OBJECTS += $(OBJDIR)/ssl_utst.o
OBJECTS += $(OBJDIR)/statem.o
OBJECTS += $(OBJDIR)/statem_clnt.o
OBJECTS += $(OBJDIR)/statem_dtls.o
OBJECTS += $(OBJDIR)/statem_lib.o
OBJECTS += $(OBJDIR)/statem_srvr.o
OBJECTS += $(OBJDIR)/t1_enc.o
OBJECTS += $(OBJDIR)/t1_lib.o
OBJECTS += $(OBJDIR)/t1_trce.o
OBJECTS += $(OBJDIR)/tls13_enc.o
OBJECTS += $(OBJDIR)/tls13_meth.o
OBJECTS += $(OBJDIR)/tls1_meth.o
OBJECTS += $(OBJDIR)/tls_common.o
OBJECTS += $(OBJDIR)/tls_depr.o
OBJECTS += $(OBJDIR)/tls_multib.o
OBJECTS += $(OBJDIR)/tls_pad.o
OBJECTS += $(OBJDIR)/tls_srp.o
OBJECTS += $(OBJDIR)/tlsany_meth.o
OBJECTS += $(OBJDIR)/uint_set.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(GENERATED) $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking ossl
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning ossl
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(GENERATED)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(GENERATED)) del /s /q $(subst /,\\,$(GENERATED))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CC) -x c-header $(ALL_CFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/bio_ssl.o: ssl/bio_ssl.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/d1_lib.o: ssl/d1_lib.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/d1_msg.o: ssl/d1_msg.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/d1_srtp.o: ssl/d1_srtp.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/methods.o: ssl/methods.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pqueue.o: ssl/pqueue.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/priority_queue.o: ssl/priority_queue.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/cc_newreno.o: ssl/quic/cc_newreno.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/json_enc.o: ssl/quic/json_enc.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/qlog.o: ssl/quic/qlog.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/qlog_event_helpers.o: ssl/quic/qlog_event_helpers.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_ackm.o: ssl/quic/quic_ackm.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_cfq.o: ssl/quic/quic_cfq.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_channel.o: ssl/quic/quic_channel.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_demux.o: ssl/quic/quic_demux.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_engine.o: ssl/quic/quic_engine.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_fc.o: ssl/quic/quic_fc.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_fifd.o: ssl/quic/quic_fifd.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_impl.o: ssl/quic/quic_impl.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_lcidm.o: ssl/quic/quic_lcidm.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_method.o: ssl/quic/quic_method.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_port.o: ssl/quic/quic_port.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_rcidm.o: ssl/quic/quic_rcidm.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_reactor.o: ssl/quic/quic_reactor.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_record_rx.o: ssl/quic/quic_record_rx.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_record_shared.o: ssl/quic/quic_record_shared.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_record_tx.o: ssl/quic/quic_record_tx.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_record_util.o: ssl/quic/quic_record_util.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_rstream.o: ssl/quic/quic_rstream.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_rx_depack.o: ssl/quic/quic_rx_depack.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_sf_list.o: ssl/quic/quic_sf_list.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_srt_gen.o: ssl/quic/quic_srt_gen.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_srtm.o: ssl/quic/quic_srtm.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_sstream.o: ssl/quic/quic_sstream.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_statm.o: ssl/quic/quic_statm.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_stream_map.o: ssl/quic/quic_stream_map.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_thread_assist.o: ssl/quic/quic_thread_assist.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_tls.o: ssl/quic/quic_tls.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_trace.o: ssl/quic/quic_trace.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_tserver.o: ssl/quic/quic_tserver.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_txp.o: ssl/quic/quic_txp.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_txpim.o: ssl/quic/quic_txpim.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_types.o: ssl/quic/quic_types.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_wire.o: ssl/quic/quic_wire.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/quic_wire_pkt.o: ssl/quic/quic_wire_pkt.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/uint_set.o: ssl/quic/uint_set.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/dtls_meth.o: ssl/record/methods/dtls_meth.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ktls_meth.o: ssl/record/methods/ktls_meth.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl3_cbc.o: ssl/record/methods/ssl3_cbc.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl3_meth.o: ssl/record/methods/ssl3_meth.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tls13_meth.o: ssl/record/methods/tls13_meth.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tls1_meth.o: ssl/record/methods/tls1_meth.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tls_common.o: ssl/record/methods/tls_common.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tls_multib.o: ssl/record/methods/tls_multib.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tls_pad.o: ssl/record/methods/tls_pad.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tlsany_meth.o: ssl/record/methods/tlsany_meth.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/rec_layer_d1.o: ssl/record/rec_layer_d1.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/rec_layer_s3.o: ssl/record/rec_layer_s3.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/poll_immediate.o: ssl/rio/poll_immediate.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/s3_enc.o: ssl/s3_enc.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/s3_lib.o: ssl/s3_lib.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/s3_msg.o: ssl/s3_msg.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_asn1.o: ssl/ssl_asn1.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_cert.o: ssl/ssl_cert.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_cert_comp.o: ssl/ssl_cert_comp.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_ciph.o: ssl/ssl_ciph.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_conf.o: ssl/ssl_conf.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_err.o: ssl/ssl_err.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_err_legacy.o: ssl/ssl_err_legacy.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_init.o: ssl/ssl_init.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_lib.o: ssl/ssl_lib.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_mcnf.o: ssl/ssl_mcnf.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_rsa.o: ssl/ssl_rsa.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_rsa_legacy.o: ssl/ssl_rsa_legacy.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_sess.o: ssl/ssl_sess.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_stat.o: ssl/ssl_stat.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_txt.o: ssl/ssl_txt.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/ssl_utst.o: ssl/ssl_utst.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/extensions.o: ssl/statem/extensions.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/extensions_clnt.o: ssl/statem/extensions_clnt.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/extensions_cust.o: ssl/statem/extensions_cust.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/extensions_srvr.o: ssl/statem/extensions_srvr.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/statem.o: ssl/statem/statem.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/statem_clnt.o: ssl/statem/statem_clnt.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/statem_dtls.o: ssl/statem/statem_dtls.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/statem_lib.o: ssl/statem/statem_lib.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/statem_srvr.o: ssl/statem/statem_srvr.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/t1_enc.o: ssl/t1_enc.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/t1_lib.o: ssl/t1_lib.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/t1_trce.o: ssl/t1_trce.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tls13_enc.o: ssl/tls13_enc.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tls_depr.o: ssl/tls_depr.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tls_srp.o: ssl/tls_srp.c
	@echo "$(notdir $<)"
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif