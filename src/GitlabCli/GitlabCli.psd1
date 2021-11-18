@{

    # Script module or binary module file associated with this manifest.
    # RootModule = ''
    
    # Version number of this module.
    ModuleVersion = '1.22.2'
    
    # Supported PSEditions
    # CompatiblePSEditions = @()
    
    # ID used to uniquely identify this module
    GUID = '220fdbee-bea7-4951-9375-f6e76bd981b4'
    
    # Author of this module
    Author = 'Chris Peterson'
    
    # Company or vendor of this module
    CompanyName = 'Chris Peterson'
    
    # Copyright statement for this module
    Copyright = '(c) 2021'
    
    # Description of the functionality provided by this module
    Description = 'Interact with GitLab via PowerShell'
    
    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '7.1'
    
    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''
    
    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''
    
    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''
    
    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = '4.0'
    
    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''
    
    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()
    
    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()
    
    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    ScriptsToProcess = @('_Init.ps1')
    
    # Type files (.ps1xml) to be loaded when importing this module
    TypesToProcess = @('Types.ps1xml')

    # Format files (.ps1xml) to be loaded when importing this module
    FormatsToProcess = @('Formats.ps1xml')
    
    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules = @(
        'Branches.psm1'
        'Config.psm1'
        'Deployments.psm1'
        'Environments.psm1'
        'Git.psm1'
        'Groups.psm1'
        'Issues.psm1'
        'Jobs.psm1'
        'MergeRequests.psm1'
        'Pipelines.psm1'
        'Projects.psm1'
        'RepositoryFiles.psm1'
        'Search.psm1'
        'Users.psm1'
        'Utilities.psm1'
        'Variables.psm1'
    )
    
    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport = @(
        # Git
        'Get-LocalGitContext'

        # Branches
        'Get-GitlabBranch'
        'Get-GitlabProtectedBranches'
        'Protect-GitlabBranch'
        'UnProtect-GitlabBranch'

        # Configuration
        'Get-GitlabConfiguration'
        'Add-GitlabSite'
        'Remove-GitlabSite'
        'Get-DefaultGitlabSite'
        'Set-DefaultGitlabSite'
        
        # Groups
        'Get-GitlabGroup'
        'New-GitlabGroup'
        'Remove-GitlabGroup'
        'Copy-GitlabGroupToLocalFileSystem'
        'Update-LocalGitlabGroup'
        'Get-GitlabGroupVariable'
        'Set-GitlabGroupVariable'
        'Remove-GitlabGroupVariable'

        # Projects
        'Get-GitlabProject'
        'New-GitlabProject'
        'Update-GitlabProject'
        'Move-GitlabProject'
        'Rename-GitlabProject'
        'Copy-GitlabProject'
        'Invoke-GitlabProjectArchival'
        'Get-GitlabProjectVariable'
        'Set-GitlabProjectVariable'
        'Remove-GitlabProjectVariable'

        # Repository Files
        'Get-GitlabRepositoryFileContent'
        'Get-GitlabCiYml'

        # Environments
        'Get-GitlabEnvironment'

        # Deployments
        'Get-GitlabDeployment'

        # Issues
        'Get-GitlabIssues'
        'New-GitlabIssue'
        'Close-GitlabIssue'

        # MergeRequests
        'Get-GitlabMergeRequest'
        'New-GitlabMergeRequest'
        'Set-GitlabMergeRequest'
        'Get-GitlabMergeRequestChangeSummary'
        'Invoke-GitlabMergeRequestReview'
        'Approve-GitlabMergeRequest'
        'Update-GitlabMergeRequest'
        'Close-GitlabMergeRequest'

        # Pipelines
        'Get-GitlabPipeline'
        'Get-GitlabPipelineSchedule'
        'Update-GitlabPipelineSchedule'
        'Get-GitlabPipelineBridges'
        'New-GitlabPipeline'
        'Remove-GitlabPipeline'

        # Jobs
        'Get-GitlabJob'
        'Get-GitlabJobTrace'
        'Start-GitlabJob'

        # Search
        'Search-Gitlab'

        # User
        'Get-GitlabUser'
        'Get-GitlabCurrentUser'
        'Get-GitlabGroupMembership'
        'Add-GitlabUserToGroup'

        # Utilities
        'ConvertTo-PascalCase'
        'New-WrapperObject'
        'ConvertTo-UrlEncoded'
        'Invoke-GitlabApi'
        'Open-InBrowser'

        # Variables
        'Resolve-GitlabVariable'
    )
    
    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport = ''
    
    # Variables to export from this module
    VariablesToExport = ''
    
    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport = @(
        # long form
        'Clone-GitlabGroup'
        'Pull-GitlabGroup'
        'Transfer-GitlabProject'
        'Fork-GitlabProject'
        'Archive-GitlabProject'
        'Review-GitlabMergeRequest'
        'Play-GitlabJob'

        # short form
        'go'
        'build'
        'envs'
        'deploys'
        'pipeline'
        'pipelines'
        'schedule'
        'schedules'
        'job'
        'jobs'
        'trace'
        'issue'
        'issues'
        'mr'
        'mrs'
        'var'
    )
    
    # DSC resources to export from this module
    # DscResourcesToExport = @()
    
    # List of all modules packaged with this module
    # ModuleList = @()
    
    # List of all files packaged with this module
    # FileList = @()
    
    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{
    
        PSData = @{
    
            # Tags applied to this module. These help with module discovery in online galleries.
            # Tags = @()
    
            # A URL to the license for this module.
            LicenseUri = 'https://github.com/chris-peterson/pwsh-gitlab/blob/main/LICENSE'
    
            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/chris-peterson/pwsh-gitlab'
    
            # A URL to an icon representing this module.
            # IconUri = ''
    
            # ReleaseNotes of this module
            ReleaseNotes = 'Support getting repository files or gitlab CI yml'
    
        } # End of PSData hashtable
    
    } # End of PrivateData hashtable
    
    # HelpInfo URI of this module
    # HelpInfoURI = ''
    
    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''

}
