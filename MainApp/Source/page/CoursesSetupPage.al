
page 50102 "ABW Courses Setup"
{
    AccessByPermission = TableData "ABW Course" = R;
    ApplicationArea = Jobs;
    Caption = 'Courses Setup', Comment = 'ESP = "Conf. Cursos"';
    DeleteAllowed = false;
    InsertAllowed = false;   // es para que no permita ingresar sino se rompe la configuracion
    PageType = Card;
    SourceTable = "ABW Courses Setup";
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            group(Numbering)
            {
                Caption = 'Numbering', Comment = 'ESP = "Numeración"';
                field("Course Nos."; Rec."Course Nos.")
                {
                    ApplicationArea = Jobs;
                    ToolTip = 'Specifies the number series code you can use to assign numbers to Courses.', Comment = 'ESP = "Especifica el código de serie de números que puede utilizar para asignar números a los cursos."';
                }
            }
        }
        area(factboxes)
        {
            systempart(Control1900383207; Links)
            {
                ApplicationArea = RecordLinks;
                Visible = false;
            }
            systempart(Control1905767507; Notes)
            {
                ApplicationArea = Notes;
                Visible = false;
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin   // SI NO EXISTE EL REGISTRO, AGREGO UNO
            Rec.Init();
            Rec.Insert();
        end;
    end;
}

