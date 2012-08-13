###################################################
#
# Makefile for libaacdec.so
#
###################################################

C_SRCS= \
	bits.c \
	block.c \
	config.c \
	decdata.c \
	decoder.c \
	dolby_adapt.c \
	fastfft.c \
	huffdec.c \
	huffinit.c \
	hufftables.c \
	intensity.c \
	monopred.c \
	nok_lt_prediction.c \
	pns.c \
	stereo.c \
	tns.c \
	transfo.c \
	util.c 

C_OPTIONS= -O2 -Wall -fexceptions -fno-strict-aliasing -shared -fPIC

CPP_SRCS= 

CPP_OPTIONS=

INCLUDE= . 

DYNLIB=libaacdec.so

all: mpeg4ip_config.h libaacdec.so

include ../../jumper/source/common.mak

#
# setup the correct config.h file
#

mpeg4ip_config.h: mpeg4ip_config_Linux32.h
	cp  mpeg4ip_config_Linux32.h  mpeg4ip_config.h


