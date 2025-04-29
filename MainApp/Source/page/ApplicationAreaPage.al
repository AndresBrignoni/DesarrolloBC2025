page 50105 "ABW Application Area"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Application Area Setup";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Company Name"; Rec."Company Name") { }
                field(ADCS; Rec.ADCS)
                {
                    ToolTip = 'Specifies the value of the ADCS field.', Comment = '%';
                }
                field(Advanced; Rec.Advanced)
                {
                    ToolTip = 'Specifies the value of the Advanced field.', Comment = '%';
                }
                field("Assembly"; Rec."Assembly")
                {
                    ToolTip = 'Specifies the value of the Assembly field.', Comment = '%';
                }
                field("Basic AT"; Rec."Basic AT")
                {
                    ToolTip = 'Specifies the value of the Basic AT field.', Comment = '%';
                }
                field("Basic AU"; Rec."Basic AU")
                {
                    ToolTip = 'Specifies the value of the Basic AU field.', Comment = '%';
                }
                field("Basic BE"; Rec."Basic BE")
                {
                    ToolTip = 'Specifies the value of the Basic BE field.', Comment = '%';
                }
                field("Basic CA"; Rec."Basic CA")
                {
                    ToolTip = 'Specifies the value of the Basic CA field.', Comment = '%';
                }
                field("Basic CH"; Rec."Basic CH")
                {
                    ToolTip = 'Specifies the value of the Basic CH field.', Comment = '%';
                }
                field("Basic CZ"; Rec."Basic CZ")
                {
                    ToolTip = 'Specifies the value of the Basic CZ field.', Comment = '%';
                }
                field("Basic DE"; Rec."Basic DE")
                {
                    ToolTip = 'Specifies the value of the Basic DE field.', Comment = '%';
                }
                field("Basic DK"; Rec."Basic DK")
                {
                    ToolTip = 'Specifies the value of the Basic DK field.', Comment = '%';
                }
                field("Basic ES"; Rec."Basic ES")
                {
                    ToolTip = 'Specifies the value of the Basic ES field.', Comment = '%';
                }
                field("Basic EU"; Rec."Basic EU")
                {
                    ToolTip = 'Specifies the value of the Basic EU field.', Comment = '%';
                }
                field("Basic FI"; Rec."Basic FI")
                {
                    ToolTip = 'Specifies the value of the Basic FI field.', Comment = '%';
                }
                field("Basic FR"; Rec."Basic FR")
                {
                    ToolTip = 'Specifies the value of the Basic FR field.', Comment = '%';
                }
                field("Basic GB"; Rec."Basic GB")
                {
                    ToolTip = 'Specifies the value of the Basic GB field.', Comment = '%';
                }
                field("Basic IS"; Rec."Basic IS")
                {
                    ToolTip = 'Specifies the value of the Basic IS field.', Comment = '%';
                }
                field("Basic IT"; Rec."Basic IT")
                {
                    ToolTip = 'Specifies the value of the Basic IT field.', Comment = '%';
                }
                field("Basic MX"; Rec."Basic MX")
                {
                    ToolTip = 'Specifies the value of the Basic MX field.', Comment = '%';
                }
                field("Basic NL"; Rec."Basic NL")
                {
                    ToolTip = 'Specifies the value of the Basic NL field.', Comment = '%';
                }
                field("Basic NO"; Rec."Basic NO")
                {
                    ToolTip = 'Specifies the value of the Basic NO field.', Comment = '%';
                }
                field("Basic NZ"; Rec."Basic NZ")
                {
                    ToolTip = 'Specifies the value of the Basic NZ field.', Comment = '%';
                }
                field("Basic RU"; Rec."Basic RU")
                {
                    ToolTip = 'Specifies the value of the Basic RU field.', Comment = '%';
                }
                field("Basic SE"; Rec."Basic SE")
                {
                    ToolTip = 'Specifies the value of the Basic SE field.', Comment = '%';
                }
                field("Basic US"; Rec."Basic US")
                {
                    ToolTip = 'Specifies the value of the Basic US field.', Comment = '%';
                }
                field(BasicHR; Rec.BasicHR)
                {
                    ToolTip = 'Specifies the value of the BasicHR field.', Comment = '%';
                }
                field(Comments; Rec.Comments)
                {
                    ToolTip = 'Specifies the value of the Comments field.', Comment = '%';
                }
                field("Cost Accounting"; Rec."Cost Accounting")
                {
                    ToolTip = 'Specifies the value of the Cost Accounting field.', Comment = '%';
                }
                field(Dimensions; Rec.Dimensions)
                {
                    ToolTip = 'Specifies the value of the Dimensions field.', Comment = '%';
                }
                field(Intercompany; Rec.Intercompany)
                {
                    ToolTip = 'Specifies the value of the Intercompany field.', Comment = '%';
                }
                field("Inventory Analysis"; Rec."Inventory Analysis")
                {
                    ToolTip = 'Specifies the value of the Inventory Analysis field.', Comment = '%';
                }
                field("Item Budget"; Rec."Item Budget")
                {
                    ToolTip = 'Specifies the value of the Item Budget field.', Comment = '%';
                }
                field("Item Charges"; Rec."Item Charges")
                {
                    ToolTip = 'Specifies the value of the Item Charges field.', Comment = '%';
                }
                field("Item References"; Rec."Item References")
                {
                    ToolTip = 'Specifies the value of the Item References field.', Comment = '%';
                }
                field("Item Tracking"; Rec."Item Tracking")
                {
                    ToolTip = 'Specifies the value of the Item Tracking field.', Comment = '%';
                }
                field(Jobs; Rec.Jobs)
                {
                    ToolTip = 'Specifies the value of the Projects field.', Comment = '%';
                }
                field(Location; Rec.Location)
                {
                    ToolTip = 'Specifies the value of the Location field.', Comment = '%';
                }
                field(Manufacturing; Rec.Manufacturing)
                {
                    ToolTip = 'Specifies the value of the Manufacturing field.', Comment = '%';
                }
                field(Notes; Rec.Notes)
                {
                    ToolTip = 'Specifies the value of the Notes field.', Comment = '%';
                }
                field("Order Promising"; Rec."Order Promising")
                {
                    ToolTip = 'Specifies the value of the Order Promising field.', Comment = '%';
                }
                field(Planning; Rec.Planning)
                {
                    ToolTip = 'Specifies the value of the Planning field.', Comment = '%';
                }
                field(Prepayments; Rec.Prepayments)
                {
                    ToolTip = 'Specifies the value of the Prepayments field.', Comment = '%';
                }
                field("Profile ID"; Rec."Profile ID")
                {
                    ToolTip = 'Specifies the value of the Profile ID field.', Comment = '%';
                }
                field("Purch Return Order"; Rec."Purch Return Order")
                {
                    ToolTip = 'Specifies the value of the Purch Return Order field.', Comment = '%';
                }
                field("Purchase Analysis"; Rec."Purchase Analysis")
                {
                    ToolTip = 'Specifies the value of the Purchase Analysis field.', Comment = '%';
                }
                field("Purchase Budget"; Rec."Purchase Budget")
                {
                    ToolTip = 'Specifies the value of the Purchase Budget field.', Comment = '%';
                }
                field("Record Links"; Rec."Record Links")
                {
                    ToolTip = 'Specifies the value of the Record Links field.', Comment = '%';
                }
                field("Relationship Mgmt"; Rec."Relationship Mgmt")
                {
                    ToolTip = 'Specifies the value of the Relationship Mgmt field.', Comment = '%';
                }
                field(Reservation; Rec.Reservation)
                {
                    ToolTip = 'Specifies the value of the Reservation field.', Comment = '%';
                }
                field("Sales Analysis"; Rec."Sales Analysis")
                {
                    ToolTip = 'Specifies the value of the Sales Analysis field.', Comment = '%';
                }
                field("Sales Budget"; Rec."Sales Budget")
                {
                    ToolTip = 'Specifies the value of the Sales Budget field.', Comment = '%';
                }
                field("Sales Return Order"; Rec."Sales Return Order")
                {
                    ToolTip = 'Specifies the value of the Sales Return Order field.', Comment = '%';
                }
                field("Sales Tax"; Rec."Sales Tax")
                {
                    ToolTip = 'Specifies the value of the Sales Tax field.', Comment = '%';
                }
                field(Service; Rec.Service)
                {
                    ToolTip = 'Specifies the value of the Service field.', Comment = '%';
                }
                field(Suite; Rec.Suite)
                {
                    ToolTip = 'Specifies the value of the Suite field.', Comment = '%';
                }
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.', Comment = '%';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.', Comment = '%';
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.', Comment = '%';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.', Comment = '%';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.', Comment = '%';
                }
                field("User ID"; Rec."User ID")
                {
                    ToolTip = 'Specifies the value of the User ID field.', Comment = '%';
                }
                field(VAT; Rec.VAT)
                {
                    ToolTip = 'Specifies the value of the VAT field.', Comment = '%';
                }
                field(Warehouse; Rec.Warehouse)
                {
                    ToolTip = 'Specifies the value of the Warehouse field.', Comment = '%';
                }
                field(Basic; rec.Basic) { }
                field("Fixed Assets"; rec."Fixed Assets") { }
            }
        }
        area(Factboxes)
        { }
    }
}