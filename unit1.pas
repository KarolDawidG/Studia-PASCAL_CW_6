unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Wyczysc: TButton;
    Losuj: TButton;
    Sortuj: TButton;
    Info: TButton;
    Koniec: TButton;
    LosowaLista: TListBox;
    SortowanaLista: TListBox;
    procedure InfoClick(Sender: TObject);
    procedure KoniecClick(Sender: TObject);
    procedure LosujClick(Sender: TObject);
    procedure SortujClick(Sender: TObject);
    procedure WyczyscClick(Sender: TObject);

  private
  public

  end;

const cRozmiarTablicy = 20;

var
  Form1: TForm1;
  arrLiczba : array[1..cRozmiarTablicy] of integer;

implementation


{$R *.lfm}

{ TForm1 }
  var L1, L2, suma, suma2: integer;

procedure TForm1.LosujClick(Sender: TObject);
var
i, j, x :integer;
begin
LosowaLista.clear;
Randomize;
for i:=1 to cRozmiarTablicy do
     arrLiczba[i+1] := random(100);
     for i:=1 to cRozmiarTablicy do
    LosowaLista.Items.Add(IntToStr(i)+': '+IntToStr(arrLiczba[i]));
     begin
SortowanaLista.Clear;
        for j := 1 to cRozmiarTablicy - 1 do
        for i := 1 to cRozmiarTablicy - 1 do
         if arrLiczba[i] > arrLiczba[i+1] then // Porządek rosnący
            begin
              x := arrLiczba[i]; arrLiczba[i] := arrLiczba[i+1]; arrLiczba[i+1] := x;
            end;
      end;
end;

procedure TForm1.SortujClick(Sender: TObject);
var
i,j, x: integer;
begin
 SortowanaLista.Clear;
for i:=1 to cRozmiarTablicy do
 SortowanaLista.Items.Add( IntToStr(i)+': '+IntToStr(arrLiczba[i]));
end;

procedure TForm1.WyczyscClick(Sender: TObject);
begin
  LosowaLista.clear;
  SortowanaLista.clear;
end;

procedure TForm1.InfoClick(Sender: TObject);
begin
  ShowMessage('Autor programu: Dawid Glinkowski');
end;

procedure TForm1.KoniecClick(Sender: TObject);
begin
    close;
end;

end.

