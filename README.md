This repo showcases an issue when importing Datadog, where UILabel's rendering is messed up for attributed strings, at least with the baselineOffset attribute.

If you run the DatadogBaselineExpected scheme on a simulator, you'll see that the text content is offset towards the top. And if you run the DatadogBaseline scheme, you'll see that the label is now centered.

The code for both apps is exactly the same, the only difference is that through Cocoapods, the Datadog dependency is only added to the DatadogBaseline target, and is only imported in that context.