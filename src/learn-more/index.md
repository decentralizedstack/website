# Introduction  

People have wondered for years about what comes after the big social networks that dominate the web today [1]. Attempts have been made to decentralize social networking, but all have been unsuccessful compared to the adoption of incumbent networks [2]. DStack will succeed where others have failed by using a combination of new and existing data formats and protocols to redecentralize the web while maintaining the high-quality experience people have come to expect. This technology will give people powerful tools for sharing information with more control over their privacy and the value they produce online.  

# Design Philosophy  

DStack is the underlying plumbing which connects apps together. This philosophy is guided by the realization that the Internet itself is a social network, albeit one governed by protocols which have trended towards centralization rather than decentralization. By creating a generalized framework and providing only the basic components that others can build on, we ensure an open ecosystem that gives app developers complete freedom to build while ensuring that user autonomy is respected in the process. To align incentives for the participation of all stakeholders in the ecosystem, monetization mechanisms will be native to the LSN, enabling app developers, data producers, and data consumers to partake in a frictionless information economy. The LSN will serve as a basis for "Web 3.0" platforms that put users, rather than "the Stacks", at the center of the network [3][4].  

# The Components  

This is the basic stack:

![LSN Stack](https://p2pconnectsus.files.wordpress.com/2015/02/lsnstack.png)
   
## Storage  

It has been said that "data is the new oil" [5]. For users to tap into the value of their data, they must first own and control it. The LSN incorporates storage technology which a) gives users first claim to ownership of their data, b) makes data the user chooses to share available even if the user is offline, c) provides options to easily encrypt and decrypt data, and d) makes the user experience seamless.  

### IPFS  

IPFS, which stands for "Inter Planetary File System", "combines good ideas from Git, BitTorrent, Kademlia, SFS, and the Web. It is like a single bittorrent swarm, exchanging git objects" [6]. IPFS integrates a cryptocurrency, called filecoin, to provide economic incentives to computers offering storage to the network [7]. By having a built-in cryptocurrency, IPFS simultaneously fulfills the design goal of having data monetization built-in natively. We can use the same coin used to pay for storage to also pay for data exchanges.  

## Graph Structure  

A graph structure is useful for creating categories of information and linking together those categories and the individual nodes of information to create rich sets of data that are more dimensional than the web today. Tim Berners-Lee has referred to the next evolution of the "World Wide Web, or "WWW," as the Giant Global Graph, or "GGG", which will let data "be joined to data from other applications" [8]. It is a simple yet powerful idea which, if incorporated, will ensure that the LSN does not itself become yet another data silo. The graph structure serves as the interoperability layer between all data sources, including legacy social networks and other cloud services.  

### NodeSphere  

The following description is from the Nodesphere GitHub page [9].  

"Nodesphere is an interchange format for node networks. It has three primary objectives:  

1. Create interoperability among graph visualization interfaces.  
2. Provide adaptors to connect these interfaces to personal data ecosystems, including social network data, online drives, and ultimately, any public or private data.  
3. Abstract data storage and retrieval, allowing transitions from traditional server & database systems toward secure, distributed public and private storage, as these systems become practical and performant."  

With Nodesphere, apps will be able to combine multiple data sources into one common interface and perform computations on these data sets to create unique outputs.   

## Identity  

Identity is at the core of the LSN, serving as a constant between apps that utilize a user's data. No longer will users have to choose between creating a username and password or compromising privacy by using third-party "social sign-on" services each time they use a new app. The LSN incorporates identity technology which a) gives users full control while b) preserving a familiar and high-quality user experience.  

### OpenName  

The OpenName protocol is a "decentralized name, identity, and auth protocol built on Bitcoin technology" [10]. By combining asymmetric cryptography with a distributed public ledger and decentralized transaction ordering and processing system i.e. a block chain, the OpenName protocol provides a digital identity that is at the same time a) secure b) decentralized and c) human-readable [11]. This satisfies the requirement that users have full control while preserving a familiar and high-quality user experience.  

The Openname will be used in conjunction with two sets of keys: Blockchain keys, and Authentication keys. The Blockchain keys control write and transfer access for the user's account on the block chain and are used to register an Openname. These keys are ideally generated and stored in a secure location offline. The Authentication keys are used to produce cryptographically signed messages which are intended to prove who the sender of the message is. Like the Blockchain keys, the Authentication keys are ideally generated and stored offline. Unlike the Blockchain keys, they are intended to be carried on the user's person for easy access, as they will be used regularly to authenticate the user's identity. The public part of the Authentication keys is added as an attribute of the user's Openname so that they can be authenticated and have messages properly encrypted for them without the risk of a man-in-the-middle attack [12]. 

## Visualization  

Visualization software is used for the human interface of the LSN. It gives abstract form to the raw data stored in the network, providing powerful tools for end-users to view and manipulate the information they have access to by categorizing, linking, searching, sharing, and incorporating it into larger structures.   

# The Last Social Network app  

This section will describe the unhosted Last Social Network app [13].

## The Last Social Network

A "social network" can be a very nebulous concept. In this instance, "The Last Social Network" refers to a specific design pattern on the Internet whereby people connect with other people that they find interesting - referred to variously as: "friends," "connections," or simply "accounts" - and share either found or original content with them. This content can be pictures, videos, audio tracks, text posts, or some combination thereof (coming soon: scents and brain signals) [14][15]. Since the LSN has monetization built into the core, users can also transfer value to one another, either as a voluntary donation or as part of a market exchange.  

To use the Last Social Network app, the user would first download the app, open it, and click "new account." This will prompt them to either register with an existing Openname or create a new Openname. The app will then create a symmetric encryption container for all of the user's activity data. The symmetric encryption key used to encrypt this data is a version of the user's Openname that is cryptographically signed using their private key. Each time the user creates a private post on the network, another symmetric encryption container will be created and the symmetric key will be the hash of the post file signed by the user's private key.  Public posts are stored as plaintext hashes. The master list of a user's data hashes and metadata is kept in the encrypted activity data container and used by the app to make a user's data easy to categorize and link together in different nodespheres. If the user wants to share something private with a friend, the user will encrypt the data with the public key associated with their friend's Openname. All of the data produced by the user through their use of the Last Social Network app is stored in the IPFS network.  

Data can be discovered through nodespheres, which are constructed by the user as they use the app and categorize data that they create or is shared with them. An Openname can be created for each nodesphere, with the hash of the nodesphere added as an attribute of the Openname and updated each time the nodesphere is modified. Nodespheres can structure data in the same kind of tree format that is seen elsewhere in computing i.e. last-social-network/wiki/whitepaper; "Last-social-network" being the root category, "wiki" a folder in that category, and "whitepaper" a file in that folder. Alice could have a friends/school/bob nodesphere named "Bob," which is a nodephere of nodespheres with all of the posts shared with her by her friend Bob. She can share this "Bob" nodesphere with Carol by telling her that it is called "Bob" or by giving Carol the hash of the nodesphere; either will give Carol access to all of the data in the nodesphere via IPFS. 


[1] <http://www.quora.com/The-Future-of-Facebook-Project>  
[2] <http://motherboard.vice.com/blog/what-happened-to-the-facebook-killer-it-s-complicated>  
[3] <https://web.archive.org/web/20140701054154/http://insightsintoamodernworld.blogspot.co.uk/2014/04/apps-what-web-30-looks-like.html>  
[4] <http://techcrunch.com/2013/08/18/the-internet-were-doing-it-wrong/>  
[5] <http://www.wired.com/2014/07/data-new-oil-digital-economy/>  
[6] <http://ipfs.io/>  
[7] <http://filecoin.io/filecoin.pdf>  
[8] <http://dig.csail.mit.edu/breadcrumbs/node/215>  
[9] <https://github.com/nodesphere/nodesphere#nodesphere>  
[10] <https://github.com/openname>  
[11] <http://www.aaronsw.com/weblog/squarezooko>  
[12] <https://okturtles.com/other/dnschain_okturtles_overview.pdf>  
[13] <http://www.unhosted.org>  
[14] <http://www.cnn.com/2014/03/17/tech/innovation/the-ophone-phone-lets-you-send-smells/index.html>  
[15] <http://homes.cs.washington.edu/~rao/brain2brain/>  
