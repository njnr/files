var path = require('path');
var webpack = require('webpack');

module.exports={
    entry: {
        app:path.join(__dirname, 'src'),
        vendors: ['react', 'reflux', 'react-mixin']
    },
    output: {
        path: path.join(__dirname, 'dist'),
        filename: '[name].js'
    },

    module:{
        rules: [{
            test: /\.(js|jsx)$/,
            use: 'babel-loader',
        },
        {
            test: /\.(scss|css)$/,
            use: [{
                loader: "style-loader" // creates style nodes from JS strings
            }, {
                loader: "css-loader" // translates CSS into CommonJS
            }, {
                loader: "sass-loader" // compiles Sass to CSS
            }]
        },

        {
            test: /\.woff$/,
            loader: 'url-loader?mimetype=application/font-woff&name=[name].[ext]'
        },
        {
            test: /\.woff2$/,
            loader: 'url-loader?mimetype=application/font-woff2&name=[name].[ext]'
        },
        {
            test: /\.[ot]tf$/,
            loader: 'url-loader?mimetype=application/octet-stream&name=[name].[ext]'
        },
        ]
    },
    plugins: [
        // kills the compilation upon an error.
        // this keeps the outputed bundle **always** valid
        new webpack.NoErrorsPlugin(),
        //这个使用uglifyJs压缩你的js代码
        //new webpack.optimize.UglifyJsPlugin({minimize: true}),
        new webpack.optimize.CommonsChunkPlugin('vendors', 'vendors.js')
    ]

};

