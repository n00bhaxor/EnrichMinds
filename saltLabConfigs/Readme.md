These are the basic salt configs to run our enRichMinds labs.

Once you have salt master and minion(s) set up, just add these
to your top.sls file, and run state.apply $labGoesHere.

If possible, we've added a kill lab salt config to "deconfigure"
any system that we make less secure, and they can be run
just like the labs, e.g. state.apply killThisLab.

We've included an enable and disableSELinux module for one offs
