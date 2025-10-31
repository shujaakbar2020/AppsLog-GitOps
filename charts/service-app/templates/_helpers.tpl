{{/* Common labels */}}
{{- define "service-app.labels" -}}
helm.sh/chart: {{ include "service-app.chart" . }}
{{ include "service-app.selectorLabels" . }}
{{- end -}}

{{- define "service-app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "service-app.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}

{{- define "service-app.name" -}}
{{- printf "%s" .Chart.Name -}}
{{- end -}}

{{- define "service-app.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{- end -}}