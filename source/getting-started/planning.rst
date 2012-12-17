Planning your Kegbot
====================

Design Decisions
----------------

Kegbot is designed with flexibility in mind: many features are optional, and
your build can be customized to your needs.

Though in most cases you don't need to decide upfront, there are several design
decisions you should consider when building out your system.


Authentication
^^^^^^^^^^^^^^

Authentication -- letting users take credit for their drinks -- is Kegbot's
most famous feature.  However, authentication is optional: Kegbot will operate
normally without any authentication information, treating every pour as a
"guest" pour.

Should you decide to add authentication, you will then need to decide *how* to
authenticate users.  There are multiple options:

* **Android:** Users can tap their account name in the Android app to log in to
  a pour.  This method requires no extra hardware, and is, in our experience,
  very intuitive for new Kegbot drinkers.
* **RFID:** The Kegboard firmware and board supports reading low-frequence RFIDs
  via the ID-12 RFID reader.  You will need to purchase and distribute
  compatible RFIDs.
* **iButtons:**

Access Control (Flow Valves)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Access control -- locking taps with a solenoid valve -- is another flagship
feature of Kegbot.  Like authentication, this feature is optional; you don't
need to use it, or at least not initially.

Before you decide to add valve control, consider the following:

* **Complexity:** Introducing a valve (and a relay to drive it) adds more
  potential points of failure.
* **Security:** For the typical Kegbot install, adding a valve does not
  guarantee total security of the system.  Unless you have locked down every
  other aspect of your setup, it may be possible to subvert the access control
  by shorting the valve open.
* **Pour quality:** We have yet to find a solenoid valve that does not introduce
  at least a little extra turbulence in the beer line.  You may find that adding
  a valve introduces foam to your pours.

Finally, note that all it takes to install a valve is a new splice in your beer
line, making it easy to defer and revisit this decision.

Command-line or Android
^^^^^^^^^^^^^^^^^^^^^^^

What your Kegbot is in use, you will need to have a machine running to listen to
the Kegboard and talk to the server.  There are two options:

* **Command-line**: Install and run **kegbot-pycore** on a spare machine.
* **Android**: Run the Kegbot Android app on a spare android device.

Server Hosting
^^^^^^^^^^^^^^

