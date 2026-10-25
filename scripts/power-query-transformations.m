// ===================================================
// POWER QUERY (M) - DYNAMIC DEPARTMENT MAPPING
// ===================================================

let
    Source = SharePoint.Tables("https://yourtenant.sharepoint.com/sites/YourSite", [ApiVersion = 15]),
    Automation_Request_Portal_Table = Source{[Name="Automation_Request_Portal"]}[Data],
    
    // Add Conditional Column to unify 'Other' entries with custom text
    #"Added Department Clean" = Table.AddColumn(
        Automation_Request_Portal_Table, 
        "Department Clean", 
        each if [Department] = "Other" then [OtherDepartment] else [Department], 
        type text
    )
in
    #"Added Department Clean"
