# ansible-repo

mkdir inventory playbooks roles scripts
touch ./{inventory,playbooks,roles,scripts}/main.yml

mkdir -p roles/common/{defaults,tasks,handlers,templates,files,vars,meta}
touch roles/common/{defaults,tasks,handlers,templates,files,vars,meta}/main.yml
