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

function GetViewEngines {
    { 
        "Spark",
        "Razor",
        "NDjango",
        "DotLiquid"
    }
}