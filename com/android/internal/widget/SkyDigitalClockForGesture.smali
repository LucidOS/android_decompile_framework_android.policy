.class public Lcom/android/internal/widget/SkyDigitalClockForGesture;
.super Lcom/android/internal/widget/SkyDigitalClock;
.source "SkyDigitalClockForGesture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SkyDigitalClockForGesture"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SkyDigitalClockForGesture;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/SkyDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 5

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/internal/widget/SkyDigitalClock;->onFinishInflate()V

    .line 32
    iget-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mAmPm:Lcom/android/internal/widget/SkyDigitalClock$AmPm;

    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClockForGesture;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10806e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClockForGesture;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10806ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/widget/SkyDigitalClock$AmPm;->setAmPmResource(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClockForGesture;->invalidate()V

    .line 36
    return-void
.end method

.method protected settingForCustomize()V
    .registers 2

    .prologue
    .line 27
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->ampmType:I

    .line 28
    return-void
.end method

.method public updateTime()V
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 41
    :try_start_2
    iget-object v8, p0, Lcom/android/internal/widget/SkyDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 46
    iget-object v8, p0, Lcom/android/internal/widget/SkyDigitalClock;->mTimeFormatString:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/widget/SkyDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 48
    .local v4, newTime:Ljava/lang/CharSequence;
    const v8, 0x1020307

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/SkyDigitalClockForGesture;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    .local v2, mTimeDisplay_hour:Landroid/widget/TextView;
    const v8, 0x10203db

    invoke-virtual {p0, v8}, Lcom/android/internal/widget/SkyDigitalClockForGesture;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 50
    .local v3, mTimeDisplay_minute:Landroid/widget/TextView;
    const-string v8, "/system/fonts/DroidSans.ttf"

    invoke-static {v8}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    const-string v8, "/system/fonts/DroidSans.ttf"

    invoke-static {v8}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 53
    check-cast v4, Ljava/lang/String;

    .end local v4           #newTime:Ljava/lang/CharSequence;
    const-string v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, time:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v8, p0, Lcom/android/internal/widget/SkyDigitalClock;->mAmPm:Lcom/android/internal/widget/SkyDigitalClock$AmPm;

    iget-object v9, p0, Lcom/android/internal/widget/SkyDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-nez v9, :cond_73

    :goto_57
    invoke-interface {v8, v6}, Lcom/android/internal/widget/SkyDigitalClock$AmPm;->setIsMorning(Z)V

    .line 62
    const v6, 0x1020305

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/SkyDigitalClockForGesture;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 63
    .local v1, mDateDisplay:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/internal/widget/SkyDigitalClock;->mDateFormatString:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/widget/SkyDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_72} :catch_75

    .line 67
    .end local v1           #mDateDisplay:Landroid/widget/TextView;
    .end local v2           #mTimeDisplay_hour:Landroid/widget/TextView;
    .end local v3           #mTimeDisplay_minute:Landroid/widget/TextView;
    .end local v5           #time:[Ljava/lang/String;
    :goto_72
    return-void

    .restart local v2       #mTimeDisplay_hour:Landroid/widget/TextView;
    .restart local v3       #mTimeDisplay_minute:Landroid/widget/TextView;
    .restart local v5       #time:[Ljava/lang/String;
    :cond_73
    move v6, v7

    .line 59
    goto :goto_57

    .line 64
    .end local v2           #mTimeDisplay_hour:Landroid/widget/TextView;
    .end local v3           #mTimeDisplay_minute:Landroid/widget/TextView;
    .end local v5           #time:[Ljava/lang/String;
    :catch_75
    move-exception v0

    .line 65
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "SkyDigitalClockForGesture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SkyDigitalClockForGesture"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'s updateTime()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72
.end method
