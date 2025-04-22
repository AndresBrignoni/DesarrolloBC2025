table 50101 "ABW Courses Setup"
{
    Caption = 'Courses Setup', Comment = 'ESP = "Conf. cursos"';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(2; "Course Nos."; Code[20])
        {
            Caption = 'Course Nos.', Comment = 'ESP = "N° cursos"';
            TableRelation = "No. Series";
        }
    }
    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }

    var
}

