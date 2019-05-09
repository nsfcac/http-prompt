Redfish Prompt: A clone of HTTP Prompt
======================================

This is an experimental extension of the http-prompt tool intended to be a playground to add Redfish-specific capabilities (see the [Redfish](https://www.dmtf.org/standards/redfish) pages at [DMTF.org](https://www.dmtf.org/) for more information on Redfish).

## About
**_redfish-prompt_** is a swift and robust tool capable of prompted navigation for communicating with custom API endpoints.
+ An interactive command line tool with auto-complete feature to navigate schema and interrogate an endpoint.  
+ An automated traverser tool for navigating collections in a multi-level schema for a hypermedia API like Redfish.  
+ A promising tool for system mangers and network engineers to reach endpoints and handle critical parameters. 

## Demo

[![Watch the video](http-prompt.gif)](http-prompt.gif)



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

To change URL address, use cd:<br/>
`#Relative URL path`<br/>
`$ cd redfish/v1`

One can now see auto completion option enabled with redfish-prompt. 

## Testing
The functionality of the tool can be tested by running a Mockup server. 
[redfishMockupCreator](https://github.com/DMTF/Redfish-Mockup-Creator) is a python34 program that builds a redfish Mockup folder structure from a real live Redfish service. This folder structure can then be mounted under the [redfishMockupServer](https://github.com/DMTF/Redfish-Mockup-Server) tool. Once the Redfish Mockup server is running on the localhost we can launch redfish-prompt.

`$ redfish-prompt localhost:8000/redfish/v1`<br/>
`$ redfish-prompt localhost:8000/redfish/v1 --spec = openapi-combined.yaml`<br/>
`$ redfish-prompt localhost:8000/redfish/v1 --spec = openapi-combined.json`

## Notes
To combine multiple Swagger schemas into one dereferenced schema use [Swagger Combine](https://github.com/maxdome/swagger-combine) installation.
A general form of dereferencing with swagger-combine is<br/> 
`$ swagger-combine –o <output_filename> -f <format of output_file> <input_filename>`<br/>

For instance, dereferencing Redfish's openapi.yaml file into combined YAML and JSON formats<br/> 
`$ swagger-combine –o openapi-combined.yaml –f yaml openapi.yaml`<br/> 
`$ swagger-combine –o openapi-combined.json –f yaml openapi.yaml`

