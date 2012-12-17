.. _components:

===========================
Components and Architecture
===========================

There are several parts to the Kegbot system.  This chapter will familiarize you
with each of them.

Hardware Components
===================

Flow Meter
----------

Building a working Kegbot starts by adding some extra hardware to your
kegerator:

* **Flow meter**: This small device sits inline with your beverage, outputting a
  series of electronic pulses as fluid passes through it.
* **Flow valve**: If desired, you can also put a solenoid valve inline with your
  system.  Kegbot can then open and close the valve in response to user
  activity.

Controller Board (Kegboard)
---------------------------

The Kegboard Controller Board (sometimes called simply *controller* or
*kegboard* as a shorthand) is a USB device which reads data from the flow
sensors and reports it to the rest of the system.

Based on Arduino, Kegboard is a simple USB device.

Software Components
===================

Core (Flow Manager)
-------------------

The Kegbot Core, or *core* for shorthand, is the "brains" of a Kegbot system.
It's the software that listens to and controls the Kegboard, and reports data
back to the server.

The **Kegbot Android** application implements a full Kegbot Core; just connect
your Kegboard to the app and you're set.

.. note::
  Originally, the Kegbot Core was written as a set of command-line programs,
  **kegbot-pycore**.  We still provide this legacy software, but we strongly
  recommend new users use the Android implementation, as it is where most
  development is focused.

When running, the core performs several tasks:

* Talks to the Kegboard hardware;
* Sums flow sensor information into discrete drink events, which are then
  reported to the Kegbot Server;
* Processes authentication packets and decides whether to start a new flow;
* Sends messages to the controller board in order to open and close valves;
* Interprets temperature sensor data and sends it to the server.


Server
------

**Kegbot Server** is the HTTP service part of Kegbot.

Android App (Kegtab)
--------------------

