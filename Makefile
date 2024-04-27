#### Start of standard makefile configuration. ####

SHELL := /usr/bin/env bash
LN_S := ln -sf

# Root of the installation
prefix := /usr/local

# Root of the executables
exec_prefix := $(prefix)

# Executables
bindir := $(exec_prefix)/bin

# Set space as the recipe prefix, instead of tab
# Note: It also works with multiple spaces before the recipe text
empty :=
space := $(empty) $(empty)
.RECIPEPREFIX := $(space) $(space)

# Enable delete on error, which is disabled by default for legacy reasons
.DELETE_ON_ERROR:

#### End of standard makefile configuration. ####

# Project specific absolute path
srcdir := $(abspath $(dir $(lastword $(MAKEFILE_LIST))))

green := \\e[32m
blue := \\e[34m
bold := \\e[1m
reset := \\e[0m

.PHONY: all
all: install

.PHONY: install
install: installdirs
  @echo -e $(blue)Installing ...$(reset)
  @$(LN_S) $(srcdir)/pm-search $(DESTDIR)$(bindir)/pm-search
  @echo -e '   'Installing $(green)pm-search$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-search$(reset)
  @$(LN_S) $(srcdir)/pm-dependencies $(DESTDIR)$(bindir)/pm-dependencies
  @echo -e '   'Installing $(green)pm-dependencies$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-dependencies$(reset)
  @$(LN_S) $(srcdir)/pm-list-orphans $(DESTDIR)$(bindir)/pm-list-orphans
  @echo -e '   'Installing $(green)pm-list-orphans$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-list-orphans$(reset)
  @$(LN_S) $(srcdir)/pm-list $(DESTDIR)$(bindir)/pm-list
  @echo -e '   'Installing $(green)pm-list$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-list$(reset)
  @$(LN_S) $(srcdir)/pm-uninstall-package-and-dependencies $(DESTDIR)$(bindir)/pm-uninstall-package-and-dependencies
  @echo -e '   'Installing $(green)pm-uninstall-package-and-dependencies$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-uninstall-package-and-dependencies$(reset)
  @$(LN_S) $(srcdir)/pm-search-local $(DESTDIR)$(bindir)/pm-search-local
  @echo -e '   'Installing $(green)pm-search-local$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-search-local$(reset)
  @$(LN_S) $(srcdir)/pm-list-explicit $(DESTDIR)$(bindir)/pm-list-explicit
  @echo -e '   'Installing $(green)pm-list-explicit$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-list-explicit$(reset)
  @$(LN_S) $(srcdir)/pm-uninstall-orphans $(DESTDIR)$(bindir)/pm-uninstall-orphans
  @echo -e '   'Installing $(green)pm-uninstall-orphans$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-uninstall-orphans$(reset)
  @$(LN_S) $(srcdir)/pm-info $(DESTDIR)$(bindir)/pm-info
  @echo -e '   'Installing $(green)pm-info$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-info$(reset)
  @$(LN_S) $(srcdir)/pm-clean-cache $(DESTDIR)$(bindir)/pm-clean-cache
  @echo -e '   'Installing $(green)pm-clean-cache$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-clean-cache$(reset)
  @$(LN_S) $(srcdir)/pm-who-owns $(DESTDIR)$(bindir)/pm-who-owns
  @echo -e '   'Installing $(green)pm-who-owns$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-who-owns$(reset)
  @$(LN_S) $(srcdir)/pm-install-local $(DESTDIR)$(bindir)/pm-install-local
  @echo -e '   'Installing $(green)pm-install-local$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-install-local$(reset)
  @$(LN_S) $(srcdir)/pm-system-update $(DESTDIR)$(bindir)/pm-system-update
  @echo -e '   'Installing $(green)pm-system-update$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-system-update$(reset)
  @$(LN_S) $(srcdir)/pm-who-installs $(DESTDIR)$(bindir)/pm-who-installs
  @echo -e '   'Installing $(green)pm-who-installs$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-who-installs$(reset)
  @$(LN_S) $(srcdir)/pm-uninstall $(DESTDIR)$(bindir)/pm-uninstall
  @echo -e '   'Installing $(green)pm-uninstall$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-uninstall$(reset)
  @$(LN_S) $(srcdir)/pm-install $(DESTDIR)$(bindir)/pm-install
  @echo -e '   'Installing $(green)pm-install$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-install$(reset)
  @$(LN_S) $(srcdir)/pm-files $(DESTDIR)$(bindir)/pm-files
  @echo -e '   'Installing $(green)pm-files$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-files$(reset)
  @echo -e $(blue)Installing$(reset) $(green)DONE$(reset)

.PHONY: installdirs
installdirs:
  @echo -e $(blue)Creating directories ...$(reset)
  @mkdir -p $(DESTDIR)$(bindir)
  @echo -e '   'Creating directory $(green)$(DESTDIR)$(bindir)$(reset)
  @echo -e $(blue)Creating directories$(reset) $(green)DONE$(reset)\\n

.PHONY: uninstall
uninstall:
  @echo -e $(blue)Uninstalling ...$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-search
  @echo -e '   'Deleting file $(green)pm-search$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-search$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-dependencies
  @echo -e '   'Deleting file $(green)pm-dependencies$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-dependencies$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-list-orphans
  @echo -e '   'Deleting file $(green)pm-list-orphans$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-list-orphans$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-list
  @echo -e '   'Deleting file $(green)pm-list$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-list$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-uninstall-package-and-dependencies
  @echo -e '   'Deleting file $(green)pm-uninstall-package-and-dependencies$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-uninstall-package-and-dependencies$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-search-local
  @echo -e '   'Deleting file $(green)pm-search-local$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-search-local$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-list-explicit
  @echo -e '   'Deleting file $(green)pm-list-explicit$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-list-explicit$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-uninstall-orphans
  @echo -e '   'Deleting file $(green)pm-uninstall-orphans$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-uninstall-orphans$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-info
  @echo -e '   'Deleting file $(green)pm-info$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-info$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-clean-cache
  @echo -e '   'Deleting file $(green)pm-clean-cache$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-clean-cache$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-who-owns
  @echo -e '   'Deleting file $(green)pm-who-owns$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-who-owns$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-install-local
  @echo -e '   'Deleting file $(green)pm-install-local$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-install-local$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-system-update
  @echo -e '   'Deleting file $(green)pm-system-update$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-system-update$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-who-installs
  @echo -e '   'Deleting file $(green)pm-who-installs$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-who-installs$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-uninstall
  @echo -e '   'Deleting file $(green)pm-uninstall$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-uninstall$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-install
  @echo -e '   'Deleting file $(green)pm-install$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-install$(reset)
  @rm -f $(DESTDIR)$(bindir)/pm-files
  @echo -e '   'Deleting file $(green)pm-files$(reset) in $(green)$(DESTDIR)$(bindir)/$(reset)$(bold)pm-files$(reset)
  @echo -e $(green)Uninstalling DONE$(reset)

.PHONY: readme
readme:
  @echo -e $(blue)Building README.md ...$(reset)
  @./.internal-scripts/build-readme
  @echo -e $(green)Building README.md DONE$(reset)
