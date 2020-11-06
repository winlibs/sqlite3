!IFNDEF VERSION
VERSION=unknown
!ENDIF

OUTPUT=$(MAKEDIR)\..\sqlite3-$(VERSION)-$(PHP_SDK_VS)-$(PHP_SDK_ARCH)
ARCHIVE=$(OUTPUT).zip

all:
	git checkout .
	git clean -fdx

	-rmdir /s /q $(OUTPUT)
	nmake /d PREFIX=$(OUTPUT) install
	nmake clean
	set DEBUG=1
	nmake /d PREFIX=$(OUTPUT) /d DEBUG=1 install

	del $(ARCHIVE)
	7za a $(ARCHIVE) $(OUTPUT)\*
