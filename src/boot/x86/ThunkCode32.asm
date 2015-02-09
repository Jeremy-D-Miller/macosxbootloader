;********************************************************************
;	created:	25:10:2009   16:53
;	filename: 	All_X86.asm
;	author:		tiamo
;	purpose:	all
;********************************************************************

%macro PUBLIC_SYMBOL 1
									global %1
									%1:
%endmacro

%ifdef __APPLE__
section .data
%else
section .rdata
%endif

									align				16
									incbin				"ThunkCode64.dat"

%ifdef __APPLE__ __ARCH32__
PUBLIC_SYMBOL _ArchThunk64BufferStart
PUBLIC_SYMBOL _ArchThunk64BufferEnd
%else
PUBLIC_SYMBOL ?ArchThunk64BufferStart@@3PAEA
PUBLIC_SYMBOL ?ArchThunk64BufferEnd@@3PAEA
%endif
