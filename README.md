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

I would have also liked to link it to a cloudwatch account or some other input source. Grafana is also not connected to any data sources.

There are unresolved errors about being unauthorized that I was unable to fix. A login is able to be made but when trying to do anything in the UI the unauthorized message is persistent. It may be related to an unset config variable. This could be fixed by making use of the Amazon secrets store to configure many of the `GF_` docker variables that haven't been set. I didn't want to make that a requirement of running the demo so I opted to leave it as is. Future consideration would be made for a secrets store or an included secrets file.

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.15.5 |

