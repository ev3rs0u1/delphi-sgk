program Project;
{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}

uses
    Forms,
    m_Unit in 'm_Unit.pas' {m_Form},
    ABOUT in 'ABOUT.pas' {AboutBox};

{$R *.res}

begin
    Application.Initialize;
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(Tm_Form, m_Form);
    Application.CreateForm(TAboutBox, AboutBox);
    Application.Run;
end.

