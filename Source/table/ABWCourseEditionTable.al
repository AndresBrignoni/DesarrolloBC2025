table 50102 "ABW Course Edition"
{
    Caption = 'Course Edition', Comment = 'ESP = "Edicion curso"';
    DataClassification = CustomerContent;
    LookupPageId = "ABW Course Editions";
    fields
    {
        field(1; "Course No."; Code[20])
        {
            Caption = 'Course No.', Comment = 'ESP = "Nro. de curso"';
            TableRelation = "ABW Course";
        }
        field(2; "Edition"; Code[20])
        {
            Caption = 'Edition', Comment = 'ESP = "Edición"';
        }
        field(3; "Start Date"; Date)
        {
            Caption = 'Start Date', Comment = 'ESP = "Fecha inicio"';
        }
        field(4; "Max. students"; Integer)
        {
            Caption = 'Max. students', Comment = 'ESP = "Nro max de alumnos"';
        }

    }
    keys
    {
        key(PK; "Course No.", Edition)
        {
            Clustered = true;
        }
    }
    fieldgroups
    {
        fieldgroup(DropDown; Edition, "Max. students", "Start Date") { }
        fieldgroup(Brick; Edition, "Max. students", "Start Date") { }

    }


}