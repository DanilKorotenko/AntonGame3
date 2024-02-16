NumXP=0
NumGold=0
DummySpare=1
ItemMC=2
ItemST=3
ItemBCP=1
RandomDamege=0
YourHealth=20
DummyHealth=20
DummyHappy=3
DummyName$="froggit"
PRINT DummyName$; " HAS APEARED!"

PRINT "1. FIGHT"
PRINT "2. ACT"
PRINT "3. ITEM"
PRINT "4. MERCY"

DO
    INPUT "action:" ;actionChoice
    SELECT CASE actionChoice
        CASE 1
            GOSUB 300
        CASE 2
            GOSUB 310
        CASE 3
            GOSUB 320
        CASE 4
            GOSUB 330
        CASE ELSE
            PRINT "Invalid choice. Please enter a number from the menu."
    END SELECT

    if YourHealth <= 0 then
        Print "You loose"
        end
    end if

    if DummyHappy = 0 then
        PRINT DummyName$; "is smiling"
        DummySpare=DummySpare=-1
    end if

    if DummyHealth <= 0 then
        NumXP=NumXP+int(rnd(1)*2)
        NumGold=NumGold+int(rnd(1)*10)
        PRINT "YOU WON!"
        PRINT "you got" ;NumXP
        PRINT "and" ;NumGold
        end
    end if

LOOP UNTIL TRUE

END

300 REM
    PRINT DummyName$
    RandomDamege=int(rnd(1)*5)
    PRINT "took "; RandomDamege; " damege!"
    DummyHealth=DummyHealth - RandomDamege
    PRINT "DummyHealth "; DummyHealth
    RandomDamege=int(rnd(1)*5)
    PRINT "You got "; RandomDamege; " damege!"
    YourHealth=YourHealth-RandomDamege
    PRINT "YourHealth "; YourHealth
RETURN

310 REM
    PRINT "you complement" ;DummyName$
    PRINT "It seems flattered"
    DummyHappy=DummyHappy - 1
    RandomDamege=int(rnd(1)*5)
    PRINT "You got "; RandomDamege; " damege!"
    YourHealth=YourHealth-RandomDamege
    PRINT "YourHealth "; YourHealth
RETURN

320 REM
    PRINT "CHOSE ITEM"
    PRINT "1. "; ItemMC; " monster candy(+5 hp)"
    PRINT "2. "; ItemST; " sea tea(+9 hp)"
    PRINT "3. "; ItemBCP; " Butterscotch-Cinnamon Pie(+19 hp)"
    INPUT "Item:" ;itemChoice
    SELECT CASE itemChoice
        CASE 1
            GOSUB 100
        CASE 2
            GOSUB 110
        CASE 3
            GOSUB 120

        CASE ELSE
            PRINT "you dont have this item..."
    END SELECT
RETURN

100 REM
    IF ItemMC>0 THEN
        YourHealth=YourHealth+5
        PRINT "Your Health ";YourHealth
        ItemMC=ItemMC-1
    ELSE
        PRINT "you ran out of this item"
    end if
RETURN

110 REM
    IF ItemST>0 THEN
        YourHealth=YourHealth+5
        PRINT "Your Health ";YourHealth
        ItemST=ItemST-1
    ELSE
        PRINT "you ran out of this item"
    end if
RETURN

120 REM
    IF ItemBCP>0 THEN
        YourHealth=YourHealth+5
        PRINT "Your Health ";YourHealth
        ItemBCP=ItemBCP-1
    ELSE
        PRINT "you ran out of this item"
    end if
RETURN
RETURN


330 REM
    IF DummySpare>0 THEN
        PRINT DummyName$
        PRINT "is too angry to be spared"
        RandomDamege=int(rnd(1)*5)
        PRINT "You got "; RandomDamege; " damege!"
        YourHealth=YourHealth-RandomDamege
        PRINT "YourHealth "; YourHealth
    end if
    IF DummySpare=0 THEN
        NumXP=NumXP+int(rnd(1)*2)
        NumGold=NumGold+int(rnd(1)*10)
        PRINT "YOU WON!"
        PRINT DummyName$
        PRINT "you got" ;NumXP; "XP"
        PRINT "and" ;NumGold; "GOLD"
        end
    end if

RETURN
