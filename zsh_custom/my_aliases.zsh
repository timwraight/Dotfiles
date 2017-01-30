alias ep="7z e -so ~/projects/flows/ConsRpt_V02_20160531000000.7z | tail -n +2 | head -n 400 | csvlook -d\| -H | less -S"
alias py_pv="pip freeze | grep -i "
function py_req_add () {
    first_req_file=$(find . -name "requirements.txt" | head -n 1)
    echo "Adding $(py_pv $1) to ${first_req_file}"
    echo $(py_pv $1) >> $first_req_file
}
autoload py_req_add
alias ec="emacsclient -t"
alias p="clear && pytest -x --lf"
alias p2='clear && pytest -x --lf -n 2'
alias pp="clear && pytest -x --lf --pdb"
alias pk="clear && pytest -k "
alias px="clear && pytest -x "
# alias ps="pytest -x --lf --slow --flake8"
# python -m pdb [insert command here..]
alias ppd='python -m ipdb '
alias pg='ps aux | grep '
# Generate a TAGS file in the current directory
alias generate_tags='find . -name "*.py" | xargs etags --lang=python'
