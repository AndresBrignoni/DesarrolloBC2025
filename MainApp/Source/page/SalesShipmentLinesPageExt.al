pageextension 50104 "ABW Sales Shipment Lines" extends "Sales Shipment Lines"
{
    layout
    {
        addafter("No.")
        {
            field("ABW Course Edition"; Rec."ABW Course Edition") { ApplicationArea = All; }
        }
    }
}