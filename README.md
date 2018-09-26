
# cis_benchmark_profiles

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with cis_benchmark_profiles](#setup)
    * [What cis_benchmark_profiles affects](#what-cis_benchmark_profiles-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with cis_benchmark_profiles](#beginning-with-cis_benchmark_profiles)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Development - Guide for contributing to the module](#development)

## Description

This module is intended to implement the benchmark(s) defined by https://www.cisecurity.org/. For more in formation see https://www.cisecurity.org/cis-benchmarks/cis-benchmarks-faq/

The module intends to provided Puppet code for configuration and assurance, with reporting provided by Puppets report mechanism.

Please be aware the CIS Benchmark is very opinionated and structured, but there are already existing modules for implementing several key features as such this module profiles their usage, or will provide messaging when to go use those modules.

This module is furthermore intended to replace https://github.com/abucton/cis_benchmarks.
This module, introduces a better Facter fact usage, Puppet Tasks, and testing at the unit, and acceptance level.


## Setup

### What cis_benchmark_profiles affects **OPTIONAL**



### Setup Requirements **OPTIONAL**

Puppet (duh), please see the dependancies for module requirements.

#### Upgrading from abuxton/cis_benchmarks ###
This module handles Facter facts natively in the majority so you will want to go remove the scripts deployed by the abuxton/cis_benchmarks module.
Otherwise the intention is to be able to simply swap out.

### Beginning with cis_benchmark_profiles

There is no further requirements except to review the CIS benchmarks to understand which benchmarks you wish to apply, and at what level.

## Usage

<TBC>


## Limitations

In the Limitations section, list any incompatibilities, known issues, or other warnings.

## Development

see the CONTRIBUTING.md

## Release Notes/Contributors/Etc. **Optional**

See CHANGELOG.md and CONTRINBUTORS.md
