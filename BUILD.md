# BUILD

spellchecker -l en-GB  --files  *.md --dictionaries _dictionary_luddites.txt  > spellingreport.txt

jb clean .

jb build --toc _toc_topham.yml --config _config_topham.yml --builder pdflatex .


--

pandoc protest-notes.md -o  protest-notes.pdf --pdf-engine=xelatex
