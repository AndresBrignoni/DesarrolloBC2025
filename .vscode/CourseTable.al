table 50100 Course
{
    CaptionML = ENU = 'Courses', ESP = 'Cursos';
    fields
    {
        field(1; "No."; Code[5])
        //En realidad es de 20 pero le puse 5 publique y ahora me da error si lo cambio a 20 (ya preguntare como se hace)
        {
            CaptionML = ENU = 'No.', ESP = 'N°';
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
    }
}