# Docker setup for testing JENKINS-66470

Sharing docker compose setup with which I get a 100% repo of [JENKINS-66470](https://issues.jenkins.io/browse/JENKINS-66470).

### Environment

- MacOS Big Sur 11.5.2
  - Docker version 20.10.8, build 3967b7d
  - Docker Desktop version 3.6.0 (3.6.0.5487)

Start-up:

```
docker compose build --no-cache; docker compose up -d
```

Teardown:

```
docker compose down --volumes --rmi all
```

Happy hunting!
