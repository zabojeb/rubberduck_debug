#!/bin/bash

clear

echo '\033[1;97m'
echo 'bye - exit a debugging'
echo 'Starting a rubberduck debugging! 🐥'
sleep 0.5

echo '\033[1;93m'
echo '           _.._     '
echo '          / \033[1;97ma a\033[1;93m\__, '
echo '          \  -.___/ '
echo '           \  \     '
echo '(\__,-----,_)  \    '
echo '(    (_         )   '
echo ' \_   (__       /   '
echo '   \___________/    '
echo ''

echo "🐥: What's your problem, bro? Tell it to me!"

while true; do
    echo '\033[97m'
    read -p 'Bro: ' user_input
    echo
    case "$user_input" in
        "bye")
            echo '\033[1;93m🐥: Bye, bro! I hope you solve this problem'
            echo '\033[0m'
            break
            ;;
        *)
            responses=("🐥: Interesting... tell me more."
                        "🐥: Have you tried turning it off and on again?"
                        "🐥: I sense a disturbance in the code."
                        "🐥: That's a head-scratcher, isn't it?"
                        "🐥: Hmmm... let me think about it."
                        "🐥: Maybe you should ask Stack Overflow?"
                        "🐥: I believe in you, you can do it!"
                        "🐥: The rubber duck approves!"
                        "🐥: I see, tell me, what did you expect to happen?"
                        "🐥: Debugging is an art form, my friend."
                        "🐥: Don't worry, bugs are just features in disguise.")

            random_response=${responses[$((RANDOM % ${#responses[@]}))]}
            echo "\033[1;93m$random_response"
            ;;
    esac
done
