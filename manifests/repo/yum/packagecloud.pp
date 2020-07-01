# Erlang packagecloud yum repo
class erlang::repo::yum::packagecloud (
  String $ensure  = $erlang::repo_ensure,
  String $baseurl = "https://packagecloud.io/rabbitmq/erlang/el/${$facts['os']['release']['major']}/\$basearch",
  String $gpgkey = 'https://packagecloud.io/rabbitmq/erlang/gpgkey'
) inherits erlang {
  yumrepo { 'erlang-packagecloud':
    ensure        => $ensure,
    baseurl       => $baseurl,
    enabled       => '1',
    gpgcheck      => '0',
    repo_gpgcheck => '1',
    gpgkey        => $gpgkey,
  }
}
