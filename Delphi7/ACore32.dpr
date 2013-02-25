{**
@Abstract ACore32 library
@Author Prof1983 <prof1983@ya.ru>
@Created 20.08.2009
@LastMod 25.02.2013
}
library ACore32;

{$R *.res}

uses
  ACoreBoot in '..\ACoreBoot.pas',
  ACollectionsMod in '..\..\AModules\Impl\ACollectionsMod.pas',
  ADataMod in '..\..\AModules\Impl\ADataMod.pas',
  APluginsMod in '..\..\AModules\Impl\APluginsMod.pas',
  ARuntimeMod in '..\..\AModules\Impl\ARuntimeMod.pas',
  ASettingsMod in '..\..\AModules\Impl\ASettingsMod.pas',
  ASystemMod in '..\..\AModules\Impl\ASystemMod.pas',
  AUiMod in '..\..\AModules\Impl\AUiMod.pas',
  AUtilsMod in '..\..\AModules\Impl\AUtilsMod.pas';

exports
  ACore_Boot,
  ACore_Fin,
  ACore_Init,
  ACore_Run;

begin
end.
 