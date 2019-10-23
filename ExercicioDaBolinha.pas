unit ExercicioDaBolinha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Shape1: TShape;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  case Shape1.Brush.Color of
    clYellow  :   begin
                    Shape1.Left         := 500;
                    Shape1.Top          := 20;
                    Shape1.Brush.Color  := clRed;
                  end;
    clRed     :   begin
                    Shape1.Top          := 200;
                    Shape1.Left         := 500;
                    Shape1.Brush.Color  := clBlue;
                  end;
    clBlue     :   begin
                    Shape1.Left         := 20;
                    Shape1.Top          := 200;
                    Shape1.Brush.Color  := clGreen;
                  end;
    clGreen    :   begin
                    Shape1.Top          := 20;
                    Shape1.Left         := 20;
                    Shape1.Brush.Color  := clYellow;
                  end;
  else ShowMessage('Erooou')
//procedure banana poderia ser executada com o onclick
//variavel: Sender tipo: objeto obrigatorio ter o parametro TObject
  end;
end;

end.
