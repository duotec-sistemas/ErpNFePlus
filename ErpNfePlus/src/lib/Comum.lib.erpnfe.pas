unit Comum.lib.erpnfe;

interface

uses
  Classes, SysUtils,
  ConfiguracaoConexaoBanco.Interfaces,
  DataSet.Serialize;

Var
  ConfiguracaoConexaoBanco: IConfiguracaoConexaoBanco;
  NomeUsuario : String;
  SenhaUsuario : String;

implementation


initialization
  TDataSetSerializeConfig.GetInstance.CaseNameDefinition := TCaseNameDefinition(1);
  TDataSetSerializeConfig.GetInstance.Export.FormatCurrency := '0.00##';
  TDataSetSerializeConfig.GetInstance.Export.FormatDate := 'YYYY-MM-DD';
  TDataSetSerializeConfig.GetInstance.Export.FormatTime := 'hh:nn:ss.zzz';
  TDataSetSerializeConfig.GetInstance.Export.FormatDateTime := 'yyyy-mm-dd hh:nn:ss.zzz';
  TDataSetSerializeConfig.GetInstance.DateInputIsUTC := true;
  TDataSetSerializeConfig.GetInstance.Export.ExportNullValues := true;
  TDataSetSerializeConfig.GetInstance.Export.ExportOnlyFieldsVisible := true;
  TDataSetSerializeConfig.GetInstance.Export.ExportEmptyDataSet := true;
  TDataSetSerializeConfig.GetInstance.Import.ImportOnlyFieldsVisible := false;
  TDataSetSerializeConfig.GetInstance.Export.ExportChildDataSetAsJsonObject := true;

end.
