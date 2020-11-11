class profile::ssh_Server {
        package { 'openssh-server':
                ensure => present,
        }
        service { 'sshd':
                ensure => 'running',
                enable => 'true',
        }
        ssh_authorized_key { 'root@master.puppet.vm':
                ensure => present,
                user   => 'root',
                type   => 'ssh-rsa',
                key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDB4ffaQ5cfz+BMRAvLDyjGnZcp0u7tJmGLTWOuMAfb9JgHNtRSK/Gu9C1DbRVvHlRNGnjJZFuzYW366aPK5hRnh70dOpjSxAH8LZPtpOEEa6iaz/v/SkmC2QP3+uMaRE4C3OoaOZftkOC6ML72KNZnR4N0z1NB34IMyCIAgtw1XkG4gehGzL3RLBy6s5PNQo3Va/1jeBX455c6U+fc3d4dFLTsB2nXAzuxs03oOtlYZSCpeNjhY7t8+7ZIzAiSTTIamhS1whUoRiBjyCS45gDXxnrICrIIO1SzzB8yNR6PbKumqGlx+D6YzRW0hTSFoLplaXVozesS3JCR8vk/9Sw5',
        }
}
