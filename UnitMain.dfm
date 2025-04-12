object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Form1'
  ClientHeight = 424
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lblResult: TLabel
    Left = 9
    Top = 176
    Width = 55
    Height = 15
    Caption = 'Resultado:'
  end
  object Label1: TLabel
    Left = 9
    Top = 16
    Width = 35
    Height = 15
    Caption = 'Valor 1'
  end
  object Label2: TLabel
    Left = 206
    Top = 16
    Width = 35
    Height = 15
    Caption = 'Valor 2'
  end
  object Label3: TLabel
    Left = 8
    Top = 208
    Width = 51
    Height = 15
    Caption = 'Hist'#243'rico:'
  end
  object btnAdd: TButton
    Left = 9
    Top = 72
    Width = 75
    Height = 25
    Caption = '+'
    TabOrder = 0
    OnClick = btnAddClick
  end
  object btnSubtract: TButton
    Left = 90
    Top = 72
    Width = 75
    Height = 25
    Caption = '-'
    TabOrder = 1
    OnClick = btnSubtractClick
  end
  object btnMultiply: TButton
    Left = 171
    Top = 72
    Width = 75
    Height = 25
    Caption = '*'
    TabOrder = 2
    OnClick = btnMultiplyClick
  end
  object btnDivide: TButton
    Left = 252
    Top = 72
    Width = 75
    Height = 25
    Caption = '/'
    TabOrder = 3
    OnClick = btnDivideClick
  end
  object edtValue1: TEdit
    Left = 9
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 4
  end
  object edtValue2: TEdit
    Left = 206
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 5
  end
  object MemoHistory: TMemo
    Left = 8
    Top = 224
    Width = 321
    Height = 155
    ReadOnly = True
    TabOrder = 6
  end
  object btnClear: TButton
    Left = 254
    Top = 385
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 7
    OnClick = btnClearClick
  end
  object btnPower: TButton
    Left = 9
    Top = 112
    Width = 75
    Height = 25
    Caption = '^'
    TabOrder = 8
    OnClick = btnPowerClick
  end
  object btnSqrtValue1: TButton
    Left = 90
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Sqrt Valor 1'
    TabOrder = 9
    OnClick = btnSqrtValue1Click
  end
  object btnPercent: TButton
    Left = 254
    Top = 112
    Width = 75
    Height = 25
    Caption = '%'
    TabOrder = 10
    OnClick = btnPercentClick
  end
  object btnSqrtValue2: TButton
    Left = 171
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Sqrt Valor 2'
    TabOrder = 11
    OnClick = btnSqrtValue2Click
  end
  object btnCopyResult: TButton
    Left = 144
    Top = 385
    Width = 104
    Height = 25
    Caption = 'Copiar Resultado'
    TabOrder = 12
    OnClick = btnCopyResultClick
  end
end
