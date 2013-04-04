{**
@Abstract ACore
@Author Prof1983 <prof1983@ya.ru>
@Created 30.10.2009
@LastMod 04.04.2013
}
unit ACoreBoot;

interface

{$I A.inc}

uses
  ABase,
  ADataMod,
  APluginsExp,
  APluginsMod,
  ARuntimeExp,
  ARuntimeMain,
  ASettingsMod,
  AStringsExp,
  ASystemExp,
  ASystemMod,
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
  Result := ARuntime_Fin();
end;

function ACore_Init(): AError;
begin
  ARuntime_Init();
  ASystemMod_Init();
  AUiMod_Init();
  APluginsMod_Init();
  Result := 0;
end;

function ACore_Run(): AError;
begin
  Result := ARuntime_Run();
end;

end.
 