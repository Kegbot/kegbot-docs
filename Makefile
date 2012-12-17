# Kegbot-specific Makefile

include sphinx.mk

SYNC := rsync -a --checksum --delete-after

GIT_BASE ?= https://github.com/Kegbot/

SYNC = \
	repo=$(1); \
	if [ ! -e "ext/$$repo" ]; then \
		git clone $(GIT_BASE)/$$repo ext/$$repo; \
	else \
		cd ext/$$repo && git pull; \
	fi

ext:
	mkdir ext

kbcollect:
	$(call SYNC,kegbot)
	$(call SYNC,kegbot-android)
	$(call SYNC,kegbot-api)
	$(call SYNC,kegboard)
	$(call SYNC,kegbot-pycore)

kbclean:
	rm -rf ext

kbhtml: kbcollect html

kbjson: kbcollect json

kbsync: kbjson
	rsync -av --checksum --delete-after -e ssh build/ \
	  kegbot@pkb:www/kegbot.org/docs/

.PHONY: kbcollect kbclean kbhtml kbjson kbsync
