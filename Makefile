# (C) 2016 Jean Nassar. Some Rights Reserved
MASTER = jnassar_resume

all:
	make quick

once:
	xelatex $(MASTER)

show:
	evince $(MASTER).pdf

refs:
	make once
	# makeglossaries $(MASTER)
	make once

quick:
	make once
	make show

rerun:
	make clean
	make refs

full:
	make rerun
	make show

clean:
	rm -f *.{acn,acr,alg,aux,glg,glo,gls,ist,lof,lot,log,nav,out,snm,toc,gz}
