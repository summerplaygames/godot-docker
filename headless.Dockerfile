
#  Created on Fri Dec 27 2019
# 
#  The MIT License (MIT)
#  Copyright (c) 2019-2021 SummerPlay
# 
#  Permission is hereby granted, free of charge, to any person obtaining a copy of this software
#  and associated documentation files (the "Software"), to deal in the Software without restriction,
#  including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
#  and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so,
#  subject to the following conditions:
# 
#  The above copyright notice and this permission notice shall be included in all copies or substantial
#  portions of the Software.
# 
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
#  TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
#  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
#  TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

FROM ubuntu:bionic

RUN apt-get update -y && apt-get install -y unzip && apt-get install -y wget && apt-get install -y cpio

RUN mkdir -p $HOME/.local/share/godot/templates/3.3.2.stable

RUN wget https://downloads.tuxfamily.org/godotengine/3.3.2/Godot_v3.3.2-stable_export_templates.tpz

RUN unzip Godot_v3.3.2-stable_export_templates.tpz -d /tmp

RUN mv /tmp/templates/* $HOME/.local/share/godot/templates/3.3.2.stable

RUN wget https://downloads.tuxfamily.org/godotengine/3.3.2/Godot_v3.3.2-stable_linux_headless.64.zip

RUN unzip Godot_v3.3.2-stable_linux_headless.64.zip && mv Godot_v3.3.2-stable_linux_headless.64 /usr/bin/godot-headless && rm Godot_v3.3.2-stable_linux_headless.64.zip
