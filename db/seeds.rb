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

article1 = Article.create(title: '7 things people who are good with money never buy', author:'Business Insider' , url: 'https://medium.com/business-insider/7-things-people-who-are-good-with-money-never-buy-70cfff912729', time: 5, category: Category.first)
article2 = Article.create(title: 'How To Make Enough Money to Retire in the Next 5 Years', author: 'Tim Denning', url: 'https://medium.com/the-ascent/how-to-make-enough-money-to-retire-in-the-next-5-years-6a7683ce5a16', time: 6, category: Category.first )
article3 = Article.create(title: 'The Science Behind Entrepreneurial Success', author: 'Eve Arnold', url: 'https://medium.com/swlh/the-science-behind-entrepreneurial-success-55cecbdf9f15', time: 5, category: Category.first)
article4 = Article.create(title: 'How to Protect Your Money from a Bear Market or Recession', author: 'Ben Le Fort', url: 'https://themakingofamillionaire.com/how-to-protect-your-money-from-a-bear-market-or-recession-7824209614e2', time: 6, category: Category.first)
article5 = Article.create(title: 'Modern Rules For Handling Income Inequality In Your Relationship', author: 'Sara Knick', url: 'https://saraknick.medium.com/modern-rules-for-handling-income-inequality-in-your-relationship-cd063006a696', time: 3, category: Category.first)
article6 = Article.create(title: 'How To Start Practicing Financial Minimalism — I Now Save Up To 70% Of My Income', author: 'Juliet Collados', url: 'https://themakingofamillionaire.com/how-to-start-practicing-financial-minimalism-i-now-save-up-to-70-of-my-income-5faa955e7463', time: 6, category: Category.first)
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
article19 = Article.create(title: '5 Lessons The Film Industry Can Teach Us About Branding', author: 'Cynthia Johnson', url: 'https://medium.com/@CynthiaLIVE/5-lessons-the-film-industry-can-teach-us-about-branding-50f79ef76218', time: 4, category: Category.second)
article20 = Article.create(title: 'Data Analysis Reveals Film Industry Age Bias & Blindspots', author: 'Team Slated', url: 'https://filmonomics.slated.com/film-careers-through-a-data-prism-infographic-c121e0108186', time: 8, category: Category.second)

money = Category.create(name: 'Money')
film = Category.create(name: 'Film')
future = Category.create(name: 'Future')
education = Category.create(name: 'Education')
socialMedia = Category.create(name: 'Socail Media')
creativity = Category.create(name: 'Creativity')
business = Category.create(name: 'Business')
design = Category.create(name: 'design')
humor = Category.create(name: 'Humor')
technology = Category.create(name: 'Technology')
travel = Category.create(name: 'Travel')


