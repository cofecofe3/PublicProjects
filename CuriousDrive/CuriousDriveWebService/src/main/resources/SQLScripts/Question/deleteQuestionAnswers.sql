SET @QUESTION_ANSWER_ID = ?;

-- delete all the votes
DELETE FROM TRAN_POST_VOTE
WHERE SUBSYSTEM_VALUE = 'ANSR' AND SUBSYSTEM_REFERENCE_ID = @QUESTION_ANSWER_ID;

-- delete all the notifications 
DELETE FROM TRAN_NOTIFICATION 
WHERE SUBSYSTEM_VALUE IN ('UPVA','DNVA','ANSR','CMTA') AND SUBSYSTEM_REFERENCE_ID = @QUESTION_ANSWER_ID;

-- delete all the comments 
DELETE FROM TRAN_COMMENT 
WHERE SUBSYSTEM_VALUE = 'ANSR' AND SUBSYSTEM_REFERENCE_ID = @QUESTION_ANSWER_ID;

-- delete the question answers 
DELETE FROM TRAN_QUESTION_ANSWER 
WHERE QUESTION_ANSWER_ID = @QUESTION_ANSWER_ID;