# Kegbot-specific Makefile

include sphinx.mk

SYNC := rsync -a --checksum --delete-after

SYNC = \
	repo=$(1); \
	if [ ! -e "ext/$$repo" ]; then \
		git clone https://github.com/Kegbot/$$repo ext/$$repo; \
	else \
		cd ext/$$repo && git pull; \
	fi

ext:
	mkdir ext

kbcollect:
	$(call SYNC,kegbot)
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
