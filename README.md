
# optimizeimage.sh
Bash script to optimize size of all images in a giver folder. 

[![Software License][ico-license]](LICENSE.md)

Table of Contents
=================

  * [optimizeimage.sh](#optimizeimage.sh)
  * [Table of Contents](#table-of-contents)
  * [Prerequisites](#prerequisites)
  * [Install](#install)
  * [Usage](#usage)
  * [Example](#example)
  * [Contributing](#contributing)
  * [Credits](#credits)
  * [About Padosoft](#about-padosoft)
  * [License](#license)

# Prerequisites

bash

# Install

This package can be installed easy.

``` bash
cd /root/myscript
git clone https://github.com/padosoft/optimizeimage.sh.git
cd optimizeimage.sh
chmod +x optimizeimage.sh
```


If you want to run programmatically, add it to cronjobs manually or execute install script:

``` bash
cd /root/myscript/optimizeimage.sh
chmod +x install.sh
bash install.sh
```


# Usage
``` bash
bash optimizeimage.sh [folder]
```

## Example 1: optimize all images in current folder
``` bash
bash optimizeimage.sh
```
## Example 2: optimize all images in a given folder
``` bash
bash optimizeimage.sh /var/www/vhost/mydomain/images/
```

# Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) and [CONDUCT](CONDUCT.md) for details.


# Credits

- [Lorenzo Padovani](https://github.com/lopadova)
- [Padosoft](https://github.com/padosoft)
- [All Contributors](../../contributors)

# About Padosoft
Padosoft is a software house based in Florence, Italy. Specialized in E-commerce and web sites.

# License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.

[ico-license]: https://img.shields.io/badge/License-GPL%20v3-blue.svg?style=flat-square
