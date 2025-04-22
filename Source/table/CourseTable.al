table 50100 Course
{
    CaptionML = ENU = 'Courses', ESP = 'Cursos';
    DataClassification = CustomerContent;
    fields
    {
        field(1; "No."; Code[20])
        //En realidad es de 20 pero le puse 5 publique y ahora me da error si lo cambio a 20 (ya preguntare como se hace)
        {
            CaptionML = ENU = 'No.', ESP = 'N°';
            ToolTipML = ENU = 'Course Id', ESP = 'Id del curso';
            trigger OnValidate()
            var
                CoursesSetup: Record "Courses Setup";
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
            CaptionML = ENU = 'Name', ESP = 'Nombre';
        }
        field(3; "Content Description"; Text[2048])
        {
            CaptionML = ENU = 'Content Description', ESP = 'Descripción del contenido';
        }
        field(4; "Duration (hours)"; Integer)
        {
            CaptionML = ENU = 'Duration (hours)', ESP = 'Duracion (horas)';
        }
        field(5; "Price"; Decimal)
        {
            CaptionML = ENU = 'Price', ESP = 'Precio';
        }
        field(6; "Language Code"; Code[10])
        {
            TableRelation = Language;
            CaptionML = ENU = 'Language Code', ESP = 'Codigo de lenguaje';
        }
        field(7; "Type (Option)"; Option)
        {
            CaptionML = ENU = 'Type (Option)', ESP = 'Tipo (opcion)';
            OptionMembers = " ","Instructor-Lead","Video Tutorial";
            OptionCaptionML = ENU = ' ,Instructor-Lead,Video Tutorial', ESP = ' ,Instructor-Guia,Tutorial en Video';

        }
        field(8; "Type (Enum)"; Enum "Course Type")
        {
            CaptionML = ENU = 'Type (Enum)', ESP = 'Tipo (Enum)';
        }
        field(9; "No. Series"; Code[20])
        {
            CaptionML = ENU = 'No. Series', ESP = 'N° Serie';
            Editable = false;
            TableRelation = "No. Series";
        }
    }

    trigger OnInsert()
    var
        CoursesSetup: Record "Courses Setup";
        Course: Record Course;
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

    procedure AssistEdit(OldCourse: Record Course) Result: Boolean
    var
        Course: Record Course;
        RecCoursesSetup: Record "Courses Setup";
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
    local procedure OnBeforeAssistEdit(var Course: Record Course; xOldCourse: Record Course; var IsHandled: Boolean; var Result: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeValidateNo(var Course: Record Course; xCourse: Record Course; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeOnInsert(var Course: Record Course; var IsHandled: Boolean; var xCourse: Record Course)
    begin
    end;
}