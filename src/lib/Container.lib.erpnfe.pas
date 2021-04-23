unit Container.lib.erpnfe;

interface

uses
  System.SysUtils, System.Classes, System.ImageList, Vcl.ImgList, Vcl.Controls;

type
  TDM_Container = class(TDataModule)
    ImgLst: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  _EMPGRP = '01';

var
  DM_Container: TDM_Container;



implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
