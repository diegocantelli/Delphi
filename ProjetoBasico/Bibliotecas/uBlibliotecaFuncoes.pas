unit uBlibliotecaFuncoes;

interface

uses
  Forms, StdCtrls, ExtCtrls, DBCtrls;

procedure LimpaCampos(Frm:TForm);
procedure BloqueiaCampos(Frm:TForm);
procedure DesbloqueiaCampos(Frm:TForm);
procedure HabilitaBotoes(Frm:TForm; Valor:Boolean);

implementation

procedure HabilitaBotoes(Frm:TForm; Valor:Boolean);
var
  i:Integer;
begin
  for i := Frm.ComponentCount -1 downto 0 do
  begin
    if Frm.Components[i] is TButton then
      TButton(Frm.Components[i]).Enabled := Valor;
    if TButton(Frm.Components[i]).Name = 'btnNovo' then
      TButton(Frm.Components[i]).Enabled := True;
  end;
end;

procedure LimpaCampos(Frm:TForm);
var
  i:Integer;
begin
  for i := frm.ComponentCount -1 downto 0 do
  begin
    if frm.Components[i] is TLabeledEdit then
      TLabeledEdit(frm.Components[i]).Text := '';
  end;
end;

procedure BloqueiaCampos(Frm:TForm);
var
  i:Integer;
begin
  for i := frm.ComponentCount -1 downto 0 do
  begin
    if frm.Components[i] is TLabeledEdit then
      TLabeledEdit(frm.Components[i]).Enabled := False;

    if frm.Components[i] is TEdit then
      TEdit(frm.Components[i]).Enabled := False;

    if Frm.Components[i] is TDBComboBox then
      TDBComboBox(Frm.Components[i]).Enabled := False;
  end;
end;

procedure DesbloqueiaCampos(Frm:TForm);
var
  i:Integer;
begin
  for i := frm.ComponentCount -1 downto 0 do
  begin
    if frm.Components[i] is TLabeledEdit then
      TLabeledEdit(frm.Components[i]).Enabled := True;

    if TLabeledEdit(frm.Components[i]).Name = 'txtId' then
      TLabeledEdit(frm.Components[i]).Enabled := False;

    if frm.Components[i] is TEdit then
      TEdit(frm.Components[i]).Enabled := True;

    if TEdit(frm.Components[i]).Name = 'txtId' then
      TEdit(frm.Components[i]).Enabled := False;

    if Frm.Components[i] is TDBComboBox then
      TDBComboBox(Frm.Components[i]).Enabled := False;
  end;
end;

end.
