matchy
======
matchy is:
* a sandbox for my ideal workflow
* an experiment with hexagonal cucumber
* a demonstration of the walking skeleton approach

getting started
===============
1. 'rake setup'
2. 'rake check'

red-green-refactor
==================
* establish sources of feedback. running each of the following in a separate tmux pane works great
** 'rake watch' provides feedback on the cucumber scenarios (the outside-in validation loop). use 'tail -f ./cucumber/log/cucumber.log' in a separate pane to see a detailed log
** 'grunt watch' provides feedback on the javascript specs (the inside-out validation loop)

delivery
========
all green? ship it with 'rake ship'
