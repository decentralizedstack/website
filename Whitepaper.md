# Introduction  
The proliferation of social networking platforms has led to massively centralized data silos which exploit people's personal information for the monetary gain of platform owners. Digital identities are fragmented as they are spread out across multiple platforms, resulting in a poor user experience which either leads to bad security practices (poor password choices), sign-on friction (need for a password manager), or breaches of privacy (social sign-on). Attempts have been made to decentralize social networking, but all have failed compared to the successes of incumbent networks due to poor user experiences (among other issues) [1]. By contrast, the Last Social Network will use a combination of new and existing protocols and applications to redecentralize the web while maintaining the high-quality experience people have come to expect. This technology will give users control of their digital identity and personal data so they may interact with each other as peers on the global Internet, empowering them to retain their privacy and the value they produce online.

# Design Philosophy  
The Last Social Network (LSN) is not intended to be yet-another social networking app, but rather the underlying plumbing which connects apps together. This philosophy is guided by the realization that the Internet itself is a social network, albeit one governed by protocols which have trended towards centralization rather than decentralization. By creating a generalized framework and providing only the basic components that others can build on, we ensure an open ecosystem that gives app developers complete freedom to build while ensuring that user autonomy is respected in the process. To align incentives for the participation of all stakeholders in the ecosystem, monetization mechanisms will be native to the LSN, enabling app developers, data producers, and data consumers to partake in a frictionless information economy. The LSN will serve as a basis for "Web 3.0" platforms that put users, rather than "the Stacks", at the center of the network [2][3]. 

#The Components  

For both security reasons and to satisfy the requirement that the user experience be seamless, application developers should integrate whichever component below works as expected, meets the scalability requirements for a global social network, and has the biggest network effect. This list is neither exhaustive nor exclusive, and serves only as a starting point for deciding what will be used to build the Last Social Network. 

##Identity  
Identity is at the core of the LSN. Without identity under the control of the users, they will just be forced back into another system where third parties dictate the terms of their participation in the network. The LSN will incorporate only those identity technologies which a) give users full control while b) preserving a familiar and high-quality user experience.

###OpenName  
The OpenName protocol is a "decentralized name, identity, and auth protocol built on Bitcoin technology" [4]. Combining public/private key cryptography with a distributed ledger and transaction processing system allows the OpenName protocol to satisfy the needs for a digital identity that is at the same time a) secure b) decentralized and c) human-readable [5]. This satisfies the requirement that users have full control while preserving a familiar and high-quality user experience.  

##Storage  
It's been said that "data is the new oil" [6]. For users to tap into the value of their data, they must first own and control it. The LSN will incorporate only those storage technologies which a) give users first claim to ownership of their data, b) make data the user chooses to share available even if the user is offline, c) provide options to easily encrypt and decrypt data, and d) make the user experience seamless. 

###SAFE  
SAFE, which stands for "Secure Access For Everyone", is "a fully distributed data management service" [7]. Data stored on the SAFE network is either encrypted by the client or cryptographically signed by the client, then broken up into multiple pieces and redundantly stored on other computers participating in the network. The SAFE network uses a built-in cryptocurrency called safecoin to offer computers in the network an economic incentive to store data and make it available in the future. This cryptocurrency is secured by a method known as "close consensus" based on close groups as determined by the deterministic XOR distance between nodes [8]. Users pay safecoin to have their data stored by the network, and data storage nodes called "farmers" are paid safecoins each time data they are storing is retrieved. This data storage economy creates a self-regulating system which ensures data availability and security. 

###IPFS  
IPFS, which stands for "Inter Planetary File System", "combines good ideas from Git, BitTorrent, Kademlia, SFS, and the Web. It is like a single bittorrent swarm, exchanging git objects" [8]. Like SAFE, IPFS integrates a cryptocurrency, called filecoin, to provide economic incentives to computers offering storage to the network. Unlike SAFE, filecoin uses a block chain for consensus [10].  

Due to the combination of distributed file storage and economic incentives, IPFS shares many of the benefits offered by SAFE. An additional benefit of having a built-in cryptocurrency is the design goal of having data monetization built-in natively. We can use the same coin used to pay for storage to also pay for data exchanges.    

##Circles  
Circles allow you to share data only with certain groups of people. You might have some aspects of your life that you only share with co-workers, some that you only share with family and close friends, and others that can be public for all to see. Circles are transparently enforced by cryptography and p2p trust, properly executing a feature that some social networks fall short in implementing and others lack completely.  

###Syncthing
Syncthing offers "private, secure, authenticated" data sharing: "Your data is your data alone and you deserve to choose where it is stored, if it is shared with some third party and how it's transmitted over the Internet" [11]. Combined with the previously listed components, Syncthing can be used to create a more secure group sharing environment for blog posts, status updates, instant messaging, and more. 

###Open Mustard Seed  
Open Mustard Seed (OMS) is a platform that "enables the managed exchange of digital assets, cryptocurrency, and personal information" [12]. OMS is made up of several integrated technologies, including openPDS, a Personal Data Store which fits in both the Storage and Circles categories [13]. Open Mustard Seed was designed with the "recommendations of the WEF, the US NSTIC and the US Consumer Privacy Bill of Rights" in mind and is intended to serve as a reference implementation of the ideas and principles expressed therein. 

##Graph Structure


[1] http://motherboard.vice.com/blog/what-happened-to-the-facebook-killer-it-s-complicated  
[2] https://web.archive.org/web/20140701054154/http://insightsintoamodernworld.blogspot.co.uk/2014/04/apps-what-web-30-looks-like.html  
[3] http://techcrunch.com/2013/08/18/the-internet-were-doing-it-wrong/  
[4] https://github.com/openname  
[5] http://www.aaronsw.com/weblog/squarezooko  
[6] http://www.wired.com/2014/07/data-new-oil-digital-economy/  
[7] http://maidsafe.net/overview  
[8] http://blog.maidsafe.net/2015/01/29/consensus-without-a-blockchain/  
[9] http://ipfs.io/  
[10] [PDF] http://filecoin.io/filecoin.pdf  
[11] http://www.syncthing.net/  
[12] https://idcubed.org/open-platform/platform/  
[13] http://openpds.media.mit.edu/  

