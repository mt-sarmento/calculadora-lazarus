unit UnitPrincipal;
// 1.0.0
{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    ButtonDelTudo: TButton;
    ButtonVoltar: TButton;
    ButtonDel: TButton;
    ButtonMultiplicar: TButton;
    ButtonMenos: TButton;
    ButtonMais: TButton;
    ButtonIgual: TButton;
    ButtonDivide: TButton;
    Button0: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    EditVisor: TEdit;
    procedure Button0Click(Sender: TObject);
    procedure ButtonDelTudoClick(Sender: TObject);
    procedure ButtonVoltarClick(Sender: TObject);
    procedure ButtonDelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ButtonDivideClick(Sender: TObject);
    procedure ButtonIgualClick(Sender: TObject);
    procedure ButtonMaisClick(Sender: TObject);
    procedure ButtonMenosClick(Sender: TObject);
    procedure ButtonMultiplicarClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Numero: Integer;
  Operacao: String;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button0Click(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + '0';
end;

procedure TForm1.ButtonDelTudoClick(Sender: TObject);
begin
    Numero := 0;
    Operacao := '';
    EditVisor.Text := '';
    ButtonMais.Enabled := True;
    ButtonMenos.Enabled := True;
    ButtonMultiplicar.Enabled := True;
    ButtonDivide.Enabled := True;
end;

procedure TForm1.ButtonVoltarClick(Sender: TObject);
begin
    Operacao := '';
    EditVisor.Text := IntToStr(Numero);
    Numero := 0;
    ButtonMais.Enabled := True;
    ButtonMenos.Enabled := True;
    ButtonMultiplicar.Enabled := True;
    ButtonDivide.Enabled := True;
end;

procedure TForm1.ButtonDelClick(Sender: TObject);
begin
    EditVisor.Text := '';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + '1';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + '2';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + '3';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + '4';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + '5';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + '6';
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + '7';
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + '8';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  EditVisor.Text := EditVisor.Text + '9';
end;

procedure TForm1.ButtonMaisClick(Sender: TObject);
begin
    Numero := StrToInt(EditVisor.Text);
    Operacao := '+';
    ButtonMais.Enabled := False;
    ButtonMenos.Enabled := False;
    ButtonMultiplicar.Enabled := False;
    ButtonDivide.Enabled := False;
    EditVisor.Text := '';
end;

procedure TForm1.ButtonMenosClick(Sender: TObject);
begin
    Numero := StrToInt(EditVisor.Text);
    Operacao := '-';
    ButtonMais.Enabled := False;
    ButtonMenos.Enabled := False;
    ButtonMultiplicar.Enabled := False;
    ButtonDivide.Enabled := False;
    EditVisor.Text := '';
end;

procedure TForm1.ButtonMultiplicarClick(Sender: TObject);
begin
    Numero := StrToInt(EditVisor.Text);
    Operacao := '*';
    ButtonMais.Enabled := False;
    ButtonMenos.Enabled := False;
    ButtonMultiplicar.Enabled := False;
    ButtonDivide.Enabled := False;
    EditVisor.Text := '';
end;

procedure TForm1.ButtonDivideClick(Sender: TObject);
begin
    Numero := StrToInt(EditVisor.Text);
    Operacao := '/';
    ButtonMais.Enabled := False;
    ButtonMenos.Enabled := False;
    ButtonMultiplicar.Enabled := False;
    ButtonDivide.Enabled := False;
    EditVisor.Text := '';
end;

procedure TForm1.ButtonIgualClick(Sender: TObject);
begin

    ButtonMais.Enabled := True;
    ButtonMenos.Enabled := True;
    ButtonMultiplicar.Enabled := True;
    ButtonDivide.Enabled := True;

    Case Operacao of
      '+': Begin
           Numero := StrToInt(EditVisor.Text) + Numero;
           EditVisor.Text := IntToStr(Numero);
         end;
      '-': Begin
           Numero := StrToInt(EditVisor.Text) - Numero;
           EditVisor.Text := IntToStr(Numero);
         end;
      '*': Begin
           Numero := StrToInt(EditVisor.Text) * Numero;
           EditVisor.Text := IntToStr(Numero);
         end;
      '/': Begin
           Numero := Numero Div StrToInt(EditVisor.Text);
           EditVisor.Text := IntToStr(Numero);
         end;
     end;
end;

end.

