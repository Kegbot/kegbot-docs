.. _components:

===========================
Components and Architecture
===========================

There are several parts to a working Kegbot system.  This chapter will
familiarize you with each of them.

Hardware Components
===================

Flow Meter
----------

A flow meter or flow sensor is inserted inline with your beer line sense volume
leaving the keg.  One meter is required for each beer line you want to support.

Flow Valve (Optional)
---------------------

If desired, you can also put a solenoid valve inline with your system.  Kegbot
can then open and close the valve in response to user activity.

Kegboard (Controller Board)
---------------------------

The `Kegboard Controller Board </docs/kegboard/>`_ (sometimes called simply
*controller* or *kegboard* as a shorthand) is a USB device which reads data from
the flow sensors and reports it to the rest of the system.

Software Components
===================

Core
----

The Kegbot Core, or *core* for shorthand, is the "brains" of a Kegbot system.
It's the software that listens to and controls the Kegboard, and reports data
back to the server.  You can think of the core as all of the logic necessary to
to create drinks.

When running, the core performs several tasks:

* Talks to the Kegboard hardware;
* Sums flow sensor information into discrete drink events, which are then
  reported to the Kegbot Server;
* Processes authentication packets and decides whether to assign a user to a
  drink or start a new one;
* Sends messages to the controller board in order to open and close valves (if
  installed);
* Interprets temperature sensor data and sends it along to the server.

The **Kegtab** application has a fully-integrated Kegbot Core; just connect
your Kegboard to the app and you're set.

.. note::
  Originally, the Kegbot Core was written as a set of command-line programs,
  **kegbot-pycore**.  We still provide this legacy software, but we strongly
  recommend using the Android implementation instead, as it is where most
  development is focused.

Kegbot Server
-------------

`Kegbot Server </docs/server/>`_ is the backend of a Kegbot system.  It stores
all user, drink, and keg data in a database, and implements the `Kegbot API
<http://kegbot.org/docs/api/>`_ so that the core can post new drink events to
it.

Additionally, the server provides a browsable web interface for examining
statistics and system history.

Kegtab (Android app)
--------------------

The `Kegtab Android app </docs/android/>`_ is the frontend of your beer tap.  It
is designed to be left running continuously on a tablet installed near the tap.
Kegtab's primary tasks are:

* Monitor attached Kegboard hardware.
* Run the Core and report new drinks to the Server.
* Display status on the touch screen.

Kegtab also includes several other supporting features, such as new user
registration and browsing drink history.

.. note::
  Though it includes an integrated Core, the Kegtab app does *not* include its
  own Kegbot Server.  The server must be running seperately in order for Kegtab
  to function.
