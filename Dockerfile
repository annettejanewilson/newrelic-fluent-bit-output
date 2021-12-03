# newrelic-fluentbit-output:1.12.1 is based on fluent-bit:1.8.1
FROM newrelic/newrelic-fluentbit-output:1.12.1 AS binaries

# We want to use fluent-bit:1.8.10 but keep the New Relic output plugin. So
# we switch to the fluent-bit base image but copy across the extra binary
# and the configuration from the New Relic image.
FROM fluent/fluent-bit:1.8.10

COPY --from=binaries /fluent-bit/bin/out_newrelic.so /fluent-bit/bin/out_newrelic.so
COPY --from=binaries /fluent-bit/etc/*.conf /fluent-bit/etc/
