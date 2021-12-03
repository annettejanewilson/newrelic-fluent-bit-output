# New Relic Fluent Bit Image

A Docker image based on [New Relic's Fluent Bit Image][1] but using a newer
version of the [Fluent Bit base image][2] itself. New Relic's image adds their
output plugin and provides some (broken?) configuration. When they publish an
updated version of their image that include the fluentbit_metrics plugin we
won't need this anymore.

Used in [k8s/charts/mirrored/nri-bundle/charts/newrelic-logging/k8s][3].


[1]: https://github.com/newrelic/newrelic-fluent-bit-output
[2]: https://hub.docker.com/r/fluent/fluent-bit
[3]: https://github.skyscannertools.net/k8s/charts/tree/master/mirrored/nri-bundle/charts/newrelic-logging/k8s
