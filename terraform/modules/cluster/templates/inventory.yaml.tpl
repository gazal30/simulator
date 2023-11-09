---
all:
  children:
    ungrouped:
%{ for group in keys(ansible_inventory_instances) ~}
    ${group}:
%{ endfor ~}
ungrouped:
  hosts:
    bastion:
%{ for group in keys(ansible_inventory_instances) ~}
${group}:
  hosts:
%{ for host in ansible_inventory_instances[group] ~}
    ${host}:
%{ endfor ~}
%{ endfor ~}
