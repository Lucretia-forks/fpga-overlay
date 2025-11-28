# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..13} )
DISTUTILS_USE_PEP517=standalone

inherit git-r3 distutils-r1

DESCRIPTION="Constraint Solving Problem resolver for Python"
HOMEPAGE="https://github.com/python-constraint/python-constraint"
EGIT_REPO_URI="https://github.com/python-constraint/python-constraint"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS=""
REQUIRED_USE="${PYiTHON_REQUIRED_USE}"

DEPEND=""
RDEPEND="
	${PYTHON_DEPS}
	${DEPEND}
"
BDEPEND=""

src_prepare() {
	rm -rf examples
	eapply_user
}
