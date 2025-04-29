tableextension 50100 "ABW Sales Line" extends "Sales Line"
{
    fields
    {
        modify("No.")
        { TableRelation = if (Type = const("ABW Course")) "ABW Course"; }
        field(50100; "ABW Course Edition"; Code[20])
        {
            Caption = 'Course Edition', comment = 'ESP="Edición curso"';
            DataClassification = CustomerContent;
            TableRelation = "ABW Course Edition";
        }
    }
}