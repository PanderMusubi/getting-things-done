# Getting Things Done

Miscellaneous files for https://en.wikipedia.org/wiki/Getting_Things_Done (GTD)
and https://en.wikipedia.org/wiki/Pomodoro_Technique .

## GTD Workflow

See [this image](getting-things-done-organise.png).

## GTD Labels

See [this PDF](gtd-labels.pdf) for labels on physical post boxes.

## Pomodoro Timer

A command-line timer for Pomodoro can be made by adding to `~/.bash_aliases` the
line

    alias pomodoro='sleep 1500 && mplayer -loop 3 /usr/share/sounds/speech-dispatcher/test.wav > /dev/null 2>&1'
