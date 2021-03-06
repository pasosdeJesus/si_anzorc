const { environment } = require('@rails/webpacker')

const webpack = require('webpack')

environment.plugins.prepend(
    'Provide',
    new webpack.ProvidePlugin({
         $: 'jquery',
          jQuery: 'jquery',
          jquery: 'jquery',
          'window.jquery': 'jquery',
          Popper: ['popper.js', 'default'],
        })
)

environment.loaders.append('expose', {
      test: require.resolve('jquery'),
      use: [
                  { loader: 'expose-loader', options: '$' },
                  { loader: 'expose-loader', options: 'jQuery' },
                ]
})


// Solucion de https://github.com/tannerlinsley/react-table/discussions/2048
// para usar react-table con rails
const nodeModulesLoader = environment.loaders.get('nodeModules');
if (!Array.isArray(nodeModulesLoader.exclude)) {
    nodeModulesLoader.exclude = nodeModulesLoader.exclude == null ? [] : [nodeModulesLoader.exclude];
}

nodeModulesLoader.exclude.push(/react-table/);

module.exports = environment
