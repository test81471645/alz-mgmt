using './main.bicep'

// General Parameters
param parLocations = [
  'swedencentral'
  ''
]
param parEnableTelemetry = true

param platformIdentityConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'alz-v1-identity'
  managementGroupParentId: 'alz-v1-platform'
  managementGroupIntermediateRootName: 'alz-v1'
  managementGroupDisplayName: 'Identity'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: ['2ec47c6a-dd4a-43fb-b57e-798f7e4aad84']
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 40
  waitForConsistencyCounterBeforeRoleAssignments: 40
  waitForConsistencyCounterBeforeSubPlacement: 10
}

// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
    // No policy assignments in platform-identity currently
}
