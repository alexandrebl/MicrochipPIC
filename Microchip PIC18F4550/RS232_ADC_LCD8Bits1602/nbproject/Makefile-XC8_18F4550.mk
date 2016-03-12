#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-XC8_18F4550.mk)" "nbproject/Makefile-local-XC8_18F4550.mk"
include nbproject/Makefile-local-XC8_18F4550.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=XC8_18F4550
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RS232_ADC_LCD8Bits1602.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/RS232_ADC_LCD8Bits1602.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=plib/adcbusy.c plib/adcclose.c plib/adcconv.c plib/adcopen.c plib/adcread.c plib/adcselchconv.c plib/adcsetch.c plib/ubaud.c plib/ubusy.c plib/uclose.c plib/udefs.c plib/udrdy.c plib/ugets.c plib/uopen.c plib/uputrs.c plib/uputs.c plib/uread.c plib/uwrite.c configuration_bits.c interrupts.c main.c system.c user.c lcd.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/plib/adcbusy.p1 ${OBJECTDIR}/plib/adcclose.p1 ${OBJECTDIR}/plib/adcconv.p1 ${OBJECTDIR}/plib/adcopen.p1 ${OBJECTDIR}/plib/adcread.p1 ${OBJECTDIR}/plib/adcselchconv.p1 ${OBJECTDIR}/plib/adcsetch.p1 ${OBJECTDIR}/plib/ubaud.p1 ${OBJECTDIR}/plib/ubusy.p1 ${OBJECTDIR}/plib/uclose.p1 ${OBJECTDIR}/plib/udefs.p1 ${OBJECTDIR}/plib/udrdy.p1 ${OBJECTDIR}/plib/ugets.p1 ${OBJECTDIR}/plib/uopen.p1 ${OBJECTDIR}/plib/uputrs.p1 ${OBJECTDIR}/plib/uputs.p1 ${OBJECTDIR}/plib/uread.p1 ${OBJECTDIR}/plib/uwrite.p1 ${OBJECTDIR}/configuration_bits.p1 ${OBJECTDIR}/interrupts.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/system.p1 ${OBJECTDIR}/user.p1 ${OBJECTDIR}/lcd.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/plib/adcbusy.p1.d ${OBJECTDIR}/plib/adcclose.p1.d ${OBJECTDIR}/plib/adcconv.p1.d ${OBJECTDIR}/plib/adcopen.p1.d ${OBJECTDIR}/plib/adcread.p1.d ${OBJECTDIR}/plib/adcselchconv.p1.d ${OBJECTDIR}/plib/adcsetch.p1.d ${OBJECTDIR}/plib/ubaud.p1.d ${OBJECTDIR}/plib/ubusy.p1.d ${OBJECTDIR}/plib/uclose.p1.d ${OBJECTDIR}/plib/udefs.p1.d ${OBJECTDIR}/plib/udrdy.p1.d ${OBJECTDIR}/plib/ugets.p1.d ${OBJECTDIR}/plib/uopen.p1.d ${OBJECTDIR}/plib/uputrs.p1.d ${OBJECTDIR}/plib/uputs.p1.d ${OBJECTDIR}/plib/uread.p1.d ${OBJECTDIR}/plib/uwrite.p1.d ${OBJECTDIR}/configuration_bits.p1.d ${OBJECTDIR}/interrupts.p1.d ${OBJECTDIR}/main.p1.d ${OBJECTDIR}/system.p1.d ${OBJECTDIR}/user.p1.d ${OBJECTDIR}/lcd.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/plib/adcbusy.p1 ${OBJECTDIR}/plib/adcclose.p1 ${OBJECTDIR}/plib/adcconv.p1 ${OBJECTDIR}/plib/adcopen.p1 ${OBJECTDIR}/plib/adcread.p1 ${OBJECTDIR}/plib/adcselchconv.p1 ${OBJECTDIR}/plib/adcsetch.p1 ${OBJECTDIR}/plib/ubaud.p1 ${OBJECTDIR}/plib/ubusy.p1 ${OBJECTDIR}/plib/uclose.p1 ${OBJECTDIR}/plib/udefs.p1 ${OBJECTDIR}/plib/udrdy.p1 ${OBJECTDIR}/plib/ugets.p1 ${OBJECTDIR}/plib/uopen.p1 ${OBJECTDIR}/plib/uputrs.p1 ${OBJECTDIR}/plib/uputs.p1 ${OBJECTDIR}/plib/uread.p1 ${OBJECTDIR}/plib/uwrite.p1 ${OBJECTDIR}/configuration_bits.p1 ${OBJECTDIR}/interrupts.p1 ${OBJECTDIR}/main.p1 ${OBJECTDIR}/system.p1 ${OBJECTDIR}/user.p1 ${OBJECTDIR}/lcd.p1

# Source Files
SOURCEFILES=plib/adcbusy.c plib/adcclose.c plib/adcconv.c plib/adcopen.c plib/adcread.c plib/adcselchconv.c plib/adcsetch.c plib/ubaud.c plib/ubusy.c plib/uclose.c plib/udefs.c plib/udrdy.c plib/ugets.c plib/uopen.c plib/uputrs.c plib/uputs.c plib/uread.c plib/uwrite.c configuration_bits.c interrupts.c main.c system.c user.c lcd.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE} ${MAKE_OPTIONS} -f nbproject/Makefile-XC8_18F4550.mk dist/${CND_CONF}/${IMAGE_TYPE}/RS232_ADC_LCD8Bits1602.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4550
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/plib/adcbusy.p1: plib/adcbusy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcbusy.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcbusy.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcbusy.p1  plib/adcbusy.c 
	@-${MV} ${OBJECTDIR}/plib/adcbusy.d ${OBJECTDIR}/plib/adcbusy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcbusy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/adcclose.p1: plib/adcclose.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcclose.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcclose.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcclose.p1  plib/adcclose.c 
	@-${MV} ${OBJECTDIR}/plib/adcclose.d ${OBJECTDIR}/plib/adcclose.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcclose.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/adcconv.p1: plib/adcconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcconv.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcconv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcconv.p1  plib/adcconv.c 
	@-${MV} ${OBJECTDIR}/plib/adcconv.d ${OBJECTDIR}/plib/adcconv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcconv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/adcopen.p1: plib/adcopen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcopen.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcopen.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcopen.p1  plib/adcopen.c 
	@-${MV} ${OBJECTDIR}/plib/adcopen.d ${OBJECTDIR}/plib/adcopen.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcopen.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/adcread.p1: plib/adcread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcread.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcread.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcread.p1  plib/adcread.c 
	@-${MV} ${OBJECTDIR}/plib/adcread.d ${OBJECTDIR}/plib/adcread.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcread.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/adcselchconv.p1: plib/adcselchconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcselchconv.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcselchconv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcselchconv.p1  plib/adcselchconv.c 
	@-${MV} ${OBJECTDIR}/plib/adcselchconv.d ${OBJECTDIR}/plib/adcselchconv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcselchconv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/adcsetch.p1: plib/adcsetch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcsetch.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcsetch.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcsetch.p1  plib/adcsetch.c 
	@-${MV} ${OBJECTDIR}/plib/adcsetch.d ${OBJECTDIR}/plib/adcsetch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcsetch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/ubaud.p1: plib/ubaud.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/ubaud.p1.d 
	@${RM} ${OBJECTDIR}/plib/ubaud.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/ubaud.p1  plib/ubaud.c 
	@-${MV} ${OBJECTDIR}/plib/ubaud.d ${OBJECTDIR}/plib/ubaud.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/ubaud.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/ubusy.p1: plib/ubusy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/ubusy.p1.d 
	@${RM} ${OBJECTDIR}/plib/ubusy.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/ubusy.p1  plib/ubusy.c 
	@-${MV} ${OBJECTDIR}/plib/ubusy.d ${OBJECTDIR}/plib/ubusy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/ubusy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/uclose.p1: plib/uclose.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/uclose.p1.d 
	@${RM} ${OBJECTDIR}/plib/uclose.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/uclose.p1  plib/uclose.c 
	@-${MV} ${OBJECTDIR}/plib/uclose.d ${OBJECTDIR}/plib/uclose.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/uclose.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/udefs.p1: plib/udefs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/udefs.p1.d 
	@${RM} ${OBJECTDIR}/plib/udefs.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/udefs.p1  plib/udefs.c 
	@-${MV} ${OBJECTDIR}/plib/udefs.d ${OBJECTDIR}/plib/udefs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/udefs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/udrdy.p1: plib/udrdy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/udrdy.p1.d 
	@${RM} ${OBJECTDIR}/plib/udrdy.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/udrdy.p1  plib/udrdy.c 
	@-${MV} ${OBJECTDIR}/plib/udrdy.d ${OBJECTDIR}/plib/udrdy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/udrdy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/ugets.p1: plib/ugets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/ugets.p1.d 
	@${RM} ${OBJECTDIR}/plib/ugets.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/ugets.p1  plib/ugets.c 
	@-${MV} ${OBJECTDIR}/plib/ugets.d ${OBJECTDIR}/plib/ugets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/ugets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/uopen.p1: plib/uopen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/uopen.p1.d 
	@${RM} ${OBJECTDIR}/plib/uopen.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/uopen.p1  plib/uopen.c 
	@-${MV} ${OBJECTDIR}/plib/uopen.d ${OBJECTDIR}/plib/uopen.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/uopen.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/uputrs.p1: plib/uputrs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/uputrs.p1.d 
	@${RM} ${OBJECTDIR}/plib/uputrs.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/uputrs.p1  plib/uputrs.c 
	@-${MV} ${OBJECTDIR}/plib/uputrs.d ${OBJECTDIR}/plib/uputrs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/uputrs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/uputs.p1: plib/uputs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/uputs.p1.d 
	@${RM} ${OBJECTDIR}/plib/uputs.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/uputs.p1  plib/uputs.c 
	@-${MV} ${OBJECTDIR}/plib/uputs.d ${OBJECTDIR}/plib/uputs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/uputs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/uread.p1: plib/uread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/uread.p1.d 
	@${RM} ${OBJECTDIR}/plib/uread.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/uread.p1  plib/uread.c 
	@-${MV} ${OBJECTDIR}/plib/uread.d ${OBJECTDIR}/plib/uread.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/uread.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/uwrite.p1: plib/uwrite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/uwrite.p1.d 
	@${RM} ${OBJECTDIR}/plib/uwrite.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/uwrite.p1  plib/uwrite.c 
	@-${MV} ${OBJECTDIR}/plib/uwrite.d ${OBJECTDIR}/plib/uwrite.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/uwrite.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/configuration_bits.p1: configuration_bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/configuration_bits.p1.d 
	@${RM} ${OBJECTDIR}/configuration_bits.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/configuration_bits.p1  configuration_bits.c 
	@-${MV} ${OBJECTDIR}/configuration_bits.d ${OBJECTDIR}/configuration_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/configuration_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interrupts.p1: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/interrupts.p1.d 
	@${RM} ${OBJECTDIR}/interrupts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/interrupts.p1  interrupts.c 
	@-${MV} ${OBJECTDIR}/interrupts.d ${OBJECTDIR}/interrupts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interrupts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/system.p1: system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/system.p1.d 
	@${RM} ${OBJECTDIR}/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/system.p1  system.c 
	@-${MV} ${OBJECTDIR}/system.d ${OBJECTDIR}/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/user.p1: user.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/user.p1.d 
	@${RM} ${OBJECTDIR}/user.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/user.p1  user.c 
	@-${MV} ${OBJECTDIR}/user.d ${OBJECTDIR}/user.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/user.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lcd.p1: lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/lcd.p1.d 
	@${RM} ${OBJECTDIR}/lcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/lcd.p1  lcd.c 
	@-${MV} ${OBJECTDIR}/lcd.d ${OBJECTDIR}/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/plib/adcbusy.p1: plib/adcbusy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcbusy.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcbusy.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcbusy.p1  plib/adcbusy.c 
	@-${MV} ${OBJECTDIR}/plib/adcbusy.d ${OBJECTDIR}/plib/adcbusy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcbusy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/adcclose.p1: plib/adcclose.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcclose.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcclose.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcclose.p1  plib/adcclose.c 
	@-${MV} ${OBJECTDIR}/plib/adcclose.d ${OBJECTDIR}/plib/adcclose.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcclose.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/adcconv.p1: plib/adcconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcconv.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcconv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcconv.p1  plib/adcconv.c 
	@-${MV} ${OBJECTDIR}/plib/adcconv.d ${OBJECTDIR}/plib/adcconv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcconv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/adcopen.p1: plib/adcopen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcopen.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcopen.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcopen.p1  plib/adcopen.c 
	@-${MV} ${OBJECTDIR}/plib/adcopen.d ${OBJECTDIR}/plib/adcopen.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcopen.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/adcread.p1: plib/adcread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcread.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcread.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcread.p1  plib/adcread.c 
	@-${MV} ${OBJECTDIR}/plib/adcread.d ${OBJECTDIR}/plib/adcread.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcread.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/adcselchconv.p1: plib/adcselchconv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcselchconv.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcselchconv.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcselchconv.p1  plib/adcselchconv.c 
	@-${MV} ${OBJECTDIR}/plib/adcselchconv.d ${OBJECTDIR}/plib/adcselchconv.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcselchconv.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/adcsetch.p1: plib/adcsetch.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/adcsetch.p1.d 
	@${RM} ${OBJECTDIR}/plib/adcsetch.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/adcsetch.p1  plib/adcsetch.c 
	@-${MV} ${OBJECTDIR}/plib/adcsetch.d ${OBJECTDIR}/plib/adcsetch.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/adcsetch.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/ubaud.p1: plib/ubaud.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/ubaud.p1.d 
	@${RM} ${OBJECTDIR}/plib/ubaud.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/ubaud.p1  plib/ubaud.c 
	@-${MV} ${OBJECTDIR}/plib/ubaud.d ${OBJECTDIR}/plib/ubaud.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/ubaud.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/ubusy.p1: plib/ubusy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/ubusy.p1.d 
	@${RM} ${OBJECTDIR}/plib/ubusy.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/ubusy.p1  plib/ubusy.c 
	@-${MV} ${OBJECTDIR}/plib/ubusy.d ${OBJECTDIR}/plib/ubusy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/ubusy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/uclose.p1: plib/uclose.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/uclose.p1.d 
	@${RM} ${OBJECTDIR}/plib/uclose.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/uclose.p1  plib/uclose.c 
	@-${MV} ${OBJECTDIR}/plib/uclose.d ${OBJECTDIR}/plib/uclose.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/uclose.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/udefs.p1: plib/udefs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/udefs.p1.d 
	@${RM} ${OBJECTDIR}/plib/udefs.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/udefs.p1  plib/udefs.c 
	@-${MV} ${OBJECTDIR}/plib/udefs.d ${OBJECTDIR}/plib/udefs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/udefs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/udrdy.p1: plib/udrdy.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/udrdy.p1.d 
	@${RM} ${OBJECTDIR}/plib/udrdy.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/udrdy.p1  plib/udrdy.c 
	@-${MV} ${OBJECTDIR}/plib/udrdy.d ${OBJECTDIR}/plib/udrdy.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/udrdy.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/ugets.p1: plib/ugets.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/ugets.p1.d 
	@${RM} ${OBJECTDIR}/plib/ugets.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/ugets.p1  plib/ugets.c 
	@-${MV} ${OBJECTDIR}/plib/ugets.d ${OBJECTDIR}/plib/ugets.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/ugets.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/uopen.p1: plib/uopen.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/uopen.p1.d 
	@${RM} ${OBJECTDIR}/plib/uopen.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/uopen.p1  plib/uopen.c 
	@-${MV} ${OBJECTDIR}/plib/uopen.d ${OBJECTDIR}/plib/uopen.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/uopen.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/uputrs.p1: plib/uputrs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/uputrs.p1.d 
	@${RM} ${OBJECTDIR}/plib/uputrs.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/uputrs.p1  plib/uputrs.c 
	@-${MV} ${OBJECTDIR}/plib/uputrs.d ${OBJECTDIR}/plib/uputrs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/uputrs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/uputs.p1: plib/uputs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/uputs.p1.d 
	@${RM} ${OBJECTDIR}/plib/uputs.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/uputs.p1  plib/uputs.c 
	@-${MV} ${OBJECTDIR}/plib/uputs.d ${OBJECTDIR}/plib/uputs.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/uputs.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/uread.p1: plib/uread.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/uread.p1.d 
	@${RM} ${OBJECTDIR}/plib/uread.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/uread.p1  plib/uread.c 
	@-${MV} ${OBJECTDIR}/plib/uread.d ${OBJECTDIR}/plib/uread.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/uread.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/plib/uwrite.p1: plib/uwrite.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/plib 
	@${RM} ${OBJECTDIR}/plib/uwrite.p1.d 
	@${RM} ${OBJECTDIR}/plib/uwrite.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/plib/uwrite.p1  plib/uwrite.c 
	@-${MV} ${OBJECTDIR}/plib/uwrite.d ${OBJECTDIR}/plib/uwrite.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/plib/uwrite.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/configuration_bits.p1: configuration_bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/configuration_bits.p1.d 
	@${RM} ${OBJECTDIR}/configuration_bits.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/configuration_bits.p1  configuration_bits.c 
	@-${MV} ${OBJECTDIR}/configuration_bits.d ${OBJECTDIR}/configuration_bits.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/configuration_bits.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/interrupts.p1: interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/interrupts.p1.d 
	@${RM} ${OBJECTDIR}/interrupts.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/interrupts.p1  interrupts.c 
	@-${MV} ${OBJECTDIR}/interrupts.d ${OBJECTDIR}/interrupts.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/interrupts.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/main.p1: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/main.p1.d 
	@${RM} ${OBJECTDIR}/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/main.p1  main.c 
	@-${MV} ${OBJECTDIR}/main.d ${OBJECTDIR}/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/system.p1: system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/system.p1.d 
	@${RM} ${OBJECTDIR}/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/system.p1  system.c 
	@-${MV} ${OBJECTDIR}/system.d ${OBJECTDIR}/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/user.p1: user.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/user.p1.d 
	@${RM} ${OBJECTDIR}/user.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/user.p1  user.c 
	@-${MV} ${OBJECTDIR}/user.d ${OBJECTDIR}/user.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/user.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/lcd.p1: lcd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	@${RM} ${OBJECTDIR}/lcd.p1.d 
	@${RM} ${OBJECTDIR}/lcd.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: (%%n) %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"    -o${OBJECTDIR}/lcd.p1  lcd.c 
	@-${MV} ${OBJECTDIR}/lcd.d ${OBJECTDIR}/lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/RS232_ADC_LCD8Bits1602.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/RS232_ADC_LCD8Bits1602.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"     --rom=default,-7dc0-7fff --ram=default,-3f4-3ff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  -odist/${CND_CONF}/${IMAGE_TYPE}/RS232_ADC_LCD8Bits1602.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/RS232_ADC_LCD8Bits1602.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/RS232_ADC_LCD8Bits1602.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/RS232_ADC_LCD8Bits1602.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,+asmfile,-speed,+space,-debug --addrqual=ignore --mode=free -P -N255 -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include" -I"C:/Program Files (x86)/Microchip/xc8/v1.30/include/plib" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%%f:%%l: error: %%s" "--warnformat=%%f:%%l: warning: (%%n) %%s" "--msgformat=%%f:%%l: advisory: (%%n) %%s"     -odist/${CND_CONF}/${IMAGE_TYPE}/RS232_ADC_LCD8Bits1602.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/XC8_18F4550
	${RM} -r dist/XC8_18F4550

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
