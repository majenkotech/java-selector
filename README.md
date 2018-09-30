Java Selector
=============

Since java 9 some java programs have been broken. They very cleverly
changed a lot of things in Java 9 which broke many many programs, especially
those that use plugins using the URLClassLoader. 

So many people still need to run Java 8 on their system, and they miss out on
the joys of running newer Java implementations, like Java 11.  That is, unless they
manually change programs to point directly to a specific java version.

Enter java-selector
-------------------

Java Selector is a small Perl program which replaces /usr/bin/java on your system
(usually using the `update-alternatives` system) and examines the command line passed
to it. If it finds a `.jar` file anywhere in the command line it compares it to a
list of files held in `/etc/java-mappings`.  If it finds it in there it gets the
java version to run for that file.

That found java executable, if any, is then called with the existing command line
arguments untouched.  If no mapping is found it uses the "default" java installation.

This means you can just maintain one central list of mappings for your java programs
and have it automatically run the right version of Java for you.
