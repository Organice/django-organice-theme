#!/usr/bin/env python
#
# Copyright 2014 Peter Bittner <django@bittner.it>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

from setuptools import setup, find_packages
import os


CLASSIFIERS = [
    'Development Status :: 3 - Alpha',
    'Environment :: Web Environment',
    'Framework :: Django',
    'Intended Audience :: Developers',
    'License :: OSI Approved :: Apache Software License',
    'Operating System :: OS Independent',
    'Programming Language :: Python',
    'Topic :: Office/Business :: Groupware',
]

DEPENDENCIES = [
]

ROOT_PATH = os.path.dirname(__file__)

setup(
    name='django-organice-theme',
    version='0.2',
    author='Peter Bitter',
    author_email='django@bittner.it',
    url='http://organice.io/themes/',
    license='Apache License, Version 2.0',

    description='The mother theme of all themes for django-organice.',
    long_description=open(os.path.join(ROOT_PATH, 'README.rst')).read(),
    keywords='organice, theme, django, python',

    classifiers=CLASSIFIERS,
    install_requires=DEPENDENCIES,
    packages=find_packages(),
    include_package_data=True,
    zip_safe=False,
)
