set -e

emacs_batch() {
    emacs --batch  -l ox-latex -l ox-html \
	  -l ~/.emacs.d/init.el -l htmlize         \
	  -f toggle-org-custom-inline-style $* --kill
}

emacs_batch paper.org -f org-html-export-to-html
emacs_batch paper.org -f org-latex-export-to-pdf
emacs_batch paper.org -f org-latex-export-to-latex

xdir=aaptel-rtags-paper
rm -rf $xdir $xdir.tgz
mkdir $xdir
cp paper.{org,tex,pdf,html} $xdir
tar cfz $xdir.tgz $xdir
rm -f paper.{tex,pdf,html}
