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

    DoNancy
    
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

Export-ModuleMember SuperDuperHappyPath