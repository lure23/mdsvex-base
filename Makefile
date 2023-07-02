#
# Makefile
#
# End-repo side commands for developers. Uses the 'mp-shell' Makefile.
#
# Requires:
#	- multipass
#

export INSTANCE:=d41d8c
	# nothing magic about that name - just use anything that's unique (and starts with a letter)

export PARAMS:=--memory 2G --disk 3G --cpus 2
	# Hint: use 'multipass info <instance>' to tune these

_MP_WORK:=work
	# tbd. Consider mapping it only here (not in the sub)

_SUB_PATH=mp-shell.sub

all:
	@false

prep: _mp-image

# Note: You can do any number of such targets - or 'make shell' and run development from there.
#
build: _mp-image
	multipass exec $(INSTANCE) -d $(WORK) -- sh -c 'pwd && npm run build'

# Checks that a) 'multipass' exists as a command, b) downloads the Ubuntu image we use, c) sets up Node & npm environment,
# 	d) mounts this folder to '/home/ubuntu/work' in the target.
#
# NOTE: Mounting '--type native' currently (Jun'23, multipass 1.12.0) requires the VM to be stopped before the mount.
#		We could do the mount in the sub Makefile, but that exposes the path mapping there, which the author didn't find
#		nice. This way works, but is some ~10s slower (due to stop + restart). But that's a one-time thing. //30-Jun-23
#
_mp-image:
	$(MAKE) -e -f $(_SUB_PATH)/Makefile prep
	multipass stop $(INSTANCE)
	multipass mount --type native . $(INSTANCE):/home/ubuntu/$(_MP_WORK)
	multipass start $(INSTANCE)

_TMP_mount:
	multipass mount --type native . $(INSTANCE):/home/ubuntu/$(_MP_WORK)

# Manual: shell
shell: _mp-image
	multipass shell $(INSTANCE)

#---
echo:
	@echo A

.PHONY: all _mp-image shell echo
