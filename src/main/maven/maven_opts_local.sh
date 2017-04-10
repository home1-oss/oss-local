




export DOCKER_REGISTRY="registry.docker.local"

export MAVEN_OPTS="${MAVEN_OPTS} -Dlocal-mvnsite.prefix=dav:http://nexus.local:28081/nexus/repository/mvnsite/"
export MAVEN_OPTS="${MAVEN_OPTS} -Dnexus.local.mirror=http://nexus.local:28081/nexus/repository/maven-public/"
export MAVEN_OPTS="${MAVEN_OPTS} -Dnexus.local.repositories=http://nexus.local:28081/nexus/repository"
export MAVEN_OPTS="${MAVEN_OPTS} -Dlocal-sonar.host.url=http://local-sonarqube:9000"
export MAVEN_OPTS="${MAVEN_OPTS} -Dcheckstyle.config.location=${BUILD_SCRIPT_LOC}/src/main/checkstyle/google_checks_6.19.xml"
export MAVEN_OPTS="${MAVEN_OPTS} -Dpmd.ruleset.location=${BUILD_SCRIPT_LOC}/src/main/pmd/pmd-ruleset-5.3.5.xml"

export MAVEN_OPTS="${MAVEN_OPTS} -Dinfrastructure=${INFRASTRUCTURE}"
export MAVEN_OPTS="${MAVEN_OPTS} -Ddocker.registry=${DOCKER_REGISTRY}"
export MAVEN_OPTS="${MAVEN_OPTS} -Dsite=${BUILD_SITE}"
export MAVEN_OPTS="${MAVEN_OPTS} -Duser.language=zh -Duser.region=CN -Dfile.encoding=UTF-8 -Duser.timezone=Asia/Shanghai"
export MAVEN_OPTS="${MAVEN_OPTS} -Dmaven.test.failure.ignore=${BUILD_TEST_FAILURE_IGNORE}"
export MAVEN_OPTS="${MAVEN_OPTS} -Dfrontend.nodeDownloadRoot=http://nexus.local:28081/nexus/repository/nexus/repository/npm-dist/"
export MAVEN_OPTS="${MAVEN_OPTS} -Dfrontend.npmDownloadRoot=http://nexus.local:28081/nexus/repository/nexus/repository/npm-public/npm/-/"

echo "MAVEN_OPTS: ${MAVEN_OPTS}"
