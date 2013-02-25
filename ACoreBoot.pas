{**
@Abstract ACore
@Author Prof1983 <prof1983@ya.ru>
@Created 30.10.2009
@LastMod 25.02.2013
}
unit ACoreBoot;

interface

{$I A.inc}

uses
  ABase,
  ACollectionsMod,
  ADataMod,
  APluginsExp, APluginsMod,
  ARuntime, ARuntimeMod, ARuntimeExp,
  ASettingsMod,
  AStringsExp,
  ASystemExp, ASystemMod,
  AUiMod,
  AUtilsMod;

// --- ACore ---

function ACore_Boot(): AError; stdcall;

function ACore_Fin(): AError; stdcall;

function ACore_Init(): AError; stdcall;

function ACore_Run(): AError; stdcall;

implementation

// --- ACore ---

function ACore_Boot(): AError;
begin
  ARuntimeMod_Boot();
  ACollectionsMod_Boot();
  ADataMod_Boot();
  APluginsMod_Boot();
  ASettingsMod_Boot();
  ASystemMod_Boot();
  AUiMod_Boot();
  AUtilsMod_Boot();
  Result := 0;
end;

function ACore_Fin(): AError;
begin
  ARuntimeMod_Fin();
  Result := 0;
end;

function ACore_Init(): AError;
begin
  ARuntimeMod_Init();
  ASystemMod_Init();
  AUiMod_Init();
  APluginsMod_Init();
  Result := 0;
end;

function ACore_Run(): AError;
begin
  ARuntime.Run();
  Result := 0;
end;

end.
 