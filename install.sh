#!/bin/bash
ls -d */ | xargs -L1 stow 
