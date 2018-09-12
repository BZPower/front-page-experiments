#!/bin/bash

# A quick script for sed find/replace calls
# Run it from the root of the repository

# swap out image assets
sed -i 's["BZPower%20-%20Bionicle%E2%84%A2%20and%20LEGO%C2%AE%20News,%20Reference%20and%20Discussion_files/bg.gif"["032018-graphics/bg.png"[g' BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion.html
sed -i 's["BZPower%20-%20Bionicle%E2%84%A2%20and%20LEGO%C2%AE%20News,%20Reference%20and%20Discussion_files/bg_left.gif"["032018-graphics/bg_left.png"[g' BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion.html
sed -i 's["BZPower%20-%20Bionicle%E2%84%A2%20and%20LEGO%C2%AE%20News,%20Reference%20and%20Discussion_files/bg_right.gif"["032018-graphics/bg_right.png"[g' BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion.html
sed -i 's["BZPower%20-%20Bionicle%E2%84%A2%20and%20LEGO%C2%AE%20News,%20Reference%20and%20Discussion_files/enterforums3.gif"["032018-graphics/enterforums3.png"[g' BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion.html
sed -i 's["BZPower%20-%20Bionicle%E2%84%A2%20and%20LEGO%C2%AE%20News,%20Reference%20and%20Discussion_files/findit.gif"["032018-graphics/findit.png"[g' BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion.html
sed -i 's["BZPower%20-%20Bionicle%E2%84%A2%20and%20LEGO%C2%AE%20News,%20Reference%20and%20Discussion_files/mast_bluespacer.gif"["032018-graphics/mast_bluespacer.png"[g' BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion.html
sed -i 's["BZPower%20-%20Bionicle%E2%84%A2%20and%20LEGO%C2%AE%20News,%20Reference%20and%20Discussion_files/mast_topright.gif"["032018-graphics/mast_topright.png"[g' BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion.html
sed -i 's["BZPower%20-%20Bionicle%E2%84%A2%20and%20LEGO%C2%AE%20News,%20Reference%20and%20Discussion_files/masthead.jpg"["032018-graphics/masthead.png"[g' BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion.html

# Noted for reference... I don't actually have a randomizer in place for the rest of these
# 032018-graphics/mast_topright_avohkii.png
# 032018-graphics/mast_topright_faxon1.png
# 032018-graphics/mast_topright_faxon2.png
# 032018-graphics/mast_topright_glatorian.png
# 032018-graphics/mast_topright_hau.png
# 032018-graphics/mast_topright_hau_infected.png
# 032018-graphics/mast_topright_ignika.png
# 032018-graphics/mast_topright_krana.png
# 032018-graphics/mast_topright_mata_nui.png
# 032018-graphics/mast_topright_metru_nui.png
# 032018-graphics/mast_topright_rahkshi.png
# 032018-graphics/mast_topright_stalactite.png
# 032018-graphics/mast_topright_vahi.png
# 032018-graphics/mast_topright_vezok.png
# 032018-graphics/mast_topright_voya_nui.png




# Replace an unneeded image with a generic one
sed -i 's["BZPower%20-%20Bionicle%E2%84%A2%20and%20LEGO%C2%AE%20News,%20Reference%20and%20Discussion_files/bg_topleft.gif"["032018-graphics/bg_left.png"[g' BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion.html

# Remove useless outdated amazon affiliate code
sed -i '/^.*amzn.*$/d' BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion.html
sed -i BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion.html -e '
/<!-- <script/ {
    N
    N
    /<!-- <script.*\n.*\n.*amazon/d
}'

# Don't use class blueboxwhite - that's just crazy talk
sed -i 's/blueboxwhite/bluebox/g' BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion.html

# Change the CSS
# This will make the code even messier, since it rips the red from the "redfoot" and "redleft" classes...
sed -i BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion_files/bzpower.css -e 's/#990000/#336699/g'
# Remove dead classes (including newly dead)
sed -i BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion_files/bzpower.css -e '/blueboxwhite/d'
sed -i BZPower\ -\ Bionicle™\ and\ LEGO®\ News\,\ Reference\ and\ Discussion_files/bzpower.css -e '/bluebox2/d'






