enum 50100 "Course Type"
{
    Caption = 'Course Type', Comment = 'ESP = "Tipo Curso"';
    Extensible = true;  // esto el option no lo tiene
    value(0; " ") { }
    value(1; "Instructor-Lead")
    {
        Caption = 'Instructor-Lead', Comment = 'ESP = "Instructor-Guia"';
    }
    value(2; "Video Tutorial")
    {
        Caption = 'Video Tutorial', Comment = 'ESP = "Tutorial en video"';
    }
}