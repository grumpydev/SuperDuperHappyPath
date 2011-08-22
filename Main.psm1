function SuperDuperHappyPath {
    Param($Hosting,$ViewEngine,$Database)

    if($input)
    {
        foreach($val in $input)
        {
            "Hosting: {0}" -f $val
            "ViewEngine: {0}" -f $args[0]
            "Database: {0}" -f $args[1]
        }
    }
    else
    {
        "Hosting: {0}" -f $Hosting
        "ViewEngine: {0}" -f $ViewEngine
        "Database : {0}" -f $Database
    }

    Write-Host "All aboard the super-duper-happy-path!"

    if($Hosting)
    {
        DoHosting $Hosting
    }
      
    if($ViewEngine)
    {
        DoViewEngine $ViewEngine
    }
    
    if($Database)
    {
        DoDatabase $Database
    }
    
    Write-Host "Done"
}

function DoHosting {
    Param($Hosting)
    
    switch ($Hosting)
    {
        "AspNet" { Install-Package Nancy.Hosting.AspNet }
        "Self" { Install-Package Nancy.Hosting.Self }
        "Kayak" { 
            Install-Package Nancy.Hosting.Owin
            Install-Package Gate.Kayak
        }
        "Wcf" { Install-Package Nancy.Hosting.Wcf }
    }
}

function DoViewEngine {
    Param($ViewEngine)
    
    switch ($ViewEngine)
    {
        "Spark" { Install-Package Nancy.ViewEngines.Spark }
        "Razor" { Install-Package Nancy.ViewEngines.Razor }
        "NDJango" { Install-Package Nancy.ViewEngines.NDjango }
        "DotLiquid" { Install-Package Nancy.ViewEngines.DotLiquid }
    }
}

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

Register-TabExpansion 'SuperDuperHappyPath' @{
    'Hosting' = { 
        "AspNet",
        "Self",
        "Kayak",
        "Wcf"
    }
    
    'ViewEngine' = { 
        "Spark",
        "Razor",
        "NDjango",
        "DotLiquid"
    }
    
    'Database' = {
        "SqlServer",
        "Sqlite",
        "SqlCompact40",
        "MySql",
        "Oracle",
        "MongoDB"
    }
}

Export-ModuleMember SuperDuperHappyPath