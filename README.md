# uuid-passwords-store


## Too much passwords to remember?


## Don't remember - Have each as UUID. Locally.

* have a random, UUID based password for each website account
* stores everything in one, local file

## Usage

* generate a password

        ./password-please.rb gmail.com/foo
        Your password for gmail.com/foo is: 29467418-4a52-4dec-bad0-1ffa3db2f276
    
* its now stored in a *local* file

        cat ./all-passwords-i-am-better-on-crypted-storage.txt

## Notes

It is up to you to sync the file to other computer if you need.

It is better you only use this software if you have any form of secure storage.
See [List of cryptographic file systems] [1]


[1]: http://en.wikipedia.org/wiki/List_of_cryptographic_file_systems "List of cryptographic file systems"
