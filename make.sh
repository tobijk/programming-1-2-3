#!/bin/sh -e

###############################################################################
# Functions
###############################################################################

usage() {
    echo "Usage: make.sh {build|clean}"
}

do_build() {
    echo "Generating documents:"

    find . -name "*.md" | while read mdfile; do
        basedir=$(pwd)

        fpath=$(dirname  $mdfile)
        fname=$(basename $mdfile)

        echo "* ${mdfile}"

        mkdir -p "spool/${fpath}"
        (
            cd "spool/${fpath}"
            md2ecml "${basedir}/${mdfile}" > tmp.xml

            mkdir -p "html/$(basename $fname .md)"
            (
                cd "html/$(basename $fname .md)"
                ecromedos -fxhtml ../../tmp.xml >> build.log
                rm -f build.log
            )

            mkdir tex
            (
                cd tex
                ecromedos -fpdflatex ../tmp.xml >> build.log
                pdflatex main.tex >> build.log
                pdflatex main.tex >> build.log
                pdflatex main.tex >> build.log
                rm -f build.log
            )

            mkdir pdf
            cp tex/main.pdf "pdf/$(basename ${fname} .md).pdf"
            rm -fr tex

            mkdir md
            sed '/^--------------------/,/^--------------------/d' \
                "${basedir}/${mdfile}" > "md/${fname}"

            rm -f tmp.xml
        )
    done
}

do_clean() {
    rm -fr spool
}

###############################################################################
# Main
###############################################################################

case "$1" in
    build)
        do_build
        ;;
    clean)
        do_clean
        ;;
    *)
        usage
        ;;
esac
