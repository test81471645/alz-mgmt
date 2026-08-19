using './main.bicep'

// General Parameters
param parLocations = [
  'swedencentral'
  ''
]
param parEnableTelemetry = true

param platformSecurityConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'alz-v1-security'
  managementGroupParentId: 'alz-v1-platform'
  managementGroupIntermediateRootName: 'alz-v1'
  managementGroupDisplayName: 'Security'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: ['26598c0d-4fad-478d-8761-2b11606a1536']
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 30
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 30
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 30
  waitForConsistencyCounterBeforePolicyAssignments: 30
  waitForConsistencyCounterBeforeRoleAssignments: 30
  waitForConsistencyCounterBeforeSubPlacement: 30
}

// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
  // No policy assignments in platform-security currently
}
