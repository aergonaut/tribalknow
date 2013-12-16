# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

Answer.create([
  { :question_id => nil, :text => nil, :score => 0, :creator_id => nil, :updater_id => nil, :created_at => nil, :updated_at => nil }
])



Question.create([
  { :topic_id => nil, :title => "Silencing Rails schema load", :text => "I've written a multi-tenancy gem for Rails.\r\n\r\nWhen I create a new tenant, I load in the schema.rb file. This works fine, except that each time I do it, I get a deluge of log messages:\r\n\r\n-- create_table(\"users\", {:force=>true})\r\nNOTICE:  CREATE TABLE will create implicit sequence \"users_id_seq\" for serial column \"users.id\"\r\nNOTICE:  CREATE TABLE / PRIMARY KEY will create implicit index \"users_pkey\" for table \"users\"\r\n   -> 0.0102s\r\n-- add_index(\"users\", [\"email\"], {:name=>\"index_users_on_email\", :unique=>true})\r\n   -> 0.0035s\r\n-- add_index(\"users\", [\"reset_password_token\"], {:name=>\"index_users_on_reset_password_token\", :unique=>true})\r\n   -> 0.0040s\r\n\r\nEtc etc... all typical of the loading the schema.rb file. My problem is that it's rather annoying to see this during tests. I really don't care to see this and it muddies up my test output, making it much harder for me to debug and verify tests etc...\r\n\r\nDoes anyone know of a way I can silence this output? I've tried the following in my gem:\r\n\r\nRails.logger.silence{ load(\"\#{Rails.root}/db/seeds.rb\") }\r\n\r\nbut that doesn't change a thing. Does anyone know of a config option or some other way I can silence the output from schema loading?\r\n", :tags => ["rails", "activerecord"], :creator_id => 1, :updater_id => 1, :created_at => "2013-10-05 15:24:21", :updated_at => "2013-10-05 15:24:21" }
])



Tag.create([
  { :name => "unix", :creator_id => nil, :updater_id => nil, :created_at => "2013-10-05 23:27:40", :updated_at => "2013-10-05 23:27:40" },
  { :name => "operating systems", :creator_id => nil, :updater_id => nil, :created_at => "2013-10-05 23:27:40", :updated_at => "2013-10-05 23:27:40" },
  { :name => "rails", :creator_id => nil, :updater_id => nil, :created_at => "2013-10-05 23:27:44", :updated_at => "2013-10-05 23:27:44" },
  { :name => "activerecord", :creator_id => nil, :updater_id => nil, :created_at => "2013-10-05 23:27:44", :updated_at => "2013-10-05 23:27:44" }
])



Topic.create([
  { :parent_topic_id => nil, :name => "unix", :description => "unixy", :tags => [], :content => "Unix (officially trademarked as UNIX, sometimes also written as Unix in small caps) is a multitasking, multi-user computer operating system originally developed in 1969 by a group of AT&T employees at Bell Labs, including Ken Thompson, Dennis Ritchie, Brian Kernighan, Douglas McIlroy, Michael Lesk and Joe Ossanna.[1]\r\n\r\nFirst developed in assembly language, by 1973 it had been almost entirely recoded in C, greatly facilitating its further development and porting to other hardware.\r\n\r\nIn 1974, UNIX was first licensed to an outside institution, the University of Illinois at Urbana Champaign, by Greg Chesson and Donald B. Gillies. Today's Unix system evolution is split into various branches, developed over time by AT&T as well as various commercial vendors, universities (such as University of California, Berkeley's BSD), and non-profit organizations.", :creator_id => 1, :updater_id => 1, :created_at => "2013-07-24 04:15:14", :updated_at => "2013-08-11 03:29:02" },
  { :parent_topic_id => 1, :name => "osx", :description => "", :tags => ["unix", "operating systems"], :content => "OS X /ˌoʊ ɛs ˈtɛn/,[9] previously Mac OS X,[10] is a series of Unix-based graphical interface operating systems developed, marketed, and sold by Apple Inc. It is designed to run exclusively on Mac computers, having been pre-loaded on all Macs since 2002. It was the successor to Mac OS 9, released in 1999, the final release of the \"classic\" Mac OS, which had been Apple's primary operating system since 1984. The first version released was Mac OS X Server 1.0 in 1999, and a desktop version, Mac OS X v10.0 \"Cheetah\" followed on March 24, 2001. Previous releases of OS X were named after big cats; for example, OS X v10.8 was referred to as \"Mountain Lion\". However, with the announcement of OS X Mavericks this was dropped in favor of Californian landmarks.[11]\r\n\r\nOS X, whose X is the Roman numeral for 10 and is a prominent part of its brand identity, is built on technologies developed at NeXT between the second half of the 1980s and Apple's purchase of the company in late 1996. The 'X' is also used to emphasize the relatedness between OS X and UNIX. Versions 10.5 \"Leopard\" running on Intel processors,[3] 10.6 \"Snow Leopard\",[4] 10.7 \"Lion\"[6] and 10.8 \"Mountain Lion\"[5] have obtained UNIX 03 certification. iOS, which runs on the iPhone, iPod Touch,[12] iPad, and the 2nd and 3rd generation Apple TV,[13] shares the Darwin core and many frameworks with OS X. An unnamed variant of v10.4 powered the first generation Apple TV.[14]\r\n\r\nOS X originally ran on PowerPC-based Macs. In 2006, the first Intel Macs had a specialized version of 10.4 \"Tiger\". In 2007, 10.5 \"Leopard\" was the first to run on both PowerPC and Intel Macs with the use of Universal Binaries. 10.6 \"Snow Leopard\" was the first version of OS X to drop support for PowerPC Macs. Mac OS X 10.7 \"Lion\" was the first version of OS X to drop support for 32-bit Intel processors and run exclusively on 64-bit Intel CPUs.\r\n\r\nThe server edition, OS X Server, was architecturally identical to its desktop counterpart, and included tools to facilitate management of workgroups of OS X machines, and to provide network services. Starting with v10.7 \"Lion\", OS X Server is no longer offered as a separate operating system product; instead, the server management tools are available for purchase separately, and are preloaded on the server models of Mac Pro and Mac Mini along with OS X.\r\n\r\nOS X is based upon the Mach kernel. Certain parts from FreeBSD's and NetBSD's implementation of Unix were incorporated in NeXTSTEP, the core of Mac OS X. NeXTSTEP was the graphical, object-oriented, and UNIX-based operating system developed by Steve Jobs' company NeXT after he left Apple in 1985.[15] While Jobs was away from Apple, Apple tried to create a \"next-generation\" OS through the Taligent, Copland and Gershwin projects, with little success.[16]\r\n\r\nEventually, NeXT's OS, then called OPENSTEP, was selected to be the basis for Apple's next OS, and Apple purchased NeXT outright.[17] Steve Jobs returned to Apple as interim CEO, and later became CEO, shepherding the transformation of the programmer-friendly OPENSTEP into a system that would be adopted by Apple's primary market of home users and creative professionals. The project was first known as Rhapsody and was later renamed to Mac OS X.[18]\r\n\r\nMac OS X Server 1.x, was incompatible with software designed for the original Mac OS and had no support for Apple's own IEEE 1394 (FireWire) interface. Mac OS X 10.x included more backward compatibility through Classic and more functionality by introducing the Carbon API as well as FireWire support. As the operating system evolved, it moved away from the legacy Mac OS to an emphasis on new \"digital lifestyle\" applications such as the iLife suite, enhanced business applications (iWork), and integrated home entertainment (the Front Row media center).[19] Each version also included modifications to the general interface, such as the brushed metal appearance added in version 10.3, the non-pinstriped titlebar appearance in version 10.4, and in 10.5 the removal of the previous brushed metal styles in favor of the \"Unified\" gradient window style.[20][21]\r\n\r\nIn 2012, with the release of OS X 10.8, the \"Mac\" prefix was officially dropped in all references to the operating system name within its web site.[22]\r\n\r\nDescription\r\n\r\n \r\n\r\nBox/Mac App Store artwork for OS X. Left to right: Cheetah/Puma (1), Jaguar (2), Panther (3), Tiger (4), Leopard (5), Snow Leopard (6), Lion (7), Mountain Lion (8), Mavericks (9).\r\nOS X is the tenth major version of Apple's operating system for Macintosh computers. Previous Macintosh operating systems were named using Arabic numerals, e.g. Mac OS 8 and Mac OS 9. The letter X in OS X's name refers to the number 10, a Roman numeral. It is therefore correctly pronounced \"ten\" /ˈtɛn/ in this context.[9][23] However, a common mispronunciation is \"X\" /ˈɛks/.[24]\r\n\r\nOS X's core is a POSIX compliant operating system (OS) built on top of the XNU kernel, with standard Unix facilities available from the command line interface. Apple has released this family of software as a free and open source operating system named Darwin. On top of Darwin, Apple layered a number of components, including the Aqua interface and the Finder, to complete the GUI-based operating system which is OS X.[25]", :creator_id => 1, :updater_id => 1, :created_at => "2013-08-11 03:36:00", :updated_at => "2013-08-11 19:38:52" },
  { :parent_topic_id => 1, :name => "BSD", :description => "BSD-isms", :tags => [], :content => "Berkeley Software Distribution (BSD, sometimes called Berkeley Unix) is a Unix operating system derivative developed and distributed by the Computer Systems Research Group (CSRG) of the University of California, Berkeley, from 1977 to 1995. Today the term \"BSD\" is often used non-specifically to refer to any of the BSD descendants which together form a branch of the family of Unix-like operating systems. Operating systems derived from the original BSD code remain actively developed and widely used.\r\n\r\nHistorically, BSD has been considered a branch of UNIX—\"BSD UNIX\", because it shared the initial codebase and design with the original AT&T UNIX operating system. In the 1980s, BSD was widely adopted by vendors of workstation-class systems in the form of proprietary UNIX variants such as DEC ULTRIX and Sun Microsystems SunOS. This can be attributed to the ease with which it could be licensed, and the familiarity it found among the founders of many technology companies of this era.\r\n\r\nThough these proprietary BSD derivatives were largely superseded by the UNIX System V Release 4 and OSF/1 systems in the 1990s (both of which incorporated BSD code and are the basis of other modern Unix systems), later BSD releases provided a basis for several open source development projects, e.g. FreeBSD, NetBSD, OpenBSD or DragonFly BSD, that are ongoing. These, in turn, have been incorporated in whole or in part in modern proprietary operating systems, e.g. the TCP/IP (IPv4 only) networking code in Microsoft Windows and a part of the foundation of Apple's OS X.", :creator_id => 1, :updater_id => 1, :created_at => "2013-08-11 22:48:11", :updated_at => "2013-08-11 22:48:11" },
  { :parent_topic_id => nil, :name => "Ruby", :description => "Programming Language", :tags => [], :content => "Ruby is a dynamic, reflective, general-purpose object-oriented programming language that combines syntax inspired by Perl with Smalltalk-like features. It was also influenced by Eiffel and Lisp.[8] Ruby was first designed and developed in the mid-1990s by Yukihiro \"Matz\" Matsumoto in Japan.\r\n\r\nRuby supports multiple programming paradigms, including functional, object oriented and imperative. It also has a dynamic type system and automatic memory management; it is therefore similar in varying respects to Smalltalk, Python, Perl, Lisp, Dylan, and CLU.\r\n\r\nThe standard and already retired [9] 1.8.7 implementation was written in C, as a single-pass interpreted language. Starting with the 1.9 branch, and continuing with the current 2.0 branch, YARV has been used, and will eventually supersede the slower Ruby MRI. The language specifications for Ruby were developed by the Open Standards Promotion Center of the Information-Technology Promotion Agency (a Japanese government agency) for submission to the Japanese Industrial Standards Committee and then to the International Organization for Standardization. It was accepted as a Japanese Industrial Standard (JIS X 3017) in 2011[10] and an international standard (ISO/IEC 30170) in 2012.[11] As of 2010, there are a number of complete or upcoming alternative implementations of Ruby, including YARV, JRuby, Rubinius, IronRuby, MacRuby (and its iOS counterpart, RubyMotion), mruby, HotRuby, Topaz and Opal. Each takes a different approach, with IronRuby, JRuby, MacRuby and Rubinius providing just-in-time compilation and MacRuby and mruby also providing ahead-of-time compilation.", :creator_id => 1, :updater_id => 1, :created_at => "2013-08-11 22:56:45", :updated_at => "2013-08-11 22:56:45" },
  { :parent_topic_id => nil, :name => "Rails", :description => "Ruby On Rails", :tags => [], :content => "Ruby on Rails, often simply Rails, is an open source web application framework which runs on the Ruby programming language. It is a full-stack framework: it allows creating pages and applications that gather information from the web server, talk to or query the database, and render templates out of the box. As a result, Rails features a routing system that is independent of the web server.\r\n\r\nRuby on Rails emphasizes the use of well-known software engineering patterns and principles, such as active record pattern, convention over configuration (CoC), don't repeat yourself (DRY), and model–view–controller (MVC).\r\n\r\nHistory[edit source | editbeta]\r\n\r\nDavid Heinemeier Hansson extracted Ruby on Rails from his work on Basecamp, a project management tool by 37signals (now a web application company).[3] Hansson first released Rails as open source in July 2004, but did not share commit rights to the project until February 2005.[4] In August 2006, the framework reached a milestone when Apple announced that it would ship Ruby on Rails with Mac OS X v10.5 \"Leopard\",[5] which was released in October 2007.\r\n\r\nRails version 2.3 was released on March 15, 2009 with major new developments in templates, engines, Rack and nested model forms. Templates enable the developer to generate a skeleton application with custom gems and configurations. Engines give developers the ability to reuse application pieces complete with routes, view paths and models. The Rack web server interface and Metal allow one to write optimized pieces of code that route around ActionController.[6]\r\n\r\nOn December 23, 2008, Merb, another web application framework, was launched, and Ruby on Rails announced it would work with the Merb project to bring \"the best ideas of Merb\" into Rails 3, ending the \"unnecessary duplication\" across both communities.[7] Merb was merged with Rails as part of the Rails 3.0 release.[8][9]\r\n\r\nRails 3.1 was released on August 31, 2011, featuring Reversible Database Migrations, Asset Pipeline, Streaming, jQuery as default JavaScript library and newly introduced CoffeeScript and Sass into the stack.[10]\r\n\r\nRails 3.2 was released on January 20, 2012 with a faster development mode and routing engine (also known as Journey engine), Automatic Query Explain and Tagged Logging.[11] Rails 3.2.x is the last version that supports Ruby 1.8.7.[12] Rails 3.2.12 supports Ruby 2.0 [13]\r\n\r\nRails 4.0 was released on June 25, 2013, introducing Russian Doll Caching, Turbolinks, Live Streaming as well as making Active Resource, Active Record Observer and other components optional by splitting them as gems. [14]", :creator_id => 1, :updater_id => 1, :created_at => "2013-08-11 22:57:33", :updated_at => "2013-08-11 22:57:33" },
  { :parent_topic_id => nil, :name => "CoffeeScript", :description => "", :tags => [], :content => "CoffeeScript is a programming language that transcompiles to JavaScript. The language adds syntactic sugar inspired by Ruby, Python and Haskell[1] to enhance JavaScript's brevity and readability, adding sophisticated features like list comprehension and pattern matching. CoffeeScript compiles predictably to JavaScript and programs can be written with less code, typically 1/3 fewer lines, with no effect on runtime performance.[3] Since March 16, 2011, CoffeeScript has been on GitHub's list of most-watched projects,[4] and as of today is the tenth most popular language on GitHub.[5]\r\n\r\nThe language has a relatively large following in the Ruby community. CoffeeScript support is included in Ruby on Rails version 3.1.[6] Additionally, Brendan Eich has referenced CoffeeScript as an influence on his thoughts about the future of JavaScript.[7][8]\r\n\r\nHistory[edit source | editbeta]\r\n\r\nOn December 13, 2009, Jeremy Ashkenas made the first Git commit of CoffeeScript with the comment: \"initial commit of the mystery language.\"[9] The compiler was written in Ruby. On December 24, he made the first tagged and documented release, 0.1.0. On February 21, 2010, he committed version 0.5, which replaced the Ruby compiler with a self-hosting version in pure CoffeeScript. By that time the project had attracted several other contributors on GitHub, and was receiving over 300 page hits per day.\r\n\r\nOn December 24, 2010, Ashkenas announced the release of stable 1.0.0 to Hacker News, the site where the project was announced for the first time.[10][11]", :creator_id => 1, :updater_id => 1, :created_at => "2013-08-11 22:58:41", :updated_at => "2013-08-11 22:58:41" },
  { :parent_topic_id => nil, :name => "Javascript", :description => "", :tags => [], :content => "JavaScript (JS) is an interpreted computer programming language.[5] It was originally implemented as part of web browsers so that client-side scripts could interact with the user, control the browser, communicate asynchronously, and alter the document content that was displayed.[5] More recently, however, it has become common in server-side programming, game development and the creation of desktop applications.\r\n\r\nJavaScript is a prototype-based scripting language with dynamic typing and has first-class functions. Its syntax was influenced by the language C. JavaScript copies many names and naming conventions from Java, but the two languages are otherwise unrelated and have very different semantics. The key design principles within JavaScript are taken from the Self and Scheme programming languages.[6] It is a multi-paradigm language, supporting object-oriented,[7] imperative, and functional[1][8] programming styles.\r\n\r\nJavaScript's use in applications outside of web pages—for example, in PDF documents, site-specific browsers, and desktop widgets—is also significant. Newer and faster JavaScript VMs and frameworks built upon them (notably Node.js) have also increased the popularity of JavaScript for server-side web applications.\r\n\r\nJavaScript was formalized in the ECMAScript language standard and is primarily used as part of a web browser (client-side JavaScript). This enables programmatic access to computational objects within a host environment.\r\n\r\nHistory[edit source | editbeta]\r\n\r\nBirth at Netscape[edit source | editbeta]\r\nJavaScript was originally developed by Brendan Eich. Battling with Microsoft over the Internet, Netscape considered their client-server solution as a distributed OS, running a portable version of Sun Microsystems' Java. Because Java was a competitor of C++ and aimed at professional programmers, Netscape also wanted a lightweight interpreted language that would complement Java by appealing to nonprofessional programmers, like Microsoft's Visual Basic (see JavaScript and Java).[9]\r\n\r\nDeveloped under the name Mocha, LiveScript was the official name for the language when it first shipped in beta releases of Netscape Navigator 2.0 in September 1995, but it was renamed JavaScript[10] when it was deployed in the Netscape browser version 2.0B3.[11]\r\n\r\nThe change of name from LiveScript to JavaScript roughly coincided with Netscape adding support for Java technology in its Netscape Navigator web browser. The final choice of name caused confusion, giving the impression that the language was a spin-off of the Java programming language, and the choice has been characterized by many as a marketing ploy by Netscape to give JavaScript the cachet of what was then the hot new web programming language.[12][13]\r\n\r\nServer-side JavaScript[edit source | editbeta]\r\nNetscape introduced an implementation of the language for server-side scripting (SSJS) with Netscape Enterprise Server, first released in December, 1994 (soon after releasing JavaScript for browsers).[14][15] Since the mid-2000s, there has been a proliferation of server-side JavaScript implementations. Node.js is one recent notable example of server-side JavaScript being used in real-world applications.[16][17]\r\n\r\nAdoption by Microsoft[edit source | editbeta]\r\nJavaScript very quickly gained widespread success as a client-side scripting language for web pages. Microsoft introduced JavaScript support in its own web browser, Internet Explorer, in version 3.0, released in August 1996.[18][not in citation given] Microsoft's webserver, Internet Information Server, introduced support for server-side scripting in JavaScript with release 3.0 (1996). Microsoft started to promote webpage scripting using the umbrella term Dynamic HTML.\r\n\r\nMicrosoft's JavaScript implementation was later renamed JScript to avoid trademark issues. JScript added new date methods to fix the Y2K-problematic methods in JavaScript, which were based on Java's java.util.Date class.\r\n\r\nStandardization[edit source | editbeta]\r\nIn November 1996, Netscape announced that it had submitted JavaScript to Ecma International for consideration as an industry standard, and subsequent work resulted in the standardized version named ECMAScript. In June 1997, Ecma International published the first edition of the ECMA-262 specification. A year later, in June 1998, some modifications were made to adapt it to the ISO/IEC-16262 standard, and the second edition was released. The third edition of ECMA-262 (published on December 1999) is the version most browsers currently use.[19]\r\n\r\nFourth edition of Ecmascript standard was not released and does not exist. Fifth edition of the Ecmascript standard was released in December 2009. The current edition of Ecmascript standard is 5.1 and it was released in June 2011.[20]\r\n\r\nLater developments[edit source | editbeta]\r\nJavaScript has become one of the most popular programming languages on the web. Initially, however, many professional programmers denigrated the language because its target audience consisted of web authors and other such \"amateurs\", among other reasons.[21] The advent of Ajax returned JavaScript to the spotlight and brought more professional programming attention. The result was a proliferation of comprehensive frameworks and libraries, improved JavaScript programming practices, and increased usage of JavaScript outside of web browsers, as seen by the proliferation of server-side JavaScript platforms.\r\n\r\nIn January 2009, the CommonJS project was founded with the goal of specifying a common standard library mainly for JavaScript development outside the browser.[22]", :creator_id => 1, :updater_id => 1, :created_at => "2013-08-11 22:59:23", :updated_at => "2013-08-11 22:59:23" }
])



# User.create([
#   { :login => nil, :email => nil, :name => "Ed K", :provider => "github", :uid => "54091", :created_at => "2013-07-24 02:57:33", :updated_at => "2013-07-24 02:57:33" },
#   { :email => 'eddyhkim@gmail.com', :name => "Ed K", :created_at => "2013-07-24 02:57:33", :updated_at => "2013-07-24 02:57:33" }
# ])


