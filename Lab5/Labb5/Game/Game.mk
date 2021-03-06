##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=Game
ConfigurationName      :=Debug
WorkspacePath          :=C:/Users/latiif/Documents/Labb5
ProjectPath            :=C:/Users/latiif/Documents/Labb5/Game
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=latiif
Date                   :=11/12/2017
CodeLitePath           :=C:/cseapp/CodeLite
LinkerName             :=C:/cseapp/CodeLite/tools/gcc-arm/bin/arm-none-eabi-g++.exe
SharedObjectLinkerName :=C:/cseapp/CodeLite/tools/gcc-arm/bin/arm-none-eabi-g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName).elf
Preprocessors          :=$(PreprocessorSwitch)SIMULATOR 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="Game.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=windres
LinkOptions            :=  -T$(ProjectPath)/md407-ram.x -L$(ARM_V6LIB) -L$(ARM_GCC_V6LIB) -nostartfiles
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)gcc $(LibrarySwitch)c_nano 
ArLibs                 :=  "gcc" "c_nano" 
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/cseapp/CodeLite/tools/gcc-arm/bin/arm-none-eabi-ar.exe rcu
CXX      := C:/cseapp/CodeLite/tools/gcc-arm/bin/arm-none-eabi-g++.exe
CC       := C:/cseapp/CodeLite/tools/gcc-arm/bin/arm-none-eabi-gcc.exe
CXXFLAGS :=  -g -O0 -W $(Preprocessors)
CFLAGS   :=  -Wa,-adhln=test.s -g -O0 -w -mthumb -march=armv6-m  -mfloat-abi=soft -std=c99 -mthumb -march=armv6-m $(Preprocessors)
ASFLAGS  := 
AS       := C:/cseapp/CodeLite/tools/gcc-arm/bin/arm-none-eabi-as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\cseapp\CodeLite
ARM_V6LIB:=$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi/lib/thumb/v6-m
ARM_GCC_V6LIB:=$(CodeLiteDir)/tools/gcc-arm/lib/gcc/arm-none-eabi/6.3.1/thumb/v6-m
ARM_M4FPLIB:=$(CodeLiteDir)/tools/gcc-arm/arm-none-eabi/lib/thumb/v7e-m/fpv4-sp/hard
ARM_GCC_M4FPLIB:=$(CodeLiteDir)/tools/gcc-arm/lib/gcc/arm-none-eabi/6.3.1/thumb/v7e-m
Objects0=$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IntermediateDirectory)/ball.c$(ObjectSuffix) $(IntermediateDirectory)/display.c$(ObjectSuffix) $(IntermediateDirectory)/input.c$(ObjectSuffix) $(IntermediateDirectory)/line.c$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

PostBuild:
	@echo Executing Post Build commands ...
	arm-none-eabi-objcopy -S -O srec  ./Debug/Game.elf ./Debug/Game.s19
	arm-none-eabi-objdump -D -S ./Debug/Game.elf > ./Debug/Game.dass
	@echo Done

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/startup.c$(ObjectSuffix): startup.c $(IntermediateDirectory)/startup.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/latiif/Documents/Labb5/Game/startup.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/startup.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/startup.c$(DependSuffix): startup.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/startup.c$(ObjectSuffix) -MF$(IntermediateDirectory)/startup.c$(DependSuffix) -MM startup.c

$(IntermediateDirectory)/startup.c$(PreprocessSuffix): startup.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/startup.c$(PreprocessSuffix) startup.c

$(IntermediateDirectory)/ball.c$(ObjectSuffix): ball.c $(IntermediateDirectory)/ball.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/latiif/Documents/Labb5/Game/ball.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/ball.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/ball.c$(DependSuffix): ball.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/ball.c$(ObjectSuffix) -MF$(IntermediateDirectory)/ball.c$(DependSuffix) -MM ball.c

$(IntermediateDirectory)/ball.c$(PreprocessSuffix): ball.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/ball.c$(PreprocessSuffix) ball.c

$(IntermediateDirectory)/display.c$(ObjectSuffix): display.c $(IntermediateDirectory)/display.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/latiif/Documents/Labb5/Game/display.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/display.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/display.c$(DependSuffix): display.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/display.c$(ObjectSuffix) -MF$(IntermediateDirectory)/display.c$(DependSuffix) -MM display.c

$(IntermediateDirectory)/display.c$(PreprocessSuffix): display.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/display.c$(PreprocessSuffix) display.c

$(IntermediateDirectory)/input.c$(ObjectSuffix): input.c $(IntermediateDirectory)/input.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/latiif/Documents/Labb5/Game/input.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/input.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/input.c$(DependSuffix): input.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/input.c$(ObjectSuffix) -MF$(IntermediateDirectory)/input.c$(DependSuffix) -MM input.c

$(IntermediateDirectory)/input.c$(PreprocessSuffix): input.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/input.c$(PreprocessSuffix) input.c

$(IntermediateDirectory)/line.c$(ObjectSuffix): line.c $(IntermediateDirectory)/line.c$(DependSuffix)
	$(CC) $(SourceSwitch) "C:/Users/latiif/Documents/Labb5/Game/line.c" $(CFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/line.c$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/line.c$(DependSuffix): line.c
	@$(CC) $(CFLAGS) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/line.c$(ObjectSuffix) -MF$(IntermediateDirectory)/line.c$(DependSuffix) -MM line.c

$(IntermediateDirectory)/line.c$(PreprocessSuffix): line.c
	$(CC) $(CFLAGS) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/line.c$(PreprocessSuffix) line.c


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/


