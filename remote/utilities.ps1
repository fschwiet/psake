
function verify_powershell_remoting_is_enabled_locally {
    $session = new-pssession -ComputerName localhost
    remove-pssession $session
}

function verify_powershell_is_enabled_on_host {
    param([string] $host = (throw "Required parameter 'host' is missing."));

    $session = new-pssession -ComputerName $host
    remove-pssession $session
}