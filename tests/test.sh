#!/bin/sh

export TEST_SECRET='test secret'
export TEST_CONFIG='test config'

export DOLLAR="$";

helm version

if [[ -n "$1" ]]; then
  if [[ ! -f ${1} ]]; then
    echo "that testing file does not exist";
    exit 1;
  fi;

  echo "$(envsubst < "${1}" )" > values.yml;
  echo "running ------------------------------------------------ ${filename}";
  
  trap "rm values.yml; exit 0;" HUP INT QUIT ABRT TERM ERR

  # helm template test ../charts/genero  \
  #   --namespace helmspace \
  #   --values values.yml --validate --debug

  helm upgrade ${1} ../charts/genero  \
    --namespace helmspace \
    --values values.yml \
    --dry-run --install;

  rm values.yml
else
  for filename in *.values.yml; do
    echo "$(envsubst < ${filename} )" > values.yml;
    echo "running ------------------------------------------------ ${filename}";

    trap "rm values.yml; exit 0;" HUP INT QUIT ABRT TERM ERR

    # helm template test ../charts/genero  \
    #   --namespace helmspace \
    #   --values values.yml --validate --debug
    
    helm upgrade ${filename%%.*} ../charts/genero  \
      --namespace helmspace \
      --values values.yml \
      --dry-run --install;

    rm values.yml;
  done;
fi;
