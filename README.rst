=====================
django Organice Theme
=====================

This is the mother theme of all themes for `django-organice`_.  A theme is a simple Django app, which contains
a collection of static files (assets) and templates.  A ``Makefile`` for asset management is also included.

``django-organice-theme`` is composed of:

- `bootstrap-sass`_ (Twitter Bootstrap v3, and Sass)
- `Compass`_ (CSS authoring framework using Sass)
- `UglifyJS v2`_ (JavaScript minifier)

Official Themes
===============

Here is a list of django Organice themes supported by us:

- `django-organice-theme-rssk`_ (first Organice theme ever)
- `django-organice-theme-fullpage`_ (Organice.io theme based on fullPage.js)

If you have a nice theme and would like to include it into this list `let us know by e-mail`_
or make a pull request on this README file.

Rolling Your Own Theme
======================

Preparations:

- Visit http://organice.io/themes and find a theme that is as close as it gets of what you want.
- Go to that theme's repository page, make a copy of the whole project, and rename it (e.g. to ``mytheme``).

Loop until you're happy:

- Add or adapt the style sheet (``.scss``), JavaScript (``.js``), and other files in ``mytheme/static/``.
- Run ``make assets`` in order to compile the Sass files to CSS, and combine and minify both CSS und JavaScript.
- Adapt the template files in ``mytheme/templates/``, and test the results on your development system.

Download and Contributions
==========================

Official repositories: (kept in sync)

#. Bitbucket: https://bitbucket.org/bittner/django-organice-theme
#. GitHub: https://github.com/bittner/django-organice-theme

Getting Help
============

- Documentation is available at http://docs.organice.io
- Questions? Please use StackOverflow_.  Tag your questions with ``django-organice``.
- Found a bug? Please use either the Bitbucket_ or GitHub_ issue tracker (you choose)


.. _`django-organice`: http://organice.io/
.. _`bootstrap-sass`: https://github.com/twbs/bootstrap-sass
.. _`Compass`: http://compass-style.org/
.. _`UglifyJS v2`: https://github.com/mishoo/UglifyJS2
.. _`django-organice-theme-rssk`: https://pypi.python.org/pypi/django-organice-theme-rssk
.. _`django-organice-theme-fullpage`: https://pypi.python.org/pypi/django-organice-theme-fullpage
.. _`let us know by e-mail`: support@organice.io
.. _StackOverflow: http://stackoverflow.com/questions/tagged/django-organice
.. _Bitbucket: https://bitbucket.org/bittner/django-organice-theme/issues
.. _GitHub: https://github.com/bittner/django-organice-theme/issues
