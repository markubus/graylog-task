# Graylog Task

Herewithin you'll find the working solution for the given [task](https://gist.github.com/maxeaubrey/f9786aa889b3ffd9c099ffe7d71a8e10). Feel free to reach out to me with any questions.

I look forward to any input and comments regarding what I've done.

Markus Weisshaar

## Usage

All that is required to get this to run is a `terraform init` and then `terraform apply`

The FQDN of the loadbalancer will come as an output variable. After a minute or so the services will have been provisioned.

The username and password have been unchanged from the default admin/admin

## Improvements

Obviously the default password is a big glaring fault. Also not having SSL enabled would have made this minimally more secure.

Github auth or Google auth is something I would have enabled by default in any normal scenario.

I would have liked to link it to a cloudwatch account or some other input source. Also the grafana is not connected to any data sources.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.15.5 |

