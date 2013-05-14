.class public Lcom/android/internal/widget/SkyDigitalClock;
.super Landroid/widget/LinearLayout;
.source "SkyDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SkyDigitalClock$FormatChangeObserver;,
        Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;,
        Lcom/android/internal/widget/SkyDigitalClock$AmPmString;,
        Lcom/android/internal/widget/SkyDigitalClock$AmPm;,
        Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field protected static final AMPM_TYPE_IMAGE:I = 0x66

.field protected static final AMPM_TYPE_STRING:I = 0x65

.field private static final DEBUG:Z = false

.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final TAG:Ljava/lang/String; = "SkyDigitalClock"


# instance fields
.field protected ampmType:I

.field protected mAmPm:Lcom/android/internal/widget/SkyDigitalClock$AmPm;

.field private mAttached:I

.field protected mCalendar:Ljava/util/Calendar;

.field protected mDateFormatString:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mTimeFormatString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SkyDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->ampmType:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mAttached:I

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mHandler:Landroid/os/Handler;

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104059b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mDateFormatString:Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClock;->settingForCustomize()V

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SkyDigitalClock;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SkyDigitalClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/widget/SkyDigitalClock;->setTimeFormat()V

    return-void
.end method

.method private setTimeFormat()V
    .registers 4

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "kk:mm"

    :goto_c
    iput-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mTimeFormatString:Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mAmPm:Lcom/android/internal/widget/SkyDigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock;->mTimeFormatString:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/SkyDigitalClock$AmPm;->setShowAmPm(Z)V

    .line 378
    return-void

    .line 375
    :cond_1c
    const-string v0, "h:mm"

    goto :goto_c
.end method


# virtual methods
.method public changeDateFormat(Ljava/lang/String;)V
    .registers 2
    .parameter "newFormat"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/internal/widget/SkyDigitalClock;->mDateFormatString:Ljava/lang/String;

    .line 383
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 286
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 288
    iget v2, p0, Lcom/android/internal/widget/SkyDigitalClock;->mAttached:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/SkyDigitalClock;->mAttached:I

    .line 291
    iget-object v2, p0, Lcom/android/internal/widget/SkyDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_31

    .line 292
    new-instance v2, Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SkyDigitalClock$TimeChangedReceiver;-><init>(Lcom/android/internal/widget/SkyDigitalClock;)V

    iput-object v2, p0, Lcom/android/internal/widget/SkyDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 293
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 294
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/SkyDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_31
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "time_12_24"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 306
    .local v0, HOURFORMAT_URI:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/widget/SkyDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_50

    .line 307
    new-instance v2, Lcom/android/internal/widget/SkyDigitalClock$FormatChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SkyDigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/widget/SkyDigitalClock;)V

    iput-object v2, p0, Lcom/android/internal/widget/SkyDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 316
    iget-object v2, p0, Lcom/android/internal/widget/SkyDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/SkyDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 321
    :cond_50
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClock;->updateTime()V

    .line 322
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 328
    iget v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mAttached:I

    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_17

    .line 331
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 333
    :cond_17
    iget-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_28

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SkyDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 338
    :cond_28
    iput-object v2, p0, Lcom/android/internal/widget/SkyDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 339
    iput-object v2, p0, Lcom/android/internal/widget/SkyDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 340
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 265
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 267
    iget v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->ampmType:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_22

    .line 269
    new-instance v0, Lcom/android/internal/widget/SkyDigitalClock$AmPmString;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/SkyDigitalClock$AmPmString;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mAmPm:Lcom/android/internal/widget/SkyDigitalClock$AmPm;

    .line 277
    :cond_11
    :goto_11
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 280
    invoke-direct {p0}, Lcom/android/internal/widget/SkyDigitalClock;->setTimeFormat()V

    .line 281
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClock;->updateTime()V

    .line 282
    return-void

    .line 270
    :cond_22
    iget v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->ampmType:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_11

    .line 271
    new-instance v0, Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyDigitalClock$AmPmImage;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mAmPm:Lcom/android/internal/widget/SkyDigitalClock$AmPm;

    goto :goto_11
.end method

.method public onSimLanguageChanged()V
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mAmPm:Lcom/android/internal/widget/SkyDigitalClock$AmPm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/widget/SkyDigitalClock$AmPmString;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 217
    iget-object v0, p0, Lcom/android/internal/widget/SkyDigitalClock;->mAmPm:Lcom/android/internal/widget/SkyDigitalClock$AmPm;

    invoke-interface {v0}, Lcom/android/internal/widget/SkyDigitalClock$AmPm;->loadAmPmResource()V

    .line 220
    :cond_13
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClock;->updateTime()V

    .line 221
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 8
    .parameter "timeZone"

    .prologue
    .line 389
    iget-object v3, p0, Lcom/android/internal/widget/SkyDigitalClock;->mCalendar:Ljava/util/Calendar;

    monitor-enter v3

    .line 392
    :try_start_3
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 393
    .local v1, tzone:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    const/4 v0, 0x1

    .line 397
    .local v0, timeZoneChanged:Z
    :goto_1a
    if-eqz v0, :cond_48

    .line 398
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/SkyDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 401
    invoke-static {v1}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 402
    const-string v2, "SkyDigitalClock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default TimeZone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClock;->updateTime()V

    .line 406
    :cond_48
    monitor-exit v3

    .line 407
    return-void

    .line 393
    .end local v0           #timeZoneChanged:Z
    :cond_4a
    const/4 v0, 0x0

    goto :goto_1a

    .line 406
    .end local v1           #tzone:Ljava/util/TimeZone;
    :catchall_4c
    move-exception v2

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_4c

    throw v2
.end method

.method protected settingForCustomize()V
    .registers 1

    .prologue
    .line 261
    return-void
.end method

.method public updateTime()V
    .registers 8

    .prologue
    .line 351
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/widget/SkyDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 356
    iget-object v4, p0, Lcom/android/internal/widget/SkyDigitalClock;->mTimeFormatString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/widget/SkyDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 359
    .local v3, newTime:Ljava/lang/CharSequence;
    const v4, 0x1020307

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SkyDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 361
    .local v2, mTimeDisplay:Landroid/widget/TextView;
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-object v5, p0, Lcom/android/internal/widget/SkyDigitalClock;->mAmPm:Lcom/android/internal/widget/SkyDigitalClock$AmPm;

    iget-object v4, p0, Lcom/android/internal/widget/SkyDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_46

    const/4 v4, 0x1

    :goto_2a
    invoke-interface {v5, v4}, Lcom/android/internal/widget/SkyDigitalClock$AmPm;->setIsMorning(Z)V

    .line 367
    const v4, 0x1020305

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SkyDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 368
    .local v1, mDateDisplay:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/internal/widget/SkyDigitalClock;->mDateFormatString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/widget/SkyDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_48

    .line 372
    .end local v1           #mDateDisplay:Landroid/widget/TextView;
    .end local v2           #mTimeDisplay:Landroid/widget/TextView;
    .end local v3           #newTime:Ljava/lang/CharSequence;
    :goto_45
    return-void

    .line 364
    .restart local v2       #mTimeDisplay:Landroid/widget/TextView;
    .restart local v3       #newTime:Ljava/lang/CharSequence;
    :cond_46
    const/4 v4, 0x0

    goto :goto_2a

    .line 369
    .end local v2           #mTimeDisplay:Landroid/widget/TextView;
    .end local v3           #newTime:Ljava/lang/CharSequence;
    :catch_48
    move-exception v0

    .line 370
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SkyDigitalClock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SkyDigitalClock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'s updateTime()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45
.end method

.method updateTime(Ljava/util/Calendar;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/internal/widget/SkyDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 346
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyDigitalClock;->updateTime()V

    .line 347
    return-void
.end method
