table 50102 "Course Edition"
{
    CaptionML = ENU = 'Course Edition', ESP = 'Edicion curso';
    fields
    {
        field(1; "Course No."; Code[20])
        {
            CaptionML = ENU = 'Course No.', ESP = 'Nro. de curso';
            TableRelation = Course;
        }
        field(2; "Edition"; Code[20])
        {
            CaptionML = ENU = 'Edition', ESP = 'Edición';
        }
        field(3; "Start Date"; Date)
        {
            CaptionML = ENU = 'Start Date', ESP = 'Fecha inicio';
        }
        field(4; "Max. students"; Integer)
        {
            CaptionML = ENU = 'Max. students', ESP = 'Nro max de alumnos';
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