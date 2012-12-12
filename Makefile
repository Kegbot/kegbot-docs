# Kegbot-specific Makefile

include sphinx.mk

SYNC := rsync -a --checksum --delete-after

kbcollect:
	$(SYNC) ../kegbot/deploy/ deploy/
	$(SYNC) ../kegbot/docs/source/ source/server
	$(SYNC) ../kegbot-api/docs/source/ source/api
	$(SYNC) ../kegboard/docs/source/ source/kegboard
	$(SYNC) ../kegbot-pycore/docs/source/ source/pycore

kbclean:
	rm -rf source/{server,api,kegboard,pycore}

kbhtml: kbcollect html

kbjson: kbcollect json

kbsync: kbclean kbjson
	rsync -av --checksum --delete-after -e ssh build/ \
	  kegbot@planetkb:www/kegbot.org/docs/

.PHONY: kbcollect kbclean kbhtml kbjson kbsync
