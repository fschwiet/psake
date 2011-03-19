
function verify_powershell_remoting_is_enabled_locally {
    $session = new-pssession -ComputerName localhost
    remove-pssession $session
}

function verify_powershell_is_enabled_on_server {
    param(
        [string] $server = (throw "Required parameter 'server' is missing, a hostname or IP address should be specified."),
        [PSCredential] $credential = $null);

    $session = new-pssession -ComputerName $server -Credential $credential
    remove-pssession $session
}