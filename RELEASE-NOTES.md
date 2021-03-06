Release Notes for JATSPAN software and data files.

These notes are in reverse chronological order (newest releases at the top).

# jats-core-bundle-0.8

4/6/2014. [GitHub tag v0.8](https://github.com/Klortho/jatspan/releases/tag/v0.8)

**Changes**

- Got rid of the *content* subdirectory in each of the jatspacks.  This makes the relative
  system paths cleaner.  This directory serves no purpose other than to try to maintain
  compatibility with EXPath packaging, but that has not worked out.
- Updates to documentation to reflect the fact that everything is now on GitHub.


# jats-core-bundle-0.7

9/25/2011.  [GitHub tag v0.7](https://github.com/Klortho/jatspan/releases/tag/v0.7)

**Note:** I am going to have to distinguish between various different releases from this
project.  This release comprises just the core JATSPacks, which are the
repackaged versions of the JATS DTDs that you get from the NLM site.  So the
name of this release Zip file reflects that:  "jats-core-bundle".  But there
may be a time where I'll want to create a release of more of whats in the
jatspan project repository, at which point the name might change to "jatspan".

**Changes:**

- Changed the name from "nlm-jats" to "jatspan".
- The biggest change here was that the directory structure changed again, in
  order to get these into JATSPack format.  Many of the decisions were based
  on having JATSPack be compatible with EXPath-packaging.  For example, it is a
  requirement that the directory structure in Subversion and in the released
  Zip file to be the same as the final on-disk repository layout.  Each
  JATSPack package, according to this spec, must have:
    - A root that is only one level deep.  I would have prefered a two-level
      hierarchy, with the top level being "jatslib", "nlmjats", and "nisojats".
    - Each package has a "content" directory directly under the root, which
      contains its content files.
    - The package descriptor expath-pkg.xml is into the root directory.
- Speaking of which, the expath-pkg.xml package descriptor files are all newly
  created with this release.
- Added the NISO 0.4 draft release versions, and adapted them into JATSPacks.
- Deleted README files that came from original NLM distributions.  They are not
  in sync with these packages, and they contain information which, while
  interesting and relevant, maybe should be provided somewhere else.


# nlm-jats-0.6-r123

3/19/2011.  [GitHub tag v0.6](https://github.com/Klortho/jatspan/releases/tag/v0.6)

This is the first release that has a release tag in the Subversion repository.

**Changes:**

- Changed the root directory of the distribution file to "nlm-jats", instead of
  using the name of the release.  I think system identifiers in document type
  declarations could use relative pathnames that start with nlm-jats.  There is
  opposition to the idea of using absolute URLs, and I think this would be a
  good compromise.
- Added this ReleaseNotes.txt file.


# nlm-jats-0.5-r110

2/14/2011

This was the first alpha release.
