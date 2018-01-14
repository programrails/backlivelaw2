This is an unfinished (closed due to the financing shortage) real-world project.

Usually I don't public my job projects because of the NDA limitations.

But since this project was closed I may publish it.

DESCRIPTION

This a legal assistance bidding auction project.

This project is written in Ruby on Rails 5 API-only mode.

But it includes a common built-in HTML-templated admin area.

The project is intended to work with an Angular2 frontend (missing here). All the requests are JSONAPI-formatted using the Active Model Serializers gem.

The unexistent model attributes (if any) are mimicked with the virtual JSONAPI attributes (to stay strictly compliant with JSONAPI requirements - the trick I invented).

The largest part of the site relies heavily on ActionCable. It implements various socket subsystems (Online real-time status, Facebook-alike User Personal Messaging with virtual dialogs (for speedier SQL-queries), the "correspondent message being written" and "unread messages" real time notifications, Private an Public Chat).

I elaborated here a double-party chat mutual-authentication protocol establishing private channels. It is based on the idea of the constant email login.

Every side of the chat talk authenticates its party and vice-versa (I call it "mutual authentication") thus establishing a private channel. The detailed protocol is described in the files of the "lib/doc" folder (sorry, in Russian only).

The immense digging into ActionCable sourcecodes led me to implement here some missing channel helper routines.

The site also has a built-in IP geolocation capability (databased for Russia IPs only).

The payment subsystem was started but dropped being implemented somewhere near the end. It includes an advanced idea of a virtual balance (totally eliminating the danger of the doubled payments) and bidding auctions. I have a financial software developing background and know some its weakest points.

Also a ThinkingSphinx built-in complex search is included here. Some searching patterns are pretty much complicated (especially searching inside the virtual message dialogs).

The basic user authentication for the API-only mode is made with the "devise_token_auth" gem which is so crooked that I hardly was able to make the OmniAuth FaceBook logging-in.

The site is using a settings storage with the (heavily modified) 'configurable_engine' gem.

I don't know whether it is worth mentioning that JSONAPI-compliant paging is largely used in controllers here.