#include "PowerPC_EABI_Support/MetroTRK/dispatch.h"

DSError TRKDispatchMessage(MessageBuffer* buffer) {
    DSError result = TRKError500;
    MessageBuffer* temp = buffer;
    
    TRKSetBufferPosition(buffer, 0);
    
    u8 command = temp->mCommandId;
    
    switch(command){
        case kDSConnect:
            result = TRK_DoConnect(temp);
        	break;
        case kDSDisconnect:
            result = TRKDoDisconnect(temp);
        	break;
        case kDSReset:
            result = TRKDoReset(temp);
        	break;
        case kDSOverride:
            result = TRKDoOverride(temp);
        	break;
        case kDSReadMemory:
            result = TRKDoReadMemory(temp);
        	break;
        case kDSWriteMemory:
            result = TRKDoWriteMemory(temp);
        	break;
        case kDSReadRegisters:
            result = TRKDoReadRegisters(temp);
        	break;
        case kDSWriteRegisters:
            result = TRKDoWriteRegisters(temp);
        	break;
        case kDSContinue:
            result = TRKDoContinue(temp);
        	break;
        case kDSStep:
            result = TRKDoStep(temp);
        	break;
        case kDSStop:
            result = TRKDoStop(temp);
        	break;
        case kDSSetOption:
            result = TRKDoSetOption(temp);
        	break;
    }
    return result;
}
