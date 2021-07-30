# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
salt = BCrypt::Engine::generate_salt
# => "$2a$12$XJvo8txP6voL6LhmenBNRO" 
password_digest = BCrypt::Engine::hash_secret('abc123', salt)
# => "$2a$12$XJvo8txP6voL6LhmenBNROKKsMWG8jrCMXrXLWTJMxgfxdST3U0bO"

eric = User.create(username: 'EricK@gmail.com', password_digest: password_digest)


# sue = User.create(username: 'SueK@gmail.com' ,password_digest: password_digest)

article1 = Article.create(title: '7 things people who are good with money never buy', author:'Business Insider' , url: 'https://medium.com/business-insider/7-things-people-who-are-good-with-money-never-buy-70cfff912729', time: 5, 
# image: 'https://miro.medium.com/max/4000/1*nHpvjwQWYQ36g-NTn9o6AQ.jpeg',
# description: 'People who are good with money look for quality over quantity, and don’t make purchases that will derail their money goals later.' ,
content: 'People who are good with money look for quality over quantity, and don’t make purchases that will derail their money goals later.

You don’t have to be wealthy to be good with money.
However, a lot of wealthy people are good with money — and it’s how they got to be that way. Millionaires often aren’t living the lifestyle you might think they are. Instead, they’re frugal, and tend to spend only what they can afford. They’re always looking for ways to make their money grow, rather than spend it.
Millionaires or not, there are some purchases that just don’t make sense to anyone who’s good with money. Here are the top seven things they aren’t likely to buy or spend on.
1. They’re not buying brand-new cars
“The person who actually has several hundred thousand in the bank or may even be a millionaire is going to drive a five-year-old car or a 10-year-old car,” says personal finance expert and author Lynnette Khalfani-Cox.
A new car loses 10% of its value in the first month and 20% of its value in the first year, Insider contributor Steven John reports. Someone who’s good with money won’t want to take on that kind of loss.
Those who are good with money know that the best value comes from buying used and that by keeping the same car for a while, they can save a lot.
2. And they’re not leasing new cars, either
When it comes to leasing, Khalfani-Cox says that someone who’s good with money will most likely turn the other way. “They’re not going to say, ‘Oh, let me lease this $50,000 car, and then next year let me lease another one,’” she says.
Leases will still involve down payments, and though the monthly payment and up-front payments may be lower, you’ll never own anything as you could with a loan. Though a lease may seem like a way to dodge debt in the short term, those who are good with money will see it in a different light.
“If you’re motivated by the lowest long-term cost, buying and keeping your cars longer will make more financial sense,” Alain Nana-Sinkam, the vice president of strategic initiatives at TrueCar, previously told Insider’s Tanza Loudenback.
Those who are good with money are likely to be less caught up in needing the latest and greatest, meaning a lease won’t really be the best option for them.
3. They don’t buy houses they can’t afford
Those who are good with money aren’t looking to spend more than they can afford on a home, and they know that the best piece of real estate is the one they can afford.
Insider contributor Holly Johnson saved aggressively to pay off her home by age 40, and she travels for multiple months of the year by spending frugally and leveraging credit card benefits.
And when it came to buying a house, she and her husband bought a significantly smaller house than they could have to pursue early retirement and living mortgage-free. “Housing affordability calculators have always told us we could spend double, triple, or more than we did on a home,” Johnson wrote. “But we have always ignored them and forged our own path.”
If they’d bought a larger house, “we would have a lot less money to save and invest each month toward early retirement. We would also have to drastically curb our annual travel budget.”
4. They’re not buying things on credit that they can’t pay for
Whether it’s a $2,000 purchase or a $20 purchase, those who are good with money won’t pay interest on their purchases.
Carrying a balance on your credit card means you’ll be charged interest every month, and it won’t be cheap, either — many credit cards will charge interest rates of 25% or more.
Insider writer Elizabeth Aldrich racked up $10,000 worth of debt in her 20s. But, since then, she’s learned from her past and has become good with money, paying it all off in three years and building a $20,000 emergency fund in six months.
As she looked back on the money mistakes that got her into debt, she cites carrying a credit-card balance as one of the biggest issues. “Every month I would run up a balance on my credit card and then pay off what I could by the end of the month,” she wrote. This habit caused her to “spend thousands of dollars on credit card interest in my 20s.”
Now, she never spends money on interest.
5. They’re not buying luxury goods from brand-name designers
Those who are good with money are “less interested in brand names or tags and labels,” says Khalfani-Cox.
As Insider’s Hillary Hoffower reports, “Showing off wealth is no longer the way to signify having wealth. In the US particularly, the top 1% have been spending less on material goods since 2007.”
Instead of material items, many wealthy people these days are opting to spend on privacy, exclusive wellness and fitness routines, and investing in education instead of buying designer items.
6. They’re less likely to load up on material items at all, opting for quality over quantity
Those who are good with money aren’t filling their closets with fast-fashion clothing and buying an abundance of cheap things that will break. Instead, they’d rather put money into items that will last.
“They’re more concerned with quality as opposed to quantity,” Khalfani-Cox says. “I think people who are good with money are often not afraid to go against the grain and to actively unplug from consumerism.”
7. They probably aren’t planning lavish, expensive weddings
Anyone who has planned a wedding knows just how costly they can be. But those who are good with money aren’t planning to spend lots of money on their big day
Nathan Clarke of The Millionaire Dojo used aggressive savings techniques and investments to sock away over $100,000 in savings by age 25, and he has hopes of becoming financially independent and is pursuing his goals of becoming a millionaire.
For him and his now-wife, one of the things that helped them reach $100,000 in savings was a low-cost wedding. They spent just $10,000 on the big day and saved aggressively.
“Really, all we paid for was all the decorations, food, and a little bit for the reception venue,” Clarke wrote. “I don’t understand why people think they have to spend $50,000 on a wedding. I’d rather travel the world for a year with $50,000 than spend it on one day.”
Disclosure: This post is brought to you by the Personal Finance Insider team. We occasionally highlight financial products and services that can help you make smarter decisions with your money. We do not give investment advice or encourage you to adopt a certain investment strategy. What you decide to do with your money is up to you. If you take action based on one of our recommendations, we get a small share of the revenue from our commerce partners. This does not influence whether we feature a financial product or service. We operate independently from our advertising sales team.', category: Category.first)
article2 = Article.create(title: 'How To Make Enough Money to Retire in the Next 5 Years', author: 'Tim Denning', url: 'https://medium.com/the-ascent/how-to-make-enough-money-to-retire-in-the-next-5-years-6a7683ce5a16', time: 6, category: Category.first )
article3 = Article.create(title: 'The Science Behind Entrepreneurial Success', author: 'Eve Arnold', url: 'https://medium.com/swlh/the-science-behind-entrepreneurial-success-55cecbdf9f15', time: 5, category: Category.first)
article4 = Article.create(title: 'How to Protect Your Money from a Bear Market or Recession', author: 'Ben Le Fort', url: 'https://themakingofamillionaire.com/how-to-protect-your-money-from-a-bear-market-or-recession-7824209614e2', time: 6, category: Category.first)
article5 = Article.create(title: 'Top ten Bitcoin holders in the world', author: 'Sajjad Hussain', url: 'https://medium.com/cryptocurrencies-ups-and-down/top-ten-bitcoin-holders-in-the-world-c0c23a3db7b3', time: 3, category: Category.first)
article6 = Article.create(title: '7 signs you’re rich, even if it doesn’t feel like it', author: 'Business Insider', url: 'https://medium.com/business-insider/7-signs-youre-rich-even-if-it-doesn-t-feel-like-it-8f8d33602ce', time: 5, category: Category.first)
article7 = Article.create(title: 'Unpopular Opinion: Your Work Will Never Make You Rich.', author: 'Sylvain Saurel', url: 'https://thepowerofknowledge.xyz/unpopular-opinion-your-work-will-never-make-you-rich-b7024b4d2dca', time: 4, category: Category.first)
article8 = Article.create(title: 'Why I’m Getting Out Of Growth Stocks', author: 'Marc Guberti', url: 'https://medium.datadriveninvestor.com/why-im-getting-out-of-growth-stocks-ebefd6247673', time: 3, category: Category.first)
article9 = Article.create(title: '3 Mental Barriers That Might Be Stopping You Saving More Money', author: 'Sam Dixon Brown', url: 'https://themakingofamillionaire.com/3-mental-barriers-that-might-be-stopping-you-saving-more-money-3bb868fcb9e6', time: 5, category: Category.first)
article10 = Article.create(title: 'My Midlife Money Rules', author: 'Susan Kelley', url: 'https://sekelley.medium.com/my-midlife-money-rules-f3464ec12821', time: 6, category: Category.first)

article11 = Article.create(title: 'The Best Six Movies of the First Half of 2021', author: 'Will Leitch', url: 'https://williamfleitch.medium.com/the-best-six-movies-of-the-first-half-of-2021-c0da15b1282c', time: 5, category: Category.second)
article12 = Article.create(title: 'Film Review — The Forever Purge', author: 'Simon Dillon', url: 'https://medium.com/simon-dillon-cinema/film-review-the-forever-purge-4e076701b6e6', time: 3, category: Category.second)
article13 = Article.create(title: 'The Hidden ‘Black Widow’', author: 'M.G. Siegler', url: 'https://500ish.com/the-hidden-black-widow-5016822a84f4', time: 4, category: Category.second)
article14 = Article.create(title: 'Mickey Rourke — The Human Being in a Monster’s Body', author: 'Akos Peterbencze', url: 'https://medium.com/vulnerable-man/mickey-rourke-the-human-being-in-a-monsters-body-1d4076ff86f2', time: 9, category: Category.second)
article15 = Article.create(title: 'How “Mean Girls” Missed the Focus on the Patriarchy', author: 'Amanda ReCupido', url: 'https://medium.com/the-pink/how-mean-girls-missed-the-focus-on-the-patriarchy-2a18a43e7117', time: 6, category: Category.second)
article16 = Article.create(title: '32 Indie Filmmaking Tips: Pre-Production & Development', author: 'Stage32.com', url: 'https://stage32.medium.com/32-indie-filmmaking-tips-pre-production-development-35bccf5eb62e', time: 10, category: Category.second)
article17 = Article.create(title: 'Important Cyber-Security knowledge for your Media Production', author: 'Konstantin Schraps', url: 'https://konstantinschraps.medium.com/important-cyber-security-knowledge-for-your-media-production-f0130e6c828e', time: 6, category: Category.second)
article18 = Article.create(title: 'Is Netflix Reshaping The Film Industry?', author: 'Mustafa Yarımbaş', url: 'https://medium.com/illumination/is-netflix-reshaping-the-film-industry-18c60d70058b', time: 5, category: Category.second)
article19 = Article.create(title: '5 Lessons The Film Industry Can Teach Us About Branding', author: 'Cynthia Johnson', url: 'https://medium.com/@CynthiaLIVE/5-lessons-the-film-industry-can-teach-us-about-branding-50f79ef76218', time:4, category: Category.second)
article20 = Article.create(title: 'Data Analysis Reveals Film Industry Age Bias & Blindspots', author: 'Team Slated', url: 'https://filmonomics.slated.com/film-careers-through-a-data-prism-infographic-c121e0108186', time:8, category: Category.second)

article21 = Article.create(title: 'Thanks for Nothing', author: 'Sara Benincasa', url:'https://humanparts.medium.com/thanks-for-nothing-5acee5be8b44', time: 18 , category: Category.third)
article22 = Article.create(title: 'The Biggest Reason Why the Okinawan Diet Works', author: 'Kaki Okumura', url:'https://heated.medium.com/the-biggest-reason-why-the-okinawan-diet-works-d1b91773d681', time: 4, category: Category.third)
article23 = Article.create(title: 'I failed at van life. Here are the 11 biggest mistakes I made', author: 'Insider', url:'https://medium.com/insider/i-failed-at-van-life-here-are-11-mistakes-i-made-87d4bc74ed70', time: 6, category: Category.third)
article24 = Article.create(title: 'Read This Before You Fly Anywhere for the Holidays', author: 'Mariana Lenharo', url:'https://elemental.medium.com/read-this-before-you-fly-anywhere-for-the-holidays-cff4b03a1831', time: 7, category: Category.third)
article25 = Article.create(title: 'My summer in Corfu', author: 'Simone Maletta', url:'https://s-maletta-k2.medium.com/my-summer-in-corfu-d1afeaedee5c', time: 12, category: Category.third)
article26 = Article.create(title: 'Top 5 Reasons Thru-hikers Fail to Complete the Trail', author: 'Cody James Howell PhD (Raiden)', url:'https://medium.com/world-travelers-blog/top-5-reasons-thru-hikers-fail-to-complete-the-trail-838953a354a6', time: 6, category: Category.third)
article27 = Article.create(title: '3 Things I Wish I’d Known Before Moving to Mexico', author: 'Tori Nauer', url:'https://medium.com/free-thinkr/3-things-i-wish-id-known-before-moving-to-mexico-924d2aeb8351', time: 4, category: Category.third)
article28 = Article.create(title: '15 foods Americans eat that British people find disgusting', author: 'Insider', url:'https://medium.com/insider/15-foods-americans-eat-that-brits-find-weird-5ca697e1e966', time: 5, category: Category.third)
article29 = Article.create(title: 'Travelers Are Dreaming Bigger Than Ever', author: 'The Guestbook', url:'https://medium.com/@theguestbook/travelers-are-dreaming-bigger-than-ever-cc8f9327c2f4', time: 3, category: Category.third)
article30 = Article.create(title: '5 Things to Avoid While In South Korea', author: 'Belinda Mallasasime', url:'https://medium.com/the-story-in-history/5-things-to-avoid-while-in-south-korea-ab1528f5b0ad', time: 4, category: Category.third)

money = Category.create(name: 'Money')
film = Category.create(name: 'Film')
travel = Category.create(name: 'Travel')
future = Category.create(name: 'Future')
education = Category.create(name: 'Education')
socialMedia = Category.create(name: 'Social Media')
creativity = Category.create(name: 'Creativity')
business = Category.create(name: 'Business')
design = Category.create(name: 'design')
humor = Category.create(name: 'Humor')
technology = Category.create(name: 'Technology')



