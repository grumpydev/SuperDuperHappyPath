Register-TabExpansion 'SuperDuperHappyPath' @{
    'Hosting' = GetHosts
    
    'ViewEngine' = GetViewEngines
    
    'Database' = GetDatabases
}