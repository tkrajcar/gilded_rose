If you want to get cracking on the ruby source then do this:

    git clone git@github.com:tkrajcar/gilded_rose.git


# Hi and welcome to team Gilded Rose.

As you know, we are a small inn with a prime location in a prominent city ran
by a friendly innkeeper named Allison.  We also buy and sell only the finest
goods. Unfortunately, our goods are constantly degrading in quality as they
approach their sell by date.

We have a system in place that updates our inventory for us. It was developed
by a no-nonsense type named Leeroy, who has moved on to new adventures. Your
task is to add the new feature to our system so that we can begin selling a
new category of items.

## System overview

  - All items have a SellIn value which denotes the number of days we have to
    sell the item

  - All items have a Quality value which denotes how valuable the item is

  - At the end of each day our system lowers both values for every item

## A few more details

  - Once the sell by date has passed, Quality degrades twice as fast

  - The Quality of an item is never negative

  - "Aged Brie" actually increases in Quality the older it gets

  - The Quality of an item is never more than 50

  - "Sulfuras", being a legendary item, never has to be sold or decreases in
    Quality

  - "Backstage passes", like aged brie, increases in Quality as it's SellIn
    value approaches; Quality increases by 2 when there are 10 days or less
    and by 3 when there are 5 days or less but Quality drops to 0 after the
    concert

## Your assignment

We have recently signed a supplier of conjured items. This requires an update to
our system that we'd like you to make:

  - "Conjured" items degrade in Quality twice as fast as normal items

Feel free to make any changes to the UpdateQuality method and add any new code
as long as everything still works correctly. However, do not alter the Item
class or Items property as those belong to the goblin in the corner who will
insta-rage and one-shot you as he doesn't believe in shared code ownership
(you can make the UpdateQuality method and Items property static if you like,
we'll cover for you).

Just for clarification, an item can never have its Quality increase above 50,
however "Sulfuras" is a legendary item and as such its Quality is 80 and it
never alters.

## Tests
We have tests, of course! Unfortunately, the goblin wrote them, and he wasn't
happy about it, so he kind of did the minimum job possible to get the boss
off his back. Guard and rspec are set up, at least.

Source: <http://iamnotmyself.com/2011/02/13/refactor-this-the-gilded-rose-kata/>
