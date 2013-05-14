.class public Lcom/android/internal/widget/SkySimpleDigitalClock;
.super Landroid/widget/RelativeLayout;
.source "SkySimpleDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SkySimpleDigitalClock$FormatChangeObserver;,
        Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;,
        Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final SYSTEM_FONT_DROIDSANS:Ljava/lang/String; = "/system/fonts/DroidSans-Bold.ttf"

.field private static final TAG:Ljava/lang/String; = "SkySimpleDigitalClock"


# instance fields
.field private mAmPm:Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mDateFormatString:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeFormatString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 187
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SkySimpleDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104059b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mDateFormatString:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 194
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mAttached:I

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mHandler:Landroid/os/Handler;

    .line 197
    invoke-virtual {p0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104059b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mDateFormatString:Ljava/lang/String;

    .line 198
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/SkySimpleDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/SkySimpleDigitalClock;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SkySimpleDigitalClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->setTimeFormat()V

    return-void
.end method

.method private setTimeFormat()V
    .registers 4

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "kk:mm"

    :goto_c
    iput-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mTimeFormatString:Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mAmPm:Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mTimeFormatString:Ljava/lang/String;

    const-string v2, "hh:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->setShowAmPm(Z)V

    .line 306
    return-void

    .line 303
    :cond_1c
    const-string v0, "hh:mm"

    goto :goto_c
.end method


# virtual methods
.method public changeDateFormat(Ljava/lang/String;)V
    .registers 2
    .parameter "newFormat"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mDateFormatString:Ljava/lang/String;

    .line 310
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 218
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 220
    iget v2, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mAttached:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mAttached:I

    .line 223
    iget-object v2, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_31

    .line 224
    new-instance v2, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SkySimpleDigitalClock$TimeChangedReceiver;-><init>(Lcom/android/internal/widget/SkySimpleDigitalClock;)V

    iput-object v2, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_31
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "time_12_24"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 238
    .local v0, HOURFORMAT_URI:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_52

    .line 239
    new-instance v2, Lcom/android/internal/widget/SkySimpleDigitalClock$FormatChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SkySimpleDigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/widget/SkySimpleDigitalClock;)V

    iput-object v2, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 253
    :cond_52
    invoke-virtual {p0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->updateTime()V

    .line 254
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 260
    iget v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mAttached:I

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_17

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 265
    :cond_17
    iget-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_28

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 270
    :cond_28
    iput-object v2, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 271
    iput-object v2, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 272
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 202
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 204
    new-instance v0, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mAmPm:Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;

    .line 209
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 212
    invoke-direct {p0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->setTimeFormat()V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->updateTime()V

    .line 214
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 7
    .parameter "timeZone"

    .prologue
    .line 317
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 318
    .local v1, tzone:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    const/4 v0, 0x1

    .line 322
    .local v0, timeZoneChanged:Z
    :goto_17
    if-eqz v0, :cond_45

    .line 323
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 326
    invoke-static {v1}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 327
    const-string v2, "SkySimpleDigitalClock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default TimeZone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->updateTime()V

    .line 331
    :cond_45
    return-void

    .line 318
    .end local v0           #timeZoneChanged:Z
    :cond_46
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public updateTime()V
    .registers 8

    .prologue
    .line 281
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 284
    iget-object v4, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mTimeFormatString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 285
    .local v3, newTime:Ljava/lang/CharSequence;
    const v4, 0x1020307

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SkySimpleDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 287
    .local v2, mTimeDisplay:Landroid/widget/TextView;
    const-string v4, "/system/fonts/DroidSans-Bold.ttf"

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 288
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v5, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mAmPm:Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;

    iget-object v4, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-nez v4, :cond_4f

    const/4 v4, 0x1

    :goto_33
    invoke-virtual {v5, v4}, Lcom/android/internal/widget/SkySimpleDigitalClock$AmPm;->setIsMorning(Z)V

    .line 294
    const v4, 0x1020305

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SkySimpleDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 295
    .local v1, mDateView:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mDateFormatString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_51

    .line 300
    .end local v1           #mDateView:Landroid/widget/TextView;
    .end local v2           #mTimeDisplay:Landroid/widget/TextView;
    .end local v3           #newTime:Ljava/lang/CharSequence;
    :goto_4e
    return-void

    .line 291
    .restart local v2       #mTimeDisplay:Landroid/widget/TextView;
    .restart local v3       #newTime:Ljava/lang/CharSequence;
    :cond_4f
    const/4 v4, 0x0

    goto :goto_33

    .line 297
    .end local v2           #mTimeDisplay:Landroid/widget/TextView;
    .end local v3           #newTime:Ljava/lang/CharSequence;
    :catch_51
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SkySimpleDigitalClock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SkySimpleDigitalClock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'s updateTime()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method updateTime(Ljava/util/Calendar;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/internal/widget/SkySimpleDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 276
    invoke-virtual {p0}, Lcom/android/internal/widget/SkySimpleDigitalClock;->updateTime()V

    .line 277
    return-void
.end method
