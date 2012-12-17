.. _planning:

====================
Planning your Kegbot
====================

Kegbot is designed with flexibility in mind: many features are optional, and
your build can be customized to your needs.

Tasks and Order
===============

Kegbot is a modular system, and because of this the work to build one can be
grouped into four different and independent task sets:

* **Kegerator:** Build or buy a kegerator; install the flow meter.
* **Controller:** Purchase an Arduino and test the `firmware
  </docs/kegboard/>`_; purchase and `assemble </docs/kegboard-build/>`_ the
  Kegboard shield.
* **Server:** Bring up a `Kegbot Server </docs/server/>`_; add users
  and taps; try a test pour by hand with the `Kegbot API </docs/api/>`_.
* **Android:** Select a `tablet </android/>`_; download and run the app.

The order in which you approach these tasks is *not important*. Many people
order hardware parts first (which often involves a little bit of lead time), and
work on the software bits while they're waiting.

Authentication
==============

Authentication -- letting users take credit for their drinks -- is Kegbot's most
famous feature.  However, authentication is optional: Kegbot will operate
normally even without any authentication information, treating every pour as a
"guest" pour.

Should you decide to add authentication, you will then need to decide *how* to
authenticate users.  There are multiple options:

* **Android:** Kegtab has a built-in user interface for selecting a drinker and
  starting a pour for that user. This method requires no extra hardware and is
  very intuitive for new Kegbot drinkers.
* **RFID:** The Kegboard firmware and board supports reading low-frequency RFIDs
  via the ID-12 RFID reader.  You will need to purchase and distribute
  compatible RFIDs.
* **iButtons:** These rugged, captive keys have been a longtime favorite of
  Kegbot, and the Kegboard firmware can read them directly with minimal
  additional hardware.


Access Control (Flow Valve)
===========================

Access control -- locking taps with a solenoid valve -- is another flagship
feature of Kegbot.  Like authentication, this feature is optional; most
Kegbotters don't use it, and Kegbot will work just fine without it.

Before you decide to enforce access control with a valve, consider the
following:

* **Complexity:** Introducing a valve (and a relay to drive it) adds more
  potential points of failure.
* **Security:** For the typical Kegbot install, adding a valve does not
  guarantee total security of the system.  Unless you have locked down every
  other aspect of your setup, it may be possible to subvert the access control
  by shorting the valve open.
* **Pour quality:** We have yet to find a solenoid valve that does not introduce
  at least a little extra turbulence in the beer line.  You may find that adding
  a valve increases foam to your pours.

For new users, we recommend starting without flow valves.  This reduces the work
needed to get up and running.  You can always revisit the decision later.

