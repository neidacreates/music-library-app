# features 
- Viewing all albums in a collection

- Viewing albums in a wishlist

- Viewing album details

- Adding albums to a collection or wishlist

- Viewing all collections and wishlists for a user

# views needed
| Route              | View              | Description                                           |
| ------------------ | ----------------- | ----------------------------------------------------- |
| `/collections`     | Collections Index | Show all collections for a user                       |
| `/collections/:id` | Collection Show   | Show all albums in that collection                    |
| `/wishlists`       | Wishlists Index   | Show all wishlists for a user                         |
| `/wishlists/:id`   | Wishlist Show     | Show all albums in that wishlist                      |
| `/albums/:id`      | Album Show        | Show details of an album (title, artist, genre, etc.) |

# wireframes
## /collections
My Collections

- Vinyl Favorites [View]
- CD Collection [View]
- Add New Collection

## /collections/:id
Collection: Vinyl Favorites

Albums:
- OK Computer (Radiohead) [View Album]
- Rumours (Fleetwood Mac) [View Album]
- Add New Album

## /albums/:id

OK Computer
Artist: Radiohead
Genre: Alternative
Release Year: 1997
Format: CD
Condition: Good

## /wishlists
My Wishlists

- Vinyls I need [View]
- CDs I wish I had [View]
- Add New Wishlist

## /wishlists/:id
Wishlist: CDs I wish I had

Albums:
-  Harry's House (Harry Styles) [View Album]
- Add New Album