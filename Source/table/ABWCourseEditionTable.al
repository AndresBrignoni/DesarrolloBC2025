table 50102 "CLIP Course Edition"
{
    Caption = 'Course Edition', Comment = 'ESP = "Edicion curso"';
    DataClassification = CustomerContent;
    fields
    {
        field(1; "Course No."; Code[20])
        {
            Caption = 'Course No.', Comment = 'ESP = "Nro. de curso"';
            TableRelation = "CLIP Course";
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

}