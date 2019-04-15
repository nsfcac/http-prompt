Redfish Prompt: A clone of HTTP Prompt
======================================

This is an experimental extension of the http-prompt tool intended to be a playground to add Redfish-specific capabilities (see the [Redfish](https://www.dmtf.org/standards/redfish) pages at [DMTF.org](https://www.dmtf.org/) for more information on Redfish).

## About
**_redfish-prompt_** is a swift and robust tool capable of prompted navigation for communicating with custom API endpoints.
+ An interactive command line tool with auto-complete feature to navigate schema and interrogate an endpoint.  
+ An automated traverser tool for navigating collections in a multi-level schema for a hypermedia API like Redfish.  
+ A promising tool for system mangers and network engineers to reach endpoints and handle critical parameters. 

## Demo

[![Watch the video](https://imgur.com/t4ceGNK.png)](https://www.youtube.com/watch?v=HzfN9qrMNDI)



## Installation:
Clone this repository in your local machine<br/>
`$ git clone https://github.com/nsfcac/redfish-prompt.git`

We recommend having setup [conda](https://github.com/conda/conda) environment to avoid package dependency or permission errors if you are installing it on a system-wide Python. Note that you need sudo access if you are trying to install it system-wide. 

Switch to the cloned directory and run the following commands

`$ cd redfish-prompt/`<br/>
`$ python setup.py install`

This will finish processing dependencies for redfish-prompt 1.0.0.

## Quickstart
`$ redfish-prompt`

This fetches the [Redfish OpenAPI schema](https://redfish.dmtf.org/schemas/openapi.yaml), from the web as a default.

To change URL address, use cd:
`#Relative URL path`<br/>
`$ cd redfish/v1`
