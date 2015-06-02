unit m_Unit;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, HtmlParser, IdHTTP, IdBaseComponent, IdComponent,
    sSkinManager, sEdit, ComCtrls, sListView, sButton, IdTCPConnection,
    IdTCPClient, Menus, Clipbrd, About;

type
    Tm_Form = class(TForm)
        IdHTTP: TIdHTTP;
        sSkinManager: TsSkinManager;
        sListView: TsListView;
        sEdit: TsEdit;
        sButton: TsButton;
        PopupMenu: TPopupMenu;
        N1: TMenuItem;
        N2: TMenuItem;
        procedure sButtonClick(Sender: TObject);
        procedure N1Click(Sender: TObject);
        procedure sListViewMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
        procedure N2Click(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    m_Form: Tm_Form;

implementation

{$R *.dfm}

procedure Tm_Form.N1Click(Sender: TObject);
begin
    Clipbrd.Clipboard.AsText := sListView.Selected.Caption + ' | ' + sListView.Selected.SubItems.Strings[0] + ' | ' + sListView.Selected.SubItems.Strings[1] + ' | ' + sListView.Selected.SubItems.Strings[2];
    MessageBox(m_Form.Handle, PWideChar(Clipbrd.Clipboard.AsText), '提示', MB_ICONINFORMATION);
end;

procedure Tm_Form.N2Click(Sender: TObject);
begin
    AboutBox.ShowModal;
end;

procedure Tm_Form.sButtonClick(Sender: TObject);
var
    HTTP: TIdHTTP;
    i, j: Integer;
    doc: IHtmlElement;
    tr, td: IHtmlElementList;
    ParamPost: TStringList;
    ResponseStream: TStringStream;
begin
    HTTP := TIdHTTP.Create(nil);
    ParamPost := TStringList.Create;
    ResponseStream := TStringstream.Create('', TEncoding.UTF8);
    try
        ParamPost.Add('type=1');
        ParamPost.Add('key=' + sEdit.Text);
        HTTP.Post('http://shota.cc/tools/qun.php', ParamPost, ResponseStream);
        doc := ParserHTML(ResponseStream.DataString);
        tr := doc.SimpleCSSSelector('table tbody tr');
        if tr.Count = 0 then
            MessageBox(m_Form.Handle, '未找该QQ号相关信息！', '提示', MB_ICONWARNING)
        else
        begin
            sListView.Items.Clear;
            for i := 0 to tr.Count - 1 do
            begin
                td := ParserHTML(tr[i].InnerHtml).SimpleCSSSelector('td');
                sListView.Items.BeginUpdate;
                for j := 0 to td.Count div 4 - 1 do
                begin
                    sListView.Items.Add.Caption := td[1].InnerText;
                    sListView.Items[sListView.Items.Count - 1].SubItems.Add(td[2].InnerText);
                    sListView.Items[sListView.Items.Count - 1].SubItems.Add(td[3].InnerText);
                    sListView.Items[sListView.Items.Count - 1].SubItems.Add(td[4].InnerText);
                    Application.ProcessMessages;
                end;
                sListView.Items.EndUpdate;
            end;
            sListView.Refresh;
        end;
    finally
        FreeAndNil(HTTP);
        ParamPost.Free;
        ResponseStream.Free;
    end;

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

end.

