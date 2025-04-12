unit UnitMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask, Math, Clipbrd,
  System.UITypes;

type
  TForm1 = class(TForm)
    btnAdd: TButton;
    btnSubtract: TButton;
    btnMultiply: TButton;
    btnDivide: TButton;
    lblResult: TLabel;
    edtValue1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtValue2: TEdit;
    MemoHistory: TMemo;
    Label3: TLabel;
    btnClear: TButton;
    btnPower: TButton;
    btnSqrtValue1: TButton;
    btnPercent: TButton;
    btnSqrtValue2: TButton;
    btnCopyResult: TButton;
    procedure btnAddClick(Sender: TObject);
    procedure btnSubtractClick(Sender: TObject);
    procedure btnMultiplyClick(Sender: TObject);
    procedure btnDivideClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnPowerClick(Sender: TObject);
    procedure btnSqrtValue1Click(Sender: TObject);
    procedure btnSqrtValue2Click(Sender: TObject);
    procedure btnPercentClick(Sender: TObject);
    procedure btnCopyResultClick(Sender: TObject);
  private
    procedure ShowResult(const expression: string; const value: Double);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ShowResult(const expression: string; const value: Double);
begin
  lblResult.Caption := 'Resultado: ' + FloatToStr(value);
  MemoHistory.Lines.Add(expression + ' = ' + FloatToStr(value));
end;


function IsEmpty(value: String): Boolean;
begin
  result := false;
  if value = '' then
    result := true;
end;

procedure TForm1.btnAddClick(Sender: TObject);
var
  value1, value2, result: Double;
begin
  if IsEmpty(edtValue1.Text) or IsEmpty(edtValue2.Text) then
  begin
    MessageDlg('Favor preencher Valor 1 e Valor 2!', mtInformation, [mbOk], 0);
    Exit;
  end;

  value1 := StrToFloatDef(edtValue1.Text, 0);
  value2 := StrToFloatDef(edtValue2.Text, 0);
  result := value1 + value2;
  ShowResult(FloatToStr(value1) + ' + ' + FloatToStr(value2), result);
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  edtValue1.Text := '';
  edtValue2.Text := '';
  lblResult.Caption := 'Resultado:';
  MemoHistory.Clear;
end;

procedure TForm1.btnCopyResultClick(Sender: TObject);
begin
  Clipboard.AsText := lblResult.Caption;
end;

procedure TForm1.btnDivideClick(Sender: TObject);
var
  value1, value2, result: Double;
begin
  if IsEmpty(edtValue1.Text) or IsEmpty(edtValue2.Text) then
  begin
    MessageDlg('Favor preencher Valor 1 e Valor 2!', mtInformation, [mbOk], 0);
    Exit;
  end;


  value1 := StrToFloatDef(edtValue1.Text, 0);
  value2 := StrToFloatDef(edtValue2.Text, 0);

  if value2 = 0 then
  begin
    MessageDlg('Não é possível dividir por zero! Favor digite um número válido!',
      mtInformation, [mbOk], 0);
    Exit;
  end;

  result := value1 / value2;
  ShowResult(FloatToStr(value1) + ' / ' + FloatToStr(value2), result);
end;

procedure TForm1.btnMultiplyClick(Sender: TObject);
var
  value1, value2, result: Double;
begin
  if IsEmpty(edtValue1.Text) or IsEmpty(edtValue2.Text) then
  begin
    MessageDlg('Favor preencher Valor 1 e Valor 2!', mtInformation, [mbOk], 0);
    Exit;
  end;

  value1 := StrToFloatDef(edtValue1.Text, 0);
  value2 := StrToFloatDef(edtValue2.Text, 0);
  result := value1 * value2;
  ShowResult(FloatToStr(value1) + ' * ' + FloatToStr(value2), result);
end;

procedure TForm1.btnSqrtValue1Click(Sender: TObject);
var
  value1, result: Double;
begin
  if IsEmpty(edtValue1.Text) then
  begin
    MessageDlg('Favor preencher Valor 1!', mtInformation, [mbOk], 0);
    Exit;
  end;

  value1 := StrToFloatDef(edtValue1.Text, 0);
  result := Sqrt(value1);
  ShowResult('√' + FloatToStr(value1), result);
end;

procedure TForm1.btnSqrtValue2Click(Sender: TObject);
var
  value2, result: Double;
begin
  if IsEmpty(edtValue2.Text) then
  begin
    MessageDlg('Favor preencher Valor 2!', mtInformation, [mbOk], 0);
    Exit;
  end;

  value2 := StrToFloatDef(edtValue2.Text, 0);
  result := Sqrt(value2);
  ShowResult('√' + FloatToStr(value2), result);
end;

procedure TForm1.btnSubtractClick(Sender: TObject);
var
  value1, value2, result: Double;
begin
  if IsEmpty(edtValue1.Text) or IsEmpty(edtValue2.Text) then
  begin
    MessageDlg('Favor preencher Valor 1 e Valor 2!', mtInformation, [mbOk], 0);
    Exit;
  end;

  value1 := StrToFloatDef(edtValue1.Text, 0);
  value2 := StrToFloatDef(edtValue2.Text, 0);
  result := value1 - value2;
  ShowResult(FloatToStr(value1) + ' - ' + FloatToStr(value2), result);
end;

procedure TForm1.btnPercentClick(Sender: TObject);
var
  value1, value2, result: Double;
begin
  if IsEmpty(edtValue1.Text) or IsEmpty(edtValue2.Text) then
  begin
    MessageDlg('Favor preencher Valor 1 e Valor 2!', mtInformation, [mbOk], 0);
    Exit;
  end;

  value1 := StrToFloatDef(edtValue1.Text, 0);
  value2 := StrToFloatDef(edtValue2.Text, 0);
  result := value1 * value2 / 100;
  ShowResult(FloatToStr(value2) + '% de ' + FloatToStr(value1) , result);
end;

procedure TForm1.btnPowerClick(Sender: TObject);
var
  value1, value2, result: Double;
begin
  if IsEmpty(edtValue1.Text) or IsEmpty(edtValue2.Text) then
  begin
    MessageDlg('Favor preencher Valor 1 e Valor 2!', mtInformation, [mbOk], 0);
    Exit;
  end;

  value1 := StrToFloatDef(edtValue1.Text, 0);
  value2 := StrToFloatDef(edtValue2.Text, 0);
  result := Power(value1,  value2);
  ShowResult(FloatToStr(value1) + ' ^ ' + FloatToStr(value2), result);
end;

end.
