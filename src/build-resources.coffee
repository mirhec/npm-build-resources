cp = require 'copy-dir'
path = require 'path'
env = process.env

src = env.npm_package_config_src ? 'src'
bin = env.npm_package_config_bindir ? 'bin'
resdest = env.npm_package_config_resources_dest ? 'classes'
exclude = env.npm_package_config_resources_exclude ? 'java|class'
excludeArr = exclude.split('|').map (o) -> '.' + o

cp.sync src, path.join(bin, resdest), (_stat, _path, _file) ->
    return path.extname(_path) not in excludeArr
