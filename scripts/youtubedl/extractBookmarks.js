/*
 * Little script for downloading bookmarked songs
 * Kees van Voorthuizen (@keesvv)
 */

const fs = require('fs');

const bookmarks = JSON.parse(fs.readFileSync(`${process.env.HOME}/.config/google-chrome/Default/Bookmarks`));

const bookmarkBar = bookmarks.roots.bookmark_bar;
const musicFolder = bookmarkBar.children.find(i => i.type === 'folder' && i.name === 'Muziek');
const urls = musicFolder.children.map(i => i.url);
const batch = urls.join('\n');

console.log(`${urls.length} urls found, writing to batch file...`);

fs.writeFileSync('/tmp/youtubedl-batch', batch);
