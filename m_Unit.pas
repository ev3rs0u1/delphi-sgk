unit m_Unit;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, HtmlParser, sSkinManager, sEdit, ComCtrls, sListView,
    sButton, Menus, Clipbrd, About, OverbyteIcsWndControl, OverbyteIcsHttpProt;

type
    Tm_Form = class(TForm)
        sSkinManager: TsSkinManager;
        sEdit: TsEdit;
        sButton: TsButton;
        PopupMenu: TPopupMenu;
        N1: TMenuItem;
        N2: TMenuItem;
        sListView: TsListView;
        HttpCli: THttpCli;
        procedure sButtonClick(Sender: TObject);
        procedure N1Click(Sender: TObject);
        procedure sListViewMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
        procedure N2Click(Sender: TObject);
        procedure FormDestroy(Sender: TObject);
    private
        { Private declarations }
        function MsgBox(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; HelpCtx: Integer): Integer;
    public
        { Public declarations }
    end;

var
    m_Form: Tm_Form;

implementation

{$R *.dfm}

function Tm_Form.MsgBox(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; HelpCtx: Integer): Integer;
begin
    with CreateMessageDialog(Msg, DlgType, Buttons) do
        try
            Position := poOwnerFormCenter;
            Result := ShowModal
        finally
            Free
        end
end;

procedure Tm_Form.sListViewMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
    P: TPoint;
begin
    GetCursorPos(P);
    if Button = mbRight then
        if sListView.ItemIndex <> -1 then
        begin
            N1.Visible := True;
            PopupMenu.Popup(P.X, P.Y);
        end
        else
        begin
            N1.Visible := False;
            PopupMenu.Popup(P.X, P.Y);
        end;
end;

procedure Tm_Form.N1Click(Sender: TObject);
begin
    Clipbrd.Clipboard.AsText := sListView.Selected.Caption + ' | ' + sListView.Selected.SubItems.Strings[0] + ' | ' + sListView.Selected.SubItems.Strings[1] + ' | ' + sListView.Selected.SubItems.Strings[2];
    MsgBox(Clipbrd.Clipboard.AsText, mtInformation, [mbOK], 0);
end;

procedure Tm_Form.N2Click(Sender: TObject);
begin
    AboutBox.ShowModal;
end;

procedure Tm_Form.FormDestroy(Sender: TObject);
begin
    FreeAndNil(HttpCli);
end;

procedure Tm_Form.sButtonClick(Sender: TObject);
var
    i, j: Integer;
    Buf: AnsiString;
    InStream: TMemoryStream;
    OutStream: TStringStream;
    tr, td: IHtmlElementList;
begin
    sButton.Enabled := False;
    InStream := TMemoryStream.Create;
    OutStream := TStringstream.Create('', TEncoding.UTF8);
    Buf := 'type=1&key=' + Trim(sEdit.Text);
    InStream.Write(buf[1], Length(Buf));
    InStream.Position := 0;
    HttpCli.SendStream := InStream;
    HttpCli.RcvdStream := OutStream;
    HttpCli.URL := 'http://shota.cc/tools/qun.php';
    try
        HttpCli.Post;
        tr := ParserHTML(OutStream.DataString).SimpleCSSSelector('table tbody tr');
        if tr.Count = 0 then
            MsgBox('未能找到该QQ相关信息或请求过于频繁！', mterror, [mbOk], 0)
        else
        begin
            sListView.Items.Clear;
            for i := 0 to tr.Count - 1 do
            begin

                td := ParserHTML(tr[i].InnerHtml).SimpleCSSSelector('td');
                for j := 0 to td.Count div 4 - 1 do
                begin
                    sListView.Items.BeginUpdate;
                    sListView.Items.Add.Caption := td[1].InnerText;
                    sListView.Items[sListView.Items.Count - 1].SubItems.Add(td[2].InnerText);
                    sListView.Items[sListView.Items.Count - 1].SubItems.Add(td[3].InnerText);
                    sListView.Items[sListView.Items.Count - 1].SubItems.Add(td[4].InnerText);
                    sListView.Items.EndUpdate;
                end;

            end
        end;
    finally
        InStream.Free;
        OutStream.Free;
        sListView.Refresh;
        sButton.Enabled := True;
    end;
end;

end.

