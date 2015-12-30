# Reblog: How bad are things? #

I was stunned by the blog post [How bad are things?](http://slatestarcodex.com/2015/12/24/how-bad-are-things/) in which a psychiatrist called Scott Alexander wonders about just how bad things are for any given individual, trying to tease apart the biases they face as:

-  a psychiatrist, whose trade is in the “invisible world of really miserable people”
-  a person, who lives within a social bubble and therefore predisposed to knowing people with certain attributes

Scott summarises the feeling of, well, weirdness, on reading a stat about creationism: 

> According to Gallup polls, about 46% of Americans are creationists. Not just in the sense of believing God helped guide evolution. I mean they think evolution is a vile atheist lie and God created humans exactly as they exist right now. That’s half the country.
    
> And I don’t have a single one of those people in my social circle. It’s not because I’m deliberately avoiding them; I’m pretty live-and-let-live politically, I wouldn’t ostracize someone just for some weird beliefs. And yet, even though I probably know about a hundred fifty people, I am pretty confident that not one of them is creationist. Odds of this happening by chance? 1/2^150 = 1/10^45 = approximately the chance of picking a particular atom if you are randomly selecting among all the atoms on Earth.

>  About forty percent of Americans want to ban gay marriage. I think if I really stretch it, maybe ten of my top hundred fifty friends might fall into this group. This is less astronomically unlikely; the odds are a mere one to one hundred quintillion against.

> People like to talk about social bubbles, but that doesn’t even begin to cover one hundred quintillion. The only metaphor that seems really appropriate is a bizarre dark matter parallel universe.

There's a huge gulf between hearing that a percentage of people living in your country are X and applying that percentage to a population sample. In order to bridge this gap, Scott includes a Python script that generates a list of people with some form of “bad thing” that is happening or has happened to them, to convert a statistic in to a relatable form.

I've replicated the script (including the same approximations, issues with exclusivity) as an excuse to code something after a lengthy hiatus, and to explore what happens when you start tweaking probabilities & adding new “maladies” to the list. I also gave the people the [most common names from the US census](http://stackoverflow.com/a/1803635) in order to reinforce that these are supposed to represent people.

This is an example list of 30 people and their statuses, given the set of stats about the US population [listed on the original post](http://slatestarcodex.com/2015/12/24/how-bad-are-things/).

> James has chronic pain, is on probation.
John was physically abused as a child.
Robert is OK.
Michael has chronic pain, is on food stamps.
Mary has dementia.
William is OK.
David is OK.
Richard is OK.
Charles is OK.
Joseph was sexually abused as a child, is an alcoholic.
Thomas is wheelchair-bound, is unemployed.
Patricia is OK.
Christopher is on food stamps, was physically abused as a child.
Linda is unemployed, has been raped, has chronic pain.
Barbara is on food stamps, has chronic pain, was sexually abused as a child.
Daniel was physically abused as a child.
Paul has dementia.
Mark is OK.
Elizabeth is on disability living allowance, has chronic pain, was physically abused as a child.
Donald was physically abused as a child, has chronic pain.
Jennifer was physically abused as a child.
George has schizophrenia, was sexually abused as a child.
Maria was physically abused as a child, was sexually abused as a child.
Kenneth is OK.
Susan is in prison.
Steven is OK.
Edward was physically abused as a child.
Margaret was physically abused as a child.
Brian is OK.
Ronald is clinically depressed, was physically abused as a child.

Like the original author, I was stunned at number of people with a notable “bad thing” in their life. Obviously, not all of the attributes are inherently bad, but are probably better thought of as “states you probably wouldn't wish upon someone”.

I've put the original Python file on GitHub alongside my implementation, in case anyone would like a peek at the code behind it. There are obvious problems with the method:

- it doesn't factor in co-morbidity (I'm guessing this list gets a lot more depressing when five people get every last malady)
- the “exclusive” maladies aren't necessarily all exclusive
- it doesn't factor in gender, or any other property that might be related to their name
- it implies that anyone who doesn't have any of these “maladies” is not OK

If you spot any other errors, or would like to make any suggestions, please let me know.
