---
title       : BMI Index Caculation
subtitle    : and Implementation in Shiny
author      : KS
job         : Data Sci
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, shiny, interactive]            
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## The BMI Index and Formula

1. The BMI stands for body mass index.
2. It is a measure of relative weight based on an individual's mass and height.
3. Its mathematical formula is: $$\frac{Weight}{Height^2}\times{703}$$
4. If your BMI <= 18.5, you are underweight; if your BMI >= 25, you are overweight; if your BMI is in between, you are normal. 

---
## Example 1
Let is compute two BMI Cases in R.
Case 1: weight is 170, height is 72 inches


```r
weight <-170
height <- 72
BMI <- 703*weight/(height^2)
print(sprintf("Your BMI is: %.2f", BMI))
```

```
## [1] "Your BMI is: 23.05"
```


---
## Example 2
Case 2: weight is 270, height is 72 inches


```r
weight <-270
height <- 72
BMI <- 703*weight/(height^2)
if (BMI > 25) {
    print(sprintf("Your BMI is: %.2f", BMI))
    print("You are overweight!")
    
}
```

```
## [1] "Your BMI is: 36.61"
## [1] "You are overweight!"
```


--- &interactive

## Implemented in Shiny
The following is the actual interactive application in shiny.
<div class="row-fluid">
  <div class="container-fluid">
    <div class="row-fluid">
      <h3>BMI Caculator</h3>
    </div>
    <div class="row-fluid">
      <div class="span4">
        <form class="well">
          <label for="Weight">Weight in lbs</label>
          <input id="Weight" type="number" value="150" min="20" max="500" step="5"/>
          <label for="Height">Height in inch</label>
          <input id="Height" type="number" value="70" min="5" max="100" step="1"/>
          <div>
            <button type="submit" class="btn btn-primary">Submit</button>
          </div>
        </form>
      </div>
      <div class="span8">
        <h2>                   </h2>
        <h2>                   </h2>
        <h3>Results of Your BMI</h3>
        <h5>Your Weight entered in Pounds:</h5>
        <pre id="WeightValue" class="shiny-text-output"></pre>
        <h5>Your Height entered in Inches:</h5>
        <pre id="HeightValue" class="shiny-text-output"></pre>
        <h5>Your BMI is:</h5>
        <pre id="BMI" class="shiny-text-output"></pre>
        <h5>Your BMI category is:</h5>
        <pre id="BMI_message" class="shiny-text-output"></pre>
      </div>
    </div>
  </div>
</div>
-----



