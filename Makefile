PROJECT_NAME:=avsc
WORKING_DIR:=$(abspath $(shell dirname $(lastword $(MAKEFILE_LIST))))
ARCHITEKT_DIR:=$(WORKING_DIR)/.preset

include $(ARCHITEKT_DIR)/variables.default.mk
include $(ARCHITEKT_DIR)/default.mk

include $(ARCHITEKT_DIR)/release.default.mk
include $(ARCHITEKT_DIR)/doc.default.mk
include $(ARCHITEKT_DIR)/example.default.mk
include $(ARCHITEKT_DIR)/dist.default.mk
include $(ARCHITEKT_DIR)/run.$(STAGE).mk
include $(ARCHITEKT_DIR)/build.md.mk
include $(ARCHITEKT_DIR)/build.default.mk
include $(ARCHITEKT_DIR)/npm-install.mk