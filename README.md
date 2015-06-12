# Build resources
This is an extension you can use to copy all your resource files into your `bin/classes` directory (you can modify these path). This is useful if you want to use npm as your [build tool](http://blog.keithcirkel.co.uk/how-to-use-npm-as-a-build-tool/), e.g. to build your Java applications.

## General usage
You can create the following config parameters if you want to. Below you see the default values. The resource files are all files that don't have an extension listed in `resources_exclude`. The parameter `resources_dest` is appended to the `bin` parameter, e.g. `bin/classes` for the example below.

```
"config": {
    "src": "src",
    "bin": "bin",
    "resources_exclude": "java|class",
    "resources_dest": "classes"
}
```

Then the only thing you have to do is creating a scripts part in your `package.json` in order to copy all the resource files to your bin/classes directory:

```
"devDependencies": {
    "build-resources": "^1.0.0"
},
"scripts": {
    "build:resources": "build-resources"
  }
```

Now you can run the build command using a simple `npm run build:resources`.
