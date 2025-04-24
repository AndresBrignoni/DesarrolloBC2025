tableextension 50100 "ABW Sales Line" extends "Sales Line"
{
    fields
    {
        modify("No.")
        { TableRelation = if (Type = const("ABW Course")) "ABW Course"; }

    }

}