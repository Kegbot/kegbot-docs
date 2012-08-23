.. _pull-request:

Submitting a Pull Request
=========================

Kegbot is hosted on GitHub.  We use the `pull request
<https://help.github.com/articles/using-pull-requests>`_ feature to accept new
contributions.

.. note::
  If you are a Git or GitHub newbie, we highly recommend you take a quick look
  over github's `pull request documentation
  <https://help.github.com/articles/using-pull-requests>`_ to get started.

Git workflow tips
-----------------

Please mind the following tips when working on a patch for Kegbot.

* **Don't work on the `master` branch.** After you fork a Kegbot repository, create
  a new branch to work on your feature.  Your forked repository's master should
  look just like Kegbot's master repository.  This will make it easier to update
  and maintain your change before it is submitted.
* **Do review your pull request before you submit it.** We're going to give your
  change a code review, so it's a good idea to give it a "once over" to catch
  anything before we take a look.
* **Do squash your patch into the smallest number of commits (usually just one).**
  Sometimes while working in your fork, you may perform multiple git commits.
  When you make a pull request, we will see all of these commits, and when we
  merge it, they will become part of the permanent Kegbot history.  Are they
  useful?  If not, use ``git rebase -i`` to squash useless/intermediate commits
  together.

Advice for new contributors
---------------------------

* **Start small.** It may be easier for you to get familiar with the Kegbot
  code and patch process -- and for us to get familiar with you! -- if you start
  with a smaller patch or bugfix.  If you're making a major change, consider
  popping into ``#kegbot`` to discuss it before you're too far along.
* **Expect a (lightweight) code review.** We're used to working in environments
  where every commit gets peer reviewed, so don't be disappointed if your first
  request is not accepted as-is.
