-- For a full list, see here: pastebin.com/yLNWicUi
-- @module native
-- @submodule script
-- @see REQUEST_SCRIPT
-- @usage void REQUEST_SCRIPT(char* scriptName);
-- @param scriptName char*
-- @return void
function RequestScript() end

-- For a full list, see here: pastebin.com/yLNWicUi
-- @module native
-- @submodule script
-- @see SET_SCRIPT_AS_NO_LONGER_NEEDED
-- @usage void SET_SCRIPT_AS_NO_LONGER_NEEDED(char* scriptName);
-- @param scriptName char*
-- @return void
function SetScriptAsNoLongerNeeded() end

-- Returns if a script has been loaded into the game. Used to see if a script was loaded after requesting.  For a full list, see here: pastebin.com/yLNWicUi
-- @module native
-- @submodule script
-- @see HAS_SCRIPT_LOADED
-- @usage BOOL HAS_SCRIPT_LOADED(char* scriptName);
-- @param scriptName char*
-- @return BOOL
function HasScriptLoaded() end

-- For a full list, see here: pastebin.com/yLNWicUi
-- @module native
-- @submodule script
-- @see DOES_SCRIPT_EXIST
-- @usage BOOL DOES_SCRIPT_EXIST(char* scriptName);
-- @param scriptName char*
-- @return BOOL
function DoesScriptExist() end

-- formerly _REQUEST_STREAMED_SCRIPT
-- @module native
-- @submodule script
-- @see REQUEST_SCRIPT_WITH_NAME_HASH
-- @usage void REQUEST_SCRIPT_WITH_NAME_HASH(Hash scriptHash);
-- @param scriptHash Hash
-- @return void
function RequestScriptWithNameHash() end

-- @todo
-- @module native
-- @submodule script
-- @see SET_SCRIPT_WITH_NAME_HASH_AS_NO_LONGER_NEEDED
-- @usage void SET_SCRIPT_WITH_NAME_HASH_AS_NO_LONGER_NEEDED(Hash scriptHash);
-- @param scriptHash Hash
-- @return void
function SetScriptWithNameHashAsNoLongerNeeded() end

-- @todo
-- @module native
-- @submodule script
-- @see HAS_SCRIPT_WITH_NAME_HASH_LOADED
-- @usage BOOL HAS_SCRIPT_WITH_NAME_HASH_LOADED(Hash scriptHash);
-- @param scriptHash Hash
-- @return BOOL
function HasScriptWithNameHashLoaded() end

-- @todo
-- @module native
-- @submodule script
-- @see TERMINATE_THREAD
-- @usage void TERMINATE_THREAD(int threadId);
-- @param threadId int
-- @return void
function TerminateThread() end

-- @todo
-- @module native
-- @submodule script
-- @see IS_THREAD_ACTIVE
-- @usage BOOL IS_THREAD_ACTIVE(int threadId);
-- @param threadId int
-- @return BOOL
function IsThreadActive() end

-- @todo
-- @module native
-- @submodule script
-- @see GET_ID_OF_THIS_THREAD
-- @usage int GET_ID_OF_THIS_THREAD();
-- @param undefined
-- @return int
function GetIdOfThisThread() end

-- @todo
-- @module native
-- @submodule script
-- @see TERMINATE_THIS_THREAD
-- @usage void TERMINATE_THIS_THREAD();
-- @param undefined
-- @return void
function TerminateThisThread() end

-- @todo
-- @module native
-- @submodule script
-- @see GET_THIS_SCRIPT_NAME
-- @usage char* GET_THIS_SCRIPT_NAME();
-- @param undefined
-- @return char*
function GetThisScriptName() end

-- @todo
-- @module native
-- @submodule script
-- @see GET_HASH_OF_THIS_SCRIPT_NAME
-- @usage Hash GET_HASH_OF_THIS_SCRIPT_NAME();
-- @param undefined
-- @return Hash
function GetHashOfThisScriptName() end

-- @todo
-- @module native
-- @submodule script
-- @see GET_NUMBER_OF_EVENTS
-- @usage int GET_NUMBER_OF_EVENTS(BOOL p0);
-- @param p0 BOOL
-- @return int
function GetNumberOfEvents() end

-- @todo
-- @module native
-- @submodule script
-- @see GET_EVENT_EXISTS
-- @usage BOOL GET_EVENT_EXISTS(BOOL p0, int p1);
-- @param p0 BOOL
-- @param int
-- @return BOOL
function GetEventExists() end

-- @todo
-- @module native
-- @submodule script
-- @see GET_EVENT_AT_INDEX
-- @usage int GET_EVENT_AT_INDEX(BOOL p0, int eventNum);
-- @param p0 BOOL
-- @param int
-- @return int
function GetEventAtIndex() end

-- @todo
-- @module native
-- @submodule script
-- @see GET_EVENT_DATA
-- @usage BOOL GET_EVENT_DATA(BOOL p0, int eventNum, int* argStruct, int argStructSize);
-- @param p0 BOOL
-- @param int
-- @param int*
-- @return BOOL
function GetEventData() end

-- from scripts:  int bitFlag = 0; int vVar0[3];  vVar0[0] = 2; //p0  vVar0[1] = PLAYER_ID(); //p1 0 player vVar0[2] = 53; //p2  SET_BIT(&bitFlag, selectedPlayer); TRIGGER_SCRIPT_EVENT(1, vVar0, 3, bitFlag);
-- @module native
-- @submodule script
-- @see TRIGGER_SCRIPT_EVENT
-- @usage void TRIGGER_SCRIPT_EVENT(BOOL p0, int* args, int argCount, int bitset);
-- @param p0 BOOL
-- @param int*
-- @param int
-- @return void
function TriggerScriptEvent() end

-- @todo
-- @module native
-- @submodule script
-- @see SHUTDOWN_LOADING_SCREEN
-- @usage void SHUTDOWN_LOADING_SCREEN();
-- @param undefined
-- @return void
function ShutdownLoadingScreen() end

-- @todo
-- @module native
-- @submodule script
-- @see SET_NO_LOADING_SCREEN
-- @usage void SET_NO_LOADING_SCREEN(BOOL toggle);
-- @param toggle BOOL
-- @return void
function SetNoLoadingScreen() end