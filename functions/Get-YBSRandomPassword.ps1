function Get-YBSRandomPassword {
    [CmdletBinding(DefaultParameterSetName="NumberOfChars")]
    param (
        [Parameter(HelpMessage="Number of characters in returned password.",ParameterSetName="NumberOfChars")]
        [Int]$NumberOfChars = 9
       f 
    )
    
    begin {
        
    }
    
    process {
        return [System.Web.Security.Membership]::GeneratePassword($NumberOfChars, 1)
    }
    
    end {
    }
}