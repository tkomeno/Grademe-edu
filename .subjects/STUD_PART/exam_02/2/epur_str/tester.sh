

FILE='epur_str.c'
ASSIGN='epur_str'

bash .system/auto_correc_program.sh $FILE $ASSIGN 
if [ -e .system/grading/traceback ];then
    mv .system/grading/traceback .
	exit 1
fi

bash .system/auto_correc_program.sh $FILE $ASSIGN  "See? It's easy to print the same thing"
if [ -e .system/grading/traceback ];then
    mv .system/grading/traceback .
	exit 1
fi

bash .system/auto_correc_program.sh $FILE $ASSIGN " this        time it      will     be    more complex  . "
if [ -e .system/grading/traceback ];then
    mv .system/grading/traceback .
	exit 1
fi

bash .system/auto_correc_program.sh $FILE $ASSIGN  "No S*** Sherlock..." "nAw S*** ShErLaWQ..."
if [ -e .system/grading/traceback ];then
    mv .system/grading/traceback .
	exit 1
fi

bash .system/auto_correc_program.sh $FILE $ASSIGN "comme c'est cocasse" "vous avez entendu, Mathilde ?"
if [ -e .system/grading/traceback ];then
    mv .system/grading/traceback .
	exit 1
fi


bash .system/auto_correc_program.sh $FILE $ASSIGN "5"
if [ -e .system/grading/traceback ];then
    mv .system/grading/traceback .
	exit 1
fi

bash .system/auto_correc_program.sh $FILE $ASSIGN "Too" "Many" "Arguments"
if [ -e .system/grading/traceback ];then
    mv .system/grading/traceback .
	exit 1
fi

bash .system/auto_correc_program.sh $FILE $ASSIGN "7"
if [ -e .system/grading/traceback ];then
    mv .system/grading/traceback .
	exit 1
fi

touch .system/grading/passed;
