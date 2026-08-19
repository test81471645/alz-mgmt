using './main-rbac.bicep'

param parPlatformManagementGroupName = 'alz-v1-platform'
param parConnectivityManagementGroupName = 'alz-v1-connectivity'
param parManagementGroupExcludedPolicyAssignments = []
param parEnableTelemetry = true
