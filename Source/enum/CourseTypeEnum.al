enum 50100 "Course Type"
{
    CaptionML = ENU = 'Course Type', ESP = 'Tipo Curso';
    Extensible = true;  // esto el option no lo tiene
    value(0; " ") { }
    value(1; "Instructor-Lead")
    {
        CaptionML = ENU = 'Instructor-Lead', ESP = 'Instructor-Guia';
    }
    value(2; "Video Tutorial")
    {
        CaptionML = ENU = 'Video Tutorial', ESP = 'Tutorial en video';
    }
}