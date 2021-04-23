{
  apiVersion: 'apps/v1',
  kind: 'Deployment',
  metadata: {
    labels: {
      app: 'nginx',
    },
    name: 'nginx',
    namespace: 'default',
  },
  spec: {
    selector: {
      matchLabels: {
        app: 'nginx',
      },
    },
    template: {
      metadata: {
        labels: {
          app: 'nginx',
        },
      },
      spec: {
        containers: [
          {
            image: 'nginx:1.14.2',
            name: 'nginx',
            ports: [
              {
                containerPort: 80,
              },
            ],
          },
        ],
      },
    },
  },
}
