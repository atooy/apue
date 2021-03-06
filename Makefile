include Make.defines.linux

#PROGS = myls read-write get-put getpid exe error1 error2 get-uid-gid signal\
		lseek \
		file-hole\
		make-big-file\
		io-efficiency \
		get-fd-flag \
		change-fd-flag\
		file-type \
		access\
		umask \
		chmod \
		unlink \
		symlink-readlink \
		utime \
		mkdir-rmdir\
		readdir \
		chdir \
		getcwd \
		devt \
		exercises/ch4/file-type2 \
		getc-putc \
		fgetc-fputc  \
		std_io_buffer_type \
		tmpfile\
		tmpfile2\
		mkstemp

#include ch6/Makefile
#include ch7/Makefile
include ch8/Makefile


all: $(PROGS)

$(LIB):
	make  -C lib

$(PROGS): $(LIB)

clean:
	rm -rf $(PROGS) $(TEMPFILES)
