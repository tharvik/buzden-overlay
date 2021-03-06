# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

AUTOTOOLS_AUTORECONF=true

inherit autotools-utils eutils git-r3

DESCRIPTION="Software verification platform"
HOMEPAGE="http://forge.ispras.ru/projects/astraver"
EGIT_REPO_URI="https://forge.ispras.ru/git/astraver.jessie2"
EGIT_BRANCH="alpha2"
EGIT_COMMIT="a20bd0c9ca0b561c1af6db58ccd9368d343558fb"
EGIT_MIN_CLONE_TYPE=single

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"
IUSE="+ocamlopt"

RDEPEND="
	>=dev-lang/ocaml-4.02[ocamlopt?]
	=sci-mathematics/frama-c-20150201_p4[ocamlopt?]
	>=sci-mathematics/why3-0.87_p1"
DEPEND="${RDEPEND}
       >=dev-vcs/git-1.8"

AUTOTOOLS_IN_SOURCE_BUILD=1
