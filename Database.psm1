function DoDatabase {
    Param($Database)
    
    switch ($Database)
    {
        "SqlServer" { Install-Package Simple.Data.SqlServer }
        "Sqlite" { Install-Package Simple.Data.Sqlite }
        "SqlCompact40" { Install-Package Simple.Data.SqlCompact40 }
        "MySql" { Install-Package Simple.Data.MySql }
        "Oracle" { Install-Package  Simple.Data.Oracle }
        "MongoDB" { Install-Package  Simple.Data.MongoDB }
    }
}

function GetDatabases {
    {
        "SqlServer",
        "Sqlite",
        "SqlCompact40",
        "MySql",
        "Oracle",
        "MongoDB"
    }
}
