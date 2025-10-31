{{/* Common labels */}}
{{- define "service-data.labels" -}}
helm.sh/chart: {{ include "service-data.chart" . }}
{{ include "service-data.selectorLabels" . }}
{{- end -}}

{{- define "service-data.selectorLabels" -}}
app.kubernetes.io/name: {{ include "service-data.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "service-data.name" -}}
{{- printf "%s" .Chart.Name -}}
{{- end -}}

{{- define "service-data.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}