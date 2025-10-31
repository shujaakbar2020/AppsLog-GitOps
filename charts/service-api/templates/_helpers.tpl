{{/* Common labels */}}
{{- define "service-api.labels" -}}
helm.sh/chart: {{ include "service-api.chart" . }}
{{ include "service-api.selectorLabels" . }}
{{- end -}}

{{- define "service-api.selectorLabels" -}}
app.kubernetes.io/name: {{ include "service-api.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "service-api.name" -}}
{{- printf "%s" .Chart.Name -}}
{{- end -}}

{{- define "service-api.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}