table 50100 "CLIP Course"
{
    Caption = 'Courses', Comment = 'ESP = "Cursos"';
    DataClassification = CustomerContent;
    fields
    {
        field(1; "No."; Code[20])
        //En realidad es de 20 pero le puse 5 publique y ahora me da error si lo cambio a 20 (ya preguntare como se hace)
        {
            //Caption = 'No.', Comment = 'ESP = "N°"';
            Caption = 'No.', Comment = 'ESP="N°"';
            //ToolTip = 'Course Id', Comment = 'ESP = "Id del curso"';
            trigger OnValidate()
            var
                CoursesSetup: Record "CLIP Courses Setup";
                NoSeries: Codeunit "No. Series";
                IsHandled: Boolean;
            begin
                IsHandled := false;
                OnBeforeValidateNo(Rec, xRec, IsHandled);
                if IsHandled then
                    exit;

                if "No." <> xRec."No." then begin
                    CoursesSetup.Get();
                    NoSeries.TestManual(CoursesSetup."Course Nos.");
                    "No. Series" := '';
                end;
            end;


        }
        field(2; "Name"; Text[100])
        {
            Caption = 'Name', Comment = 'ESP = "Nombre"';
        }
        field(3; "Content Description"; Text[2048])
        {
            Caption = 'Content Description', Comment = 'ESP = "Descripción del contenido"';
        }
        field(4; "Duration (hours)"; Integer)
        {
            Caption = 'Duration (hours)', Comment = 'ESP = "Duracion (horas)"';
        }
        field(5; "Price"; Decimal)
        {
            Caption = 'Price', Comment = 'ESP = "Precio"';
        }
        field(6; "Language Code"; Code[10])
        {
            TableRelation = Language;
            Caption = 'Language Code', Comment = 'ESP = "Codigo de lenguaje"';
        }
        field(7; "Type (Option)"; Option)
        {
            Caption = 'Type (Option)', Comment = 'ESP = "Tipo (opcion)"';
            OptionMembers = " ","Instructor-Lead","Video Tutorial";
            OptionCaption = ' ,Instructor-Lead,Video Tutorial', Comment = 'ESP = " ,Instructor-Guia,Tutorial en Video"';

        }
        field(8; "Type (Enum)"; Enum "CLIP Course Type")
        {
            Caption = 'Type (Enum)', Comment = 'ESP = "Tipo (Enum)"';
        }
        field(9; "No. Series"; Code[20])
        {
            Caption = 'No. Series', Comment = 'ESP = "N° Serie"';
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    trigger OnInsert()
    var
        CoursesSetup: Record "CLIP Courses Setup";
        Course: Record "CLIP Course";
        NoSeries: Codeunit "No. Series";
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeOnInsert(Rec, IsHandled, xRec);
        if IsHandled then
            exit;

        if "No." = '' then begin
            CoursesSetup.Get();
            CoursesSetup.TestField("Course Nos.");
            "No. Series" := CoursesSetup."Course Nos.";
            if NoSeries.AreRelated("No. Series", xRec."No. Series") then
                "No. Series" := xRec."No. Series";
            "No." := NoSeries.GetNextNo("No. Series");
            Course.ReadIsolation(IsolationLevel::ReadUncommitted);
            Course.SetLoadFields("No.");
            while Course.Get("No.") do
                "No." := NoSeries.GetNextNo("No. Series");
        end;
    end;

    procedure AssistEdit(OldCourse: Record "CLIP Course") Result: Boolean
    var
        Course: Record "CLIP Course";
        RecCoursesSetup: Record "CLIP Courses Setup";
        NoSeries: Codeunit "No. Series";
        IsHandled: Boolean;
    begin
        IsHandled := false;
        OnBeforeAssistEdit(Rec, OldCourse, IsHandled, Result);
        if IsHandled then
            exit(Result);

        Course := Rec;
        RecCoursesSetup.Get();
        RecCoursesSetup.TestField("Course Nos.");
        if NoSeries.LookupRelatedNoSeries(RecCoursesSetup."Course Nos.", OldCourse."No. Series", Course."No. Series") then begin
            Course."No." := NoSeries.GetNextNo(Course."No. Series");
            Rec := Course;
            exit(true);
        end;
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeAssistEdit(var Course: Record "CLIP Course"; xOldCourse: Record "CLIP Course"; var IsHandled: Boolean; var Result: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeValidateNo(var Course: Record "CLIP Course"; xCourse: Record "CLIP Course"; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeOnInsert(var Course: Record "CLIP Course"; var IsHandled: Boolean; var xCourse: Record "CLIP Course")
    begin
    end;
}