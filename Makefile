DOCS=index projects publications news blog
PROJS=triptych genisys nimbus hamlet morpheus speakql slab orion vista krypton

HDOCS=$(addsuffix .html, $(DOCS))
HPROJS=$(addsuffix .html, $(PROJS))

.PHONY : docs projs
docs : $(HDOCS) $(HPROJS)

#.PHONY : update
#update : $(PHDOCS) ;
#    @echo -n 'Copying to server...' ;
    # insert code for copying to server here.
#    @echo ' done.' 

%.html : %.jemdoc MENU MENU2; python2.7 jemdoc.py -o $@ $<

.PHONY : clean
clean : ; -rm -f *.html
