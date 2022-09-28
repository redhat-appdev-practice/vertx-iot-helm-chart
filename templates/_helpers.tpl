
# Compute the rolling update values for maxSurge/maxUnavailable by dividing 100%/numReplicas and rounding up
# to the nearest whole percent.
{{- define "vertx.iot.demo.rollingUpdatePercent" }}
{{- printf " " }}{{- div (printf "%d.%02d" (div 100 .Values.replicas) (mod 100 .Values.replicas) | float64 | ceil) 1 }}{{- printf "%%" }}
{{- end }}