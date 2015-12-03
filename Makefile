fn: fn.c
	$(CC) $(CFLAGS) -o fn fn.c
clean:
	rm -f fn
tar:
	rm -f fn-0.1
	ln -fs . fn-0.1
	tar -cvzf fn-0.1.tar.gz fn-0.1/fn.c fn-0.1/Makefile fn-0.1/LICENSE fn-0.1/README.md
	rm fn-0.1

.PHONY: clean tar
