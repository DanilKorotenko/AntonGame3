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
INPUT "action:" ;choice
    SELECT CASE choice

        CASE 1
            GOSUB 300
        CASE 2
            GOSUB 310
        CASE 3
            GOSUB 320
        CASE 4
            GOSUB 330
            END
        CASE ELSE
            PRINT "Invalid choice. Please enter a number from the menu."
    END SELECT
if DummyHappy = 0 then
PRINT DummyName$
PRINT "is smiling"
DummySpare=0
end
end if
if DummyHealth <= 0 then
NumXP=NumXP+int(rnd(1)*2)
NumGold=NumGold+int(rnd(1)*10)
PRINT "YOU WON!"
PRINT "you got"
PRINT NumXP
PRINT "and"
PRINT NumGold
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
if YourHealth <= 0 then
    Print "You loose"
    end
end if
RETURN
310 REM
PRINT "you complement"
PRINT DummyName$
PRINT "It seems flattered"
DummyHappy=DummyHappy - 1
RandomDamege=int(rnd(1)*5)
PRINT "You got "; RandomDamege; " damege!"
YourHealth=YourHealth-RandomDamege
PRINT "YourHealth "; YourHealth
RETURN

320 REM
PRINT "CHOSE ITEM"
PRINT ItemMC
PRINT "monster candy(+5 hp)"
PRINT ItemST
PRINT "sea tea(+9 hp)"
PRINT ItemBCP
PRINT "Butterscotch-Cinnamon Pie(+19 hp)"
INPUT "Item:" ;choice
SELECT CASE choice
        CASE 1
            GOSUB 100
        CASE 2
            GOSUB 110
        CASE 3
            GOSUB 120
  END
        CASE ELSE
            PRINT "you dont have this item..."
 END SELECT
100 REM
YourHealth=YourHealth+5
PRINT "Your Health ";YourHealth
RETURN
110 REM
YourHealth=YourHealth+13
PRINT "Your Health ";YourHealth
RETURN
120 REM
YourHealth=YourHealth+19
PRINT "Your Health ";YourHealth
RETURN
RETURN

330 REM
IF DummySpare>0 THEN
PRINT DummyName$
PRINT "is too angry to be spared"
end
end if
IF DummySpare=0 THEN
NumXP=NumXP+int(rnd(1)*2)
NumGold=NumGold+int(rnd(1)*10)
PRINT "YOU WON!"
PRINT DummyName$
PRINT "you got"
PRINT NumXP
PRINT "and"
PRINT NumGold
end
end if
RETURN
