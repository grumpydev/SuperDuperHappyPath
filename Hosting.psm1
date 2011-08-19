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

function GetHosts {
    { 
        "AspNet",
        "Self",
        "Kayak",
        "Wcf"
    } 
}