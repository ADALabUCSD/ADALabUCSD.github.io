DOCS=index projects publications news blog
#PROJS=triptych genisys nimbus hamlet morpheus speakql slab orion precog vista
PROJS=triptych genisys nimbus hamlet morpheus speakql slab orion

HDOCS=$(addsuffix .html, $(DOCS))
HPROJS=$(addsuffix .html, $(PROJS))

.PHONY : docs projs
docs : $(HDOCS) $(HPROJS)

#.PHONY : update
#update : $(PHDOCS) ;
#    @echo -n 'Copying to server...' ;
    # insert code for copying to server here.
#    @echo ' done.' 

%.html : %.jemdoc MENU MENU2; python jemdoc.py -o $@ $<

.PHONY : clean
clean : ; -rm -f *.html
