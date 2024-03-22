***Variables***
${currentday}   0
${future_updated_days}      31

***Test Cases***
TC1:
    
    IF  ${currentday} <= 0
    # ${GiftAmt}  Set Variable  0
    ELSE IF     ${currentday} >= 1 and ${currentday} <= 15 and ${future_updated_days} <= 15
    ${GiftAmt}  Set Variable  10
    ELSE IF     ${currentday} <= 15 and ${future_updated_days} <= 31
    ${GiftAmt}  Set Variable  100
    ELSE IF     ${currentday} >= 25 and ${future_updated_days} <= 31
    ${GiftAmt}  Set Variable  20
    ELSE IF     ${currentday} >= 25 and ${future_updated_days} <= 5
    ${GiftAmt}  Set Variable  22
    END