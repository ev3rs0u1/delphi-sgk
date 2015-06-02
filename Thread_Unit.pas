unit Thread_Unit;

interface

uses
    Classes, StdCtrls, SysUtils, Windows;

type
    m_Thread = class(TThread)
    private
    { Private declarations }
    protected
        procedure Execute; override;
    end;

implementation

procedure m_Thread.Execute;
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
            MessageBox(Handle, '未找该QQ号相关信息！', '提示', MB_OK)
        else
        begin
            sListView.Items.Clear;
            FreeOnTerminate := True;
            for i := 0 to tr.Count - 1 do
            begin
                td := ParserHTML(tr[i].InnerHtml).SimpleCSSSelector('td');
                for j := 0 to td.Count div 4 - 1 do
                begin
                    m_Form.Canvas.Lock;
                    sListView.Items.Add.Caption := td[1].InnerText;
                    sListView.Items[sListView.Items.Count - 1].SubItems.Add(td[2].InnerText);
                    sListView.Items[sListView.Items.Count - 1].SubItems.Add(td[3].InnerText);
                    sListView.Items[sListView.Items.Count - 1].SubItems.Add(td[4].InnerText);
                    m_Form.Canvas.unLock;
                end;

            end;
        end;
    finally
        FreeAndNil(HTTP);
        ParamPost.Free;
        ResponseStream.Free;
        sListView.Refresh;
    end;
end;

end.

