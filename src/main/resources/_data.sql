-- init data

-- User Data
INSERT INTO `T_USER` (username, password, email, activated, date_created, bio, roles) VALUES ('admin', '$2a$10$HiaJpKERbSfcZcuG5vcvlOZDG6Y/5SkDKi9RvKsSK3t3Spl9.7u6u', 'admin@admin.com', 1, '2017-11-02', 'admin bio', 'ADMIN,USER');
INSERT INTO `T_USER` (username, password, email, activated, date_created, bio, roles) VALUES ('user', '$2a$10$Dr2lvPjmjiMuWf3mcMlyQeSbxFHI5LDLudHIB/fK/uygI1pnKk/3m', 'user@user.com', 1, '2017-11-02', 'user bio', 'USER');

-- Category Data
INSERT INTO `T_CATEGORY` (name, weight, display_name, username, date_created) VALUES ('java', 1, 'Java', 'admin', '2024-07-25');
INSERT INTO `T_CATEGORY` (name, weight, display_name, username, date_created) VALUES ('python', 2, 'Python', 'user', '2024-07-25');
INSERT INTO `T_CATEGORY` (name, weight, display_name, username, date_created) VALUES ('job-hunting', 3, 'Careers', 'user', '2024-07-25');

-- Post Data
INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Father of Java Announced That He Is Going To Retired', 
'James Gosling, the creator of Java programming language, has announced his retirement from the technology scene. After a long career as a software engineer, he has decided it is time to have some fun and pursue personal projects.

Let''s give him a warmly blessing.

Thanks for his contribution to Java and the world', 
'2024-07-25 10:13:23', 2, 1);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Introduction to the Python Programming Language', 
'Python, a language known for its straightforward syntax and powerful capabilities, stands as a pillar in the world of programming languages. Created in the late 1980s by Guido van Rossum, Python has evolved from a simple scripting language to one of the most popular programming languages globally. Van Rossum’s vision was to develop a language that emphasized readability, simplicity, and versatility, principles that continue to drive Python’s development today.

From its inception, Python was designed to be enjoyable to use, a philosophy that led to its simple syntax, which is almost akin to reading English. This design decision not only made Python easy for beginners to learn but also allowed experienced programmers to write clear and logical code efficiently. Over the years, Python has undergone numerous enhancements, with each new version bringing in features and updates that have kept it at the forefront of modern programming.

Today, Python’s relevance spans across diverse fields. It’s a staple in web development, serving as the backbone for many web applications and platforms (with the help of frameworks like Django, CherryPy, Grok, Web2Py, and Flask). In the realm of data science, Python’s role is unparalleled, thanks to its extensive libraries and frameworks (such as NumPy, Pattern, Scikit-Learn, Keras, Shogun, and SciPy) that simplify data analysis, visualization, and machine learning tasks. The language has also made significant inroads into machine learning, artificial intelligence, and scientific computing, (among others). Its versatility is further evidenced by the Python Software Foundation’s commitment to fostering its growth and supporting the Python community.', 
'2024-07-25 10:15:25', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Start Your Career Journey with Protech | Protech Global', 
'Looking for exciting career opportunities? Protech has a wide range of job opportunities available for you to explore; from graduates to those with years of ...', 
'2024-07-25 10:18:25', 1, 3);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'JetBrains launches 2024.1 with local AI code completion', 
'JetBrains has released the 2024.1 updates for its IDEs with several major new features, headlined by full-line code autocompletion powered by local AI models.

The new full-line code completion functionality ensures code suggestions are processed entirely on the user’s device, minimising latency and providing a seamless offline experience.

“We’ve developed models that run directly on your device, and the IDE verifies each suggestion,” explained Mikhail Kostyukov, Product Manager in JetBrains Machine Learning Team. “This approach delivers the best user experience and ensures that the generated code never contains non-existent variables or methods.”', 
'2024-07-25 10:20:25', 2, 1);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Newspaper: Article scraping & curation (Python)', 
'Newspaper is a Python module used for extracting and parsing newspaper articles. Newspaper use advance algorithms with web scraping to extract all the useful text from a website. It works amazingly well on online newspapers websites. Since it use web scraping too many request to a newspaper website may lead to blocking, so use it accordingly.', 
'2024-07-25 10:22:20', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Oracle Java Technologies', 
'Java is powering the innovation behind our digital world. Harness this potential with Java resources for student coders, hobbyists, developers, and IT leaders.', 
'2024-07-25 10:27:28', 1, 1);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Python skills ‘increasingly essential’ to dev teams venturing into advanced AI', 
'Python’s status as the primary language for AI and machine learning projects, from its extensive data-handling capabilities to its flexibility and portability, is well-founded. Just how well-founded can be seen in new user data from Snowflake.

The cloud data provider reported that, year on year, use of Python grew 571% in Snowpark, Snowflake’s set of libraries which securely deploy and process non-SQL code. In other words, it will not be a surprise to see Python, Scala and Java at the top of this list, but the numbers are what makes it interesting: Scala saw a 387% increase, compared with Java at 131%.

Alongside this, the report noted that usage of the most popular AI/ML open source Python libraries in Snowpark has increased by 335%. Scikit-learn saw a 474% uptick, while XGBoost, focused on gradient boosting, saw an increase of 357%.', 
'2024-07-25 10:24:33', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Welcome to Python.org', 
'The Python Software Foundation welcomes grant proposals for projects related to the development of Python, Python-related technology, and educational resources.', 
'2024-07-25 10:26:33', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Careers at Shell', 
'Power your progress.
You can be a part of the future of energy. Together at Shell, we are transitioning to net-zero emissions while providing the energy that people around the world need today.

Working with experienced colleagues on these important challenges, you’ll have the opportunity to develop the skills you need to grow, in an environment where we value honesty, integrity and respect for one another.', 
'2024-07-25 10:28:33', 2, 3);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Python for complete beginners.', 
'Learn the Python programming language from scratch. This series is designed for complete beginners and will walk you through the python programming language. Absolutely no experience required. I explain everything in depth and give effective examples to help you understand. It is recommenced that you type along with me and try to create your own programs as you follow along.', 
'2024-07-25 10:30:32', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Google Careers: Create Design Code Build for everyone', 
'Together, we create access to information and build products for everyone. Want to be a Googler? Find your team.

Engineering & Tech

Develop the products and tools of the future for billions of users.', 
'2024-07-25 10:33:32', 1, 3);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Python: What You’ll Learn', 
'You will learn and understand the following after this tutorial:

All of the topics in the menu bar –>
Fundamental Programming Skills
The basis of the Python programming language', 
'2024-07-25 10:30:32', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'What is Java technology and why do I need it?', 
'Java is a programming language and computing platform first released by Sun Microsystems in 1995. It has evolved from humble beginnings to power a large share of today’s digital world, by providing the reliable platform upon which many services and applications are built. New, innovative products and digital services designed for the future continue to rely on Java, as well.

While most modern Java applications combine the Java runtime and application together, there are still many applications and even some websites that will not function unless you have a desktop Java installed. Java.com, this website, is intended for consumers who may still require Java for their desktop applications – specifically applications targeting Java 8. Developers as well as users that would like to learn Java programming should visit the dev.java website instead and business users should visit oracle.com/java for more information.', 
'2024-07-25 10:33:33', 1, 1);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'What is Python? Everything You Need to Know', 
'Python is a general-purpose coding language—which means that, unlike HTML, CSS, and JavaScript, it can be used for other types of programming and software ...', 
'2024-07-25 10:35:20', 2, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Tech 101: What Is Python?', 
'Meet python, the “cool kid” of coding languages! In this blog post we’ll explain what python is all about, what makes it so Popular, and our top 13 reasons why you should learn it.


If you’re looking to pivot to a career in web or software development (always a savvy way to break into tech), you can’t go wrong learning the foundational trio of HTML, CSS, and JavaScript. But to REALLY stand out in a crowded field of applicants, you’ll eventually need to add additional programming languages to your toolkit.

That’s where things can get tricky because there are SO MANY coding languages out there. How can you know which ones are worth learning? No, it’s not time to pick a name out of a hat—it’s about figuring out which programming language will give you the highest return on investment.', 
'2024-07-25 10:36:28', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'UN Careers', 
'We in the United Nations are committed to a diverse and inclusive workforce that is representative of all the peoples we serve. · Become part of a workforce of ...', 
'2024-07-25 10:37:20', 1, 3);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Explore Python courses', 
'In this course, you will master Python sets. You''ll learn how to create, manipulate, and perform operations on sets through comprehensive lessons and practical ...', 
'2024-07-25 10:38:27', 2, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Python Fundamentals', 
'In this course you will learn the fundamentals of Python programming language, with practice and real coding integrated in each step. Happy Coding!', 
'2024-07-25 10:39:53', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'What Is Python Used For? A Beginner’s Guide', 
'Python has become one of the most popular programming languages in the world in recent years. It''s used in everything from machine learning to building websites and software testing. It can be used by developers and non-developers alike.

[Featured image] A software developer coding in Python on her laptop.
Python, one of the most popular programming languages in the world, has created everything from Netflix’s recommendation algorithm to the software that controls self-driving cars. Python is a general-purpose language, which means it’s designed to be used in a range of applications, including data science, software and web development, automation, and generally getting stuff done.

Let’s take a closer look at what Python is, what it can do, and how you can start learning it.', 
'2024-07-25 10:40:25', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Is Java free to download?', 
'Yes, Java is free to download for personal use.
Java is also free for development: developers can find all the development kits and other useful tools at
https://www.oracle.com/javadownload/.', 
'2024-07-25 10:41:27', 2, 1);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Latest Trends And Technologies In Python Web ...', 
'2023年10月20日 — Python developers have access to a wide range of tools, from GraphQL and serverless architecture to machine learning integration and Progressive ...', 
'2024-07-25 10:42:17', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Introduction To Python Programming Language', 
'Why Use Python?

There are innumerable reasons to use Python- A few of which are as follows:

 . It is a programming language with a wide range of applications.
 . It has a lot of processing power.
 . The syntax is straightforward to comprehend.
 . It''s a free and open-source program.
 . It is employed by today''s large organizations (Facebook, Netflix, Google).
 . Ability to use dependencies (packages/libraries) for functionality.
 . It''s widely used in a range of fields (Machine Learning, Data Science, Robotics and Automation).
 . Overall, a good introductory programming language for getting started in the programming world.', 
'2024-07-25 10:44:28', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Careers: Discover opportunities | HSBC Holdings ...', 
'Opportunities in Commercial Banking
Commercial Banking offers a variety of roles for people interested in helping businesses to succeed. We have a particular focus on companies that aspire to grow internationally and use our global connections and expertise to spot trends in world trade and identify opportunities for our customers. So we typically look for people with an international mindset, who are curious about how business works in different markets and who can build long-term relationships with our customers.

Students and recent graduates with any degree. and from any background, are encouraged to explore our Global Internships and Graduate Programmes.

We divide our customers into three groups: business banking (for small businesses), mid-market companies and large corporates. We offer roles including general management and strategy, business development, analysis, support and administration.', 
'2024-07-25 10:46:48', 1, 3);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'What will I get when I download Java software from java.com?', 
'The Java Runtime Environment (JRE) version 8 is what you get when you download Java software from java.com.

The JRE consists of the Java Virtual Machine (JVM), Java platform core classes, and supporting Java platform libraries. The JRE is the runtime portion of Java software, which is all you need to run Java WebStart applications from a supported web browser. It doesn’t come with development tools, though – these tools are part of the Java Development Kit (JDK).', 
'2024-07-25 10:46:20', 1, 1);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Python - Google Tech Dev Guide', 
'Repl.it is a free online website where you can write and run code for almost any programming language. Repl.it is a great place for you to practice the coding ...', 
'2024-07-25 10:47:17', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Teaching Teachers Tech: Computing with Python', 
'Teaching programming is easier than you think
BCS has helped millions of people gain the skills and confidence to use technology in all kinds of work settings.

This flexible Python training course can be completed online and in your own time with online access to dedicated tutors who will support you throughout the programme.

The course covers the programming elements in Computer Science GCSE and goes further, as well as the programming elements in Computer Science IGCSE.', 
'2024-07-25 10:48:27', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Why take our Python training course?', 
'* Improve / develop your knowledge in the programming language of Python

* Learn how to teach and program Python, and enhance your future career

* Minimum of 4 hours per week, on-programme assessment throughout

* Gain valuable CPD hours

* Earn yourself a BCS branded certificate to add to your CV as proof of your programming competence to teach at GCSE Level', 
'2024-07-25 10:50:20', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Working with us at ExxonMobil', 
'WHO WE ARE

ExxonMobil, one of the world’s largest publicly traded energy providers and chemical manufacturers, develops and applies next-generation technologies to help safely and responsibly meet the world’s growing needs for energy and high-quality chemical products.', 
'2024-07-25 10:52:20', 1, 3);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Computing in Python I: Fundamentals and Procedural', 
'This course starts from the beginning, covering the basics of how a computer interprets lines of code; how to write programs, evaluate their output, and revise the code itself; how to work with variables and their changing values; and how to use mathematical, Boolean, and relational operators.

By the end of this course, you''ll be able to write small programs in Python that use variables, mathematical operators, and logical operators. For example, you could write programs that carry out complex mathematical operations, like calculating the interest rate necessary to reach a savings goal, recommending apparel options based on weather patterns, or calculating a grade based on multiple percentages.', 
'2024-07-25 10:52:21', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'What is Java Plug-in software?', 
'The Java Plug-in software is a component of the Java Runtime Environment (JRE). The JRE allows some applications written in the Java programming language to launch via some browsers. The Java Plug-in software is not a standalone program and cannot be installed separately.', 
'2024-07-25 10:54:21', 1, 1);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Python Camp: Intro to Coding & AI', 
'Students start with logic games and Python—the fastest-growing programming language available—then move into object-oriented concepts.
US$1,149.00', 
'2024-07-25 10:55:20', 2, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Python Camp Format', 
'This Python camp is part of a weeklong summer course running Monday through Friday. Learning sessions will be held in a lab on an inspiring university campus. Your child will be placed within a small group and guided by an experienced instructor. Daily schedules are balanced and allow for outdoor and recreational activities. Day and overnight options are available based on location.', 
'2024-07-25 10:56:26', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'I have heard the terms Java Virtual Machine and JVM. Is this Java software?', 
'The Java Virtual Machine is only one part of Java software that is involved in running an application. The Java Virtual Machine is built right into your Java software download, part of the JRE and helps run Java applications.', 
'2024-07-25 10:57:20', 1, 1);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Industry Leading Python Developers', 
'Agile Python Development to Accelerate Your Project

Python Data Analysis and Visualization
Python API Development and Integration
Python Application Development
Python Web Development
Python Machine Learning and AI Development
Python Scripting & Automation', 
'2024-07-25 10:59:20', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Python Machine Learning and AI Development', 
'Our seasoned Python developers leverage algorithms and AI to unlock the true potential of your data, enabling you to make accurate predictions, automate processes, and gain valuable insights.

Machine Learning Model Development
Natural Language Processing (NLP) Applications
Deep Learning and Neural Networks
Python AI Chatbots and Virtual Assistants', 
'2024-07-25 11:00:20', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'How do I disable Java in my web browser?', 
'This article applies to:

Platform(s): Oracle Enterprise Linux, Red Hat Linux, SUSE Linux, Solaris SPARC, Solaris x86, Windows 10, Windows 2008 Server, Windows 7, Windows 8, Windows XP, macOS

Browser(s) Chrome, Firefox, Internet Explorer, Safari

Java version(s): 7.0, 8.0', 
'2024-07-25 11:01:21', 1, 1);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Offshore Python Development Center', 
'Benefit from cost-effective solutions, scalability, and streamlined efficiency, while our expert Python developers ensure high-quality applications that cater to your unique requirement..', 
'2024-07-25 11:01:23', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Augmented Python Developers', 
'Boost your development capabilities by integrating our experienced Python developers with your existing team to create innovative applications that drive business growth..', 
'2024-07-25 11:02:23', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'What is Python? Executive Summary', 
'Python is an interpreted, object-oriented, high-level programming language with dynamic semantics. Its high-level built in data structures, combined with dynamic typing and dynamic binding, make it very attractive for Rapid Application Development, as well as for use as a scripting or glue language to connect existing components together. Python''s simple, easy to learn syntax emphasizes readability and therefore reduces the cost of program maintenance. Python supports modules and packages, which encourages program modularity and code reuse. The Python interpreter and the extensive standard library are available in source or binary form without charge for all major platforms, and can be freely distributed.

Often, programmers fall in love with Python because of the increased productivity it provides. Since there is no compilation step, the edit-test-debug cycle is incredibly fast. Debugging Python programs is easy: a bug or bad input will never cause a segmentation fault. Instead, when the interpreter discovers an error, it raises an exception. When the program doesn''t catch the exception, the interpreter prints a stack trace. A source level debugger allows inspection of local and global variables, evaluation of arbitrary expressions, setting breakpoints, stepping through the code a line at a time, and so on. The debugger is written in Python itself, testifying to Python''s introspective power. On the other hand, often the quickest way to debug a program is to add a few print statements to the source: the fast edit-test-debug cycle makes this simple approach very effective.', 
'2024-07-25 11:03:23', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Career paths at ExxonMobil', 
'What kinds of careers are available with an industry leader in energy? With operations spanning the globe, the opportunities are virtually limitless. Our career paths are broad categories of the work we do at ExxonMobil. Each career path encompasses a wide range of jobs and responsibilities. Explore your interests and learn more about the opportunities available within each career path.', 
'2024-07-25 11:04:17', 1, 3);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Python Development Technology', 
'Python is a versatile, high-level programming language known for its simplicity and readability. It supports multiple programming paradigms and is heavily equipped with a rich set of libraries and frameworks, such as Django and Flask for web development, Pandas for data analysis, and PyTorch and TensorFlow for machine learning, making it suitable for a wide array of projects from web applications to data science and artificial intelligence.', 
'2024-07-25 11:06:06', 2, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'What makes Python special?', 
'Python''s syntax is designed to be intuitive and similar to the English language, which enhances productivity and speeds up the development process.

Simplicity and Readability

This efficiency empowers your business to accelerate development cycles and bring solutions to the market faster, enhancing productivity and competitive advantage.

Python''s extensive range of libraries and frameworks simplifies the integration and implementation of various applications across web development, data analysis, machine learning, and automation.', 
'2024-07-25 11:07:07', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Python is their passion', 
'Meet a team that is not only proficient but also passionate about Python. They believe it to be a language of innovation, efficiency, and creativity, and will use all of their skills and experience to craft elegant solutions tailored to your needs. With them, you’re not just hiring developers; you’re partnering with a team who loves Python as much as you love your project.', 
'2024-07-25 11:08:07', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'16 Famous Tech Companies That Use Python In 2024', 
'If you are old enough to remember how time-consuming it was to rip CDs onto your computer’s DVD drive, you will appreciate how much Spotify has simplified music listening. Did you know that Spotify’s web backbone, consisting of multiple interconnected services, heavily relies on Python?

Despite fierce competition, Python, developed in the 1990s, remains one of the most popular programming languages utilized by many industry behemoths. One of the highest-paying software development jobs is that of a Python developer.

Because of its widespread use, Python has been used to construct apps for backend web development by several successful businesses. We know how important and influential Python is in web development because we are one of the top Python web development firms.', 
'2024-07-25 11:09:09', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Disable the Java content in the browser', 
'Internet Explorer
The only way to completely disable Java in Internet Explorer (IE) is to disable Java through the Java Control Panel as noted above.

Chrome

Chrome browser versions 42 and above. Starting with Chrome version 42 (released April 2015), Chrome has disabled the standard way in which browsers support plugins. More info

Firefox
1. From the Firefox menu, select Tools then click the Add-ons option
2. In the Add-ons Manager window, select Plugins
3. Click Java (TM) Platform plugin to select it
4. Click Disable (if the button displays Enable then Java is already disabled)
Safari
1. Choose Safari Preferences
2. Choose the Security option
3. Select Allow Plug-ins then click on Manage Website Settings
4. Click on the Java item, select Block from the pulldown list When visiting other websites
5. Click Done then close the Safari Preferences window', 
'2024-07-25 11:11:11', 1, 1);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Python in Google', 
'Google is a well-known digital company worldwide, well recognized for its involvement in various online services such as Android, Search, Stadia, YouTube, and others.

Google is one of the most well-known tech giants using Python, having used it since its inception and continuing to do so due to its comparatively easy maintenance and simple nature, allowing for rapid deployment in various sectors.

Python is used in the company’s search engines and artificial intelligence (AI), machine learning (ML), and robotics projects. Python is also being used heavily in app participation and support.', 
'2024-07-25 11:12:20', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Python in Netflix', 
'Netflix is an excellent example of a firm that picked Python programming because of the vast ecosystem of tools that keep their system running. The company’s primary source of revenue is subscriptions to its streaming service.

This service offers internet streaming of television shows and films, including in-house productions. One of the dynamic software used by the organization to reinforce the structure’s security, evaluate data reports, and generate alerts is created in Python.

Netflix uses Python to provide machine learning capabilities that examine movies, improve streaming, and extract images to display thumbnails. Python is used throughout the system.', 
'2024-07-25 11:13:20', 2, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Collection MCQ In Java With Answers Explained', 
'Definitely, Collections are the most important for a Java developer. You can''t imagine even a minor project in Java without the use of Collections. Moreover, in order to work in an industry level project, you must have a good grasp on Collections in Java. Apart from going through theoretical concepts multiple times, it is highly advisable that developers need much practice & revision of concepts. One of the ways to achieve this is by attempting FAQs/MCQs on collections. In this article, we will be doing theoretical practice on ‘Java Collections’ in the form of MCQs that are frequently asked in the interviews as well. Definitely, you must find this article 'Collection MCQ in Java with Answers Explained' beneficial whether it is

TAG: MCQS JAVA COLLECTIONS', 
'2024-07-25 11:15:20', 1, 1);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Java Technologies List', 
'Java Technologies List with java tutorial, features, history, variables, object, programs, operators, oops concept, array, string, map, math, methods, ...', 
'2024-07-25 11:15:21', 1, 1);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id) VALUES (
'Learn Python Programming| Practice Python Problems', 
'Dreamt of being a potential programmer ? TechGig helps you reach your goal with the best possible resources and facilities. Variety of projects, knowledge and applications are available literally at a snap of your finger at TechGig.

Explore your options with various languages including Python, which is a robust language and general purpose programming language. Cyber security, machine learning, web applications and gaming are just few of the areas you can master by learning and implementing various programs of Python Language. With the help of TechGig you can become a pro at this language in no time at all and experience new heights of success.

Python has gained immense popularity in the world of programming and therefore if you have been planning to learn Python, don''t procrastinate and get down to learning it right now from TechGig and watch your professional career take on a new dimension.

Article: Discover what makes programming interesting with Python at TechGig', 
'2024-07-25 11:17:21', 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id, comment_count) VALUES (
'Programming works over time and Python is one time investment', 
'Python - one of the major high level programming languages, impacts your future and changes the way you think about programming. Here''s an opportunity offered by TechGig, grab it and make the most of it.

TechGig gives you different levels to test your skills, grow and gain more knowledge and once you master them you can implement and take your first step towards developing. An object oriented type of approach in programming is what makes python feasible.

A framework helps build web applications and Python is one such framework which is efficient and powerful. Five of the best Python frameworks by way of explanation are Pyramid, Django, Flask, Twisted and Bottle.py.

The knowledge provided at TechGig has a practical approach to it and the examples that are illustrated trains you and your approach to the level which is applied in the real world. The major drawbacks of technology communities is that the knowledge is restricted to theories and does not have a practical dimension to it. TechGig has identified that drawback, worked on it and has brought to you a complete different and interesting way of filling the void.

From beginners to experts, TechGig has a unique way of testing your skills and letting you know where you actually stand and what are your areas of improvement. The skill test offered by TechGig is one of the best and efficient ways to examine your knowledge of how much you have really grasped.', 
'2024-07-25 11:17:20', 1, 1, 2);

INSERT INTO `T_POST` (title, body, date_created, user_id, category_id, comment_count) VALUES (
'Mandarin Customer Service Job - Join Our Global Team', 
'Technical requirements

 . A minimum internet speed of 10 Mb/s download,10 Mb/s upload with <120ms latency, internationally.  
 . A minimum of 8 GB RAM  
 . A 64-bit version of Windows 10 or newer, or macOS 10.11 or newer
 . An Intel Core i5-8260U or other with better/similar performance (Has to be 8th Gen Intel or above, if Ryzen, 2nd Gen or above).
 . An integrated Graphics card.
 . A smartphone usable for two-factor authentication that runs at least:

    @ Android 9.0 or newer
    @Apple iOS 15.0 or newer
    
That''s All!!
Good Luck man!!!', 
'2024-07-25 11:20:05', 1, 2, 3);


-- comments data
INSERT INTO `T_COMMENT` (post_id, user_id, body, date_created) VALUES (
30, 1, "Comment1", '2024-07-25 11:21:05');

INSERT INTO `T_COMMENT` (post_id, user_id, body, date_created) VALUES (
30, 2, "Comment2", '2024-07-26 11:20:05');

INSERT INTO `T_COMMENT` (post_id, user_id, body, date_created) VALUES (
30, 2, "Comment3", '2024-07-28 11:20:05');

INSERT INTO `T_COMMENT` (post_id, user_id, body, date_created) VALUES (
31, 1, "Comment51-1", '2024-07-28 11:20:05');

INSERT INTO `T_COMMENT` (post_id, user_id, body, date_created) VALUES (
31, 1, "Comment51-2", '2024-07-30 11:20:05');


-- badge data
INSERT INTO `T_BADGE` (id, name, img_location, date_created) VALUES (
1, "Silver", 'badge/silver.jpg', '2024-07-26 17:51:05');

INSERT INTO `T_BADGE` (id, name, img_location, date_created) VALUES (
2, "Gold", 'badge/gold.jpg', '2024-07-26 17:51:05');

INSERT INTO `T_BADGE` (id, name, img_location, date_created) VALUES (
3, "Platinum", 'badge/platinum.jpg', '2024-07-26 17:51:05');


-- user's badge data
INSERT INTO `T_BADGE_USER` (id, user_id, badge_id, is_valid, expired_date, date_created) VALUES (
1, 3, 1, 0, "2024-12-31", '2024-07-26 18:02:05');

INSERT INTO `T_BADGE_USER` (id, user_id, badge_id, is_valid, expired_date, date_created) VALUES (
2, 3, 2, 0, "2024-12-31", '2024-07-26 18:02:05');

INSERT INTO `T_BADGE_USER` (id, user_id, badge_id, is_valid, expired_date, date_created) VALUES (
3, 3, 3, 1, "2024-12-31", '2024-07-26 18:02:05');
