.. _pull-request:

Components and Architecture
===========================

There are several parts to the Kegbot system.  This chapter will familiarize you
with each of them.

Flow Hardware
-------------

Building a working Kegbot starts by adding some extra hardware to your
kegerator:

* **Flow meter**: This small device sits inline with your beverage, outputting a
  series of electronic pulses as fluid passes through it.
* **Flow valve**: If desired, you can also put a solenoid valve inline with your
  system.  Kegbot can then open and close the valve in response to user
  activity.


Controller Board (Kegboard)
---------------------------

Sometimes called the *controller* or *Kegboard* as a shorthand, the *controller
board* is the interface between the flow hardware and a computer system running
a Kegbot Core.

Kegbot's 

Core (Flow Manager)
-------------------

The Kegbot Core, or *core* for shorthand, is the "brains" of a Kegbot system.
It's a software component which sits between the controller board and the
backend.

When running, the core performs several tasks:

* Sums flow sensor information into discrete drink events, which are then
  reported to the Kegbot Server;
* Processes authentication packets and decides whether to start a new flow;
* Sends messages to the controller board in order to open and close valves;
* Interprets temperature sensor data and sends it to the server.

Kegbot has two different core implementations which cater to different needs:

* **kegbot-android**: The Kegbot Android implements a full Kegbot core.
  Released in 2012, this is the latest and greatest implementation.  We
  recommend new Kegbot users use this version.
* **kegbot-pycore**: Legacy command-line (Python) Kegbot core.  This program,
  first written in 2003 and evolving over the time since, is the original
  Kegbot core.  You probably won't be using it, unless you are not using the
  Android app for some reason.

Server
------

Frontend
--------

