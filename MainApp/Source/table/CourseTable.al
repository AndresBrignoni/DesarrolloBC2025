table 50100 "ABW Course"
{
    Caption = 'Courses', Comment = 'ESP = "Cursos"';
    DataClassification = CustomerContent;
    LookupPageId = "ABW Course List";

    fields
    {
        field(1; "No."; Code[20])
        //En realidad es de 20 pero le puse 5 publique y ahora me da error si lo cambio a 20 (ya preguntare como se hace)
        {
            //Caption = 'No.', Comment = 'ESP = "N°"';
            Caption = 'No.', Comment = 'ESP="N°"';
            ToolTip = 'Course Id', Comment = 'ESP = "Id del curso"';
            trigger OnValidate()
            var
                CoursesSetup: Record "ABW Courses Setup";
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
        field(2; Name; Text[100])
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
        field(5; Price; Decimal)
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
        field(8; "Type (Enum)"; Enum "ABW Course Type")
        {
            Caption = 'Type (Enum)', Comment = 'ESP = "Tipo (Enum)"';
        }
        field(56; "No. Series"; Code[20])
        {
            Caption = 'No. Series', Comment = 'ESP = "N° Serie"';
            Editable = false;
            TableRelation = "No. Series";
        }
        field(51; "Gen. Prod. Posting Group"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group';
            TableRelation = "Gen. Product Posting Group";

            trigger OnValidate()
            var
                GenProdPostingGrp: record "Gen. Product Posting Group";
            begin
                if xRec."Gen. Prod. Posting Group" <> "Gen. Prod. Posting Group" then
                    if GenProdPostingGrp.ValidateVatProdPostingGroup(GenProdPostingGrp, "Gen. Prod. Posting Group") then
                        Validate("VAT Prod. Posting Group", GenProdPostingGrp."Def. VAT Prod. Posting Group");
            end;
        }
        field(58; "VAT Prod. Posting Group"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "VAT Product Posting Group";
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, "Duration (hours)", "Type (Enum)", "Language Code") { }
        fieldgroup(Brick; "No.", Name, Price) { }

    }

    trigger OnInsert()
    var
        CoursesSetup: Record "ABW Courses Setup";
        Course: Record "ABW Course";
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

    procedure AssistEdit(OldCourse: Record "ABW Course") Result: Boolean
    var
        Course: Record "ABW Course";
        RecCoursesSetup: Record "ABW Courses Setup";
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
    local procedure OnBeforeAssistEdit(var Course: Record "ABW Course"; xOldCourse: Record "ABW Course"; var IsHandled: Boolean; var Result: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeValidateNo(var Course: Record "ABW Course"; xCourse: Record "ABW Course"; var IsHandled: Boolean)
    begin
    end;

    [IntegrationEvent(false, false)]
    local procedure OnBeforeOnInsert(var Course: Record "ABW Course"; var IsHandled: Boolean; var xCourse: Record "ABW Course")
    begin
    end;

}