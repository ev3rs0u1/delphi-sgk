unit m_Unit;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, sSkinManager, sEdit, ComCtrls, sListView, sButton, Menus,
    Clipbrd, About, OverbyteIcsWndControl, OverbyteIcsHttpProt;

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
        procedure HttpCliRequestDone(Sender: TObject; RqType: THttpRequest; ErrCode: Word);
    private

        function MsgBox(const Msg: string; DlgType: TMsgDlgType; Buttons: TMsgDlgButtons; HelpCtx: Integer): Integer;
    public

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

procedure StringSplit(pString: Pchar; psubString: PChar; list: TStringList);
var
    nSize, SubStringSize: DWord;
    intI, intJ, intK: DWORD;
    curChar: Char;
    strString: string;
    strsearchSubStr: string;
begin
    nSize := strLen(pString);
    SubStringSize := strLen(PSubString);
    strstring := '';
    inti := 0;
    while intI <= (nSize - 1) do
    begin
        if (nsize - inti) >= substringSize then
        begin
            if ((PString + intI)^ = pSubString^) then
            begin
                intk := inti;
                strSearchSubStr := '';
                curchar := (pstring + intk)^;
                strsearchSubStr := strSearchSubStr + Curchar;
                intk := intk + 1;
                for intj := 1 to SubStringSize - 1 do
                begin
                    if ((pString + intk)^ = (PSubString + intj)^) then
                    begin
                        curchar := (pstring + intk)^;
                        intk := intk + 1;
                        strsearchSubStr := strSearchSubStr + Curchar;
                    end
                    else
                    begin
                        inti := intk;
                        strString := strString + strSearchSubStr;
                        break;
                    end;
                end;
                if (intJ = substringSize) or (SubStringSize = 1) then
                begin
                    inti := intk;
                    list.add(strstring);
                    strstring := '';
                end;
            end
            else
            begin
                curChar := (pString + inti)^;
                strstring := strstring + curchar;
                inti := inti + 1;
            end;
            if inti = nsize then
            begin
                list.Add(strString);
                strString := '';
            end;
        end
        else
        begin
            strString := strstring + string(pString + inti);
            list.Add(strstring);
            inti := nsize;
        end;
    end;
end;

procedure ClearMemory;
begin
    if Win32Platform = VER_PLATFORM_WIN32_NT then
    begin
        SetProcessWorkingSetSize(GetCurrentProcess, $FFFFFFFF, $FFFFFFFF);
        Application.ProcessMessages;
    end;
end;

procedure Tm_Form.HttpCliRequestDone(Sender: TObject; RqType: THttpRequest; ErrCode: Word);
begin
    HttpCli.RcvdStream := nil;
    sButton.Enabled := True;
end;

procedure Tm_Form.N2Click(Sender: TObject);
begin
    AboutBox.ShowModal;
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

procedure Tm_Form.sButtonClick(Sender: TObject);
var
    I: Integer;
    lData: TStringStream;
    lDataOut: TMemoryStream;
    ListData, Data: TStringList;
begin
    try
        sButton.Enabled := False;
        Data := TStringList.Create;
        ListData := TStringList.Create;
        lDataOut := TMemoryStream.Create;
        lData := TStringstream.Create('', TEncoding.UTF8);
        lDataOut.Seek(0, 0);
        HttpCli.SendStream := lDataOut;
        HttpCli.RcvdStream := lData;
        HttpCli.URL := 'http://qun.col.pw/doquery.php?q=' + sEdit.Text + '&type=1';
        HttpCli.Get;
        StringSplit(PWideChar(lData.DataString), '双击查看群信息', Data);
        if Pos('没有', Data.Text) > 0 then
            MsgBox('未能找到该QQ相关数据或请求过于频繁！', mterror, [mbOk], 0)
        else
        begin
            sListView.Clear;
            for I := 0 to Data.Count - 2 do
            begin
                StringSplit(PWideChar(Data[I]), ',', ListData);
                sListView.Items.BeginUpdate;
                sListView.Items.Add.Caption := ListData[3];
                sListView.Items[sListView.Items.Count - 1].SubItems.Add(ListData[2]);
                sListView.Items[sListView.Items.Count - 1].SubItems.Add(ListData[0]);
                sListView.Items[sListView.Items.Count - 1].SubItems.Add(ListData[4]);
                sListView.Items.EndUpdate;
                ListData.Clear;
            end
        end;
    finally
        FreeAndNil(Data);
        FreeAndNil(lData);
        FreeAndNil(lDataOut);
        FreeAndNil(ListData);
        ClearMemory;
    end;
end;

end.

