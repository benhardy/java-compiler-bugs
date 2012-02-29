#!/usr/bin/env bash

rm *class

# Looks like any case where Program comes before Actions will fail.
#
# Program.java:6: cannot find symbol
# symbol  : method run(java.lang.String)
# location: class problem.Actions
#        Actions.SKIP.run("hello");
#
# seems related to http://bugs.sun.com/view_bug.do?bug_id=6199662
# using javac 1.6.0_29
# mac os x 10.7.2 x86_64
#

# this case fails
javac Program.java Actions.java ActionSpec.java

# this case fails
#javac Program.java Actions.java ActionSpec.java

# this case fails
#javac ActionSpec.java Program.java Actions.java

# this case succeeds
#javac ActionSpec.java Actions.java Program.java

# this case succeeds
#javac Actions.java ActionSpec.java Program.java

# this case succeeds
#javac Actions.java Program.java ActionSpec.java

