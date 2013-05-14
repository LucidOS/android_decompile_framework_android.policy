.class public Lcom/android/internal/widget/SkyRoamingDigitalClock;
.super Landroid/widget/LinearLayout;
.source "SkyRoamingDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SkyRoamingDigitalClock$FormatChangeObserver;,
        Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;,
        Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final TAG:Ljava/lang/String; = "SkyRoamingClock"


# instance fields
.field private mAmPmLocal:Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;

.field private mAmPmSeoul:Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mDateDisplayLocal:Landroid/widget/TextView;

.field private mDateDisplaySeoul:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mDummyCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeDisplayLocal:Landroid/widget/TextView;

.field private mTimeDisplaySeoul:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104059b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDateFormatString:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mAttached:I

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mHandler:Landroid/os/Handler;

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104059b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDateFormatString:Ljava/lang/String;

    .line 191
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/SkyRoamingDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/internal/widget/SkyRoamingDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDummyCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SkyRoamingDigitalClock;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SkyRoamingDigitalClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .registers 4

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "kk:mm"

    :goto_c
    iput-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mFormat:Ljava/lang/String;

    .line 338
    iget-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mAmPmLocal:Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->setShowAmPm(Z)V

    .line 339
    iget-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mAmPmSeoul:Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->setShowAmPm(Z)V

    .line 340
    return-void

    .line 336
    :cond_29
    const-string v0, "h:mm"

    goto :goto_c
.end method


# virtual methods
.method public changeDateFormat(Ljava/lang/String;)V
    .registers 2
    .parameter "newFormat"

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDateFormatString:Ljava/lang/String;

    .line 345
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 218
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 220
    iget v2, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mAttached:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mAttached:I

    .line 223
    iget-object v2, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_31

    .line 224
    new-instance v2, Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock$TimeChangedReceiver;-><init>(Lcom/android/internal/widget/SkyRoamingDigitalClock;)V

    iput-object v2, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

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
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_31
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "time_12_24"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 235
    .local v0, HOURFORMAT_URI:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_52

    .line 236
    new-instance v2, Lcom/android/internal/widget/SkyRoamingDigitalClock$FormatChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/widget/SkyRoamingDigitalClock;)V

    iput-object v2, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 237
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 241
    :cond_52
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->updateTime()V

    .line 242
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 248
    iget v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mAttached:I

    .line 250
    iget-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_17

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 253
    :cond_17
    iget-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_28

    .line 254
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 258
    :cond_28
    iput-object v2, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 259
    iput-object v2, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 195
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 197
    const v0, 0x1020310

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDateDisplayLocal:Landroid/widget/TextView;

    .line 198
    const v0, 0x102030e

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mTimeDisplayLocal:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mTimeDisplayLocal:Landroid/widget/TextView;

    const-string v1, "/system/fonts/DroidSans-Bold.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 201
    const v0, 0x102030b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDateDisplaySeoul:Landroid/widget/TextView;

    .line 202
    const v0, 0x102030c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mTimeDisplaySeoul:Landroid/widget/TextView;

    .line 203
    iget-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mTimeDisplaySeoul:Landroid/widget/TextView;

    const-string v1, "/system/fonts/DroidSans-Bold.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 205
    new-instance v0, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;

    const v1, 0x102030f

    invoke-direct {v0, p0, v2, v1}, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;I)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mAmPmLocal:Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;

    .line 206
    new-instance v0, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;

    const v1, 0x102030a

    invoke-direct {v0, p0, v2, v1}, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;I)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mAmPmSeoul:Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;

    .line 209
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 210
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDummyCalendar:Ljava/util/Calendar;

    .line 212
    invoke-direct {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->setDateFormat()V

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->updateTime()V

    .line 214
    return-void
.end method

.method public onSimLanguageChanged()V
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mAmPmLocal:Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->resetAmPmString()V

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mAmPmSeoul:Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->resetAmPmString()V

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->updateTime()V

    .line 153
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .registers 7
    .parameter "timeZone"

    .prologue
    .line 353
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 354
    .local v1, tzone:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    const/4 v0, 0x1

    .line 358
    .local v0, timeZoneChanged:Z
    :goto_17
    if-eqz v0, :cond_4b

    .line 359
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 360
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDummyCalendar:Ljava/util/Calendar;

    .line 363
    invoke-static {v1}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 364
    const-string v2, "SkyRoamingClock"

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

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->updateTime()V

    .line 368
    :cond_4b
    return-void

    .line 354
    .end local v0           #timeZoneChanged:Z
    :cond_4c
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public updateTime()V
    .registers 16

    .prologue
    .line 271
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 272
    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDummyCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 276
    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mFormat:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v11, v12}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 279
    .local v3, newTime:Ljava/lang/CharSequence;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, currentTime:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mTimeDisplayLocal:Landroid/widget/TextView;

    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v12, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mAmPmLocal:Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;

    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v13, 0x9

    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-nez v11, :cond_bd

    const/4 v11, 0x1

    :goto_30
    invoke-virtual {v12, v11}, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->setIsMorning(Z)V

    .line 286
    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDateDisplayLocal:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDateFormatString:Ljava/lang/String;

    iget-object v13, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    invoke-static {v12, v13, v14}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    const-string v11, "Asia/Seoul"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    .line 290
    .local v10, zone_seoul:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v12}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 291
    .local v5, offset_default:I
    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    .line 292
    .local v6, offset_seoul:I
    sub-int v4, v6, v5

    .line 297
    .local v4, offset:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 298
    .local v7, p:I
    const-wide/16 v8, 0x0

    .line 300
    .local v8, seoulTime:J
    if-gez v4, :cond_c0

    .line 301
    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    int-to-long v13, v7

    sub-long v8, v11, v13

    .line 306
    :goto_75
    invoke-virtual {v10}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v11

    if-eqz v11, :cond_91

    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_91

    .line 308
    invoke-virtual {v10}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v11

    const v12, 0x36ee80

    div-int/2addr v11, v12

    int-to-long v11, v11

    add-long/2addr v8, v11

    .line 311
    :cond_91
    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mFormat:Ljava/lang/String;

    invoke-static {v11, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 313
    .local v2, newSeoulTime:Ljava/lang/CharSequence;
    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mTimeDisplaySeoul:Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDummyCalendar:Ljava/util/Calendar;

    invoke-virtual {v11, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 316
    iget-object v12, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mAmPmSeoul:Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;

    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDummyCalendar:Ljava/util/Calendar;

    const/16 v13, 0x9

    invoke-virtual {v11, v13}, Ljava/util/Calendar;->get(I)I

    move-result v11

    if-nez v11, :cond_ca

    const/4 v11, 0x1

    :goto_ae
    invoke-virtual {v12, v11}, Lcom/android/internal/widget/SkyRoamingDigitalClock$AmPm;->setIsMorning(Z)V

    .line 326
    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDateDisplaySeoul:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mDateFormatString:Ljava/lang/String;

    invoke-static {v12, v8, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    .end local v0           #currentTime:Ljava/lang/String;
    .end local v2           #newSeoulTime:Ljava/lang/CharSequence;
    .end local v3           #newTime:Ljava/lang/CharSequence;
    .end local v4           #offset:I
    .end local v5           #offset_default:I
    .end local v6           #offset_seoul:I
    .end local v7           #p:I
    .end local v8           #seoulTime:J
    .end local v10           #zone_seoul:Ljava/util/TimeZone;
    :goto_bc
    return-void

    .line 284
    .restart local v0       #currentTime:Ljava/lang/String;
    .restart local v3       #newTime:Ljava/lang/CharSequence;
    :cond_bd
    const/4 v11, 0x0

    goto/16 :goto_30

    .line 303
    .restart local v4       #offset:I
    .restart local v5       #offset_default:I
    .restart local v6       #offset_seoul:I
    .restart local v7       #p:I
    .restart local v8       #seoulTime:J
    .restart local v10       #zone_seoul:Ljava/util/TimeZone;
    :cond_c0
    iget-object v11, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c5} :catch_cc

    move-result-wide v11

    int-to-long v13, v7

    add-long v8, v11, v13

    goto :goto_75

    .line 316
    .restart local v2       #newSeoulTime:Ljava/lang/CharSequence;
    :cond_ca
    const/4 v11, 0x0

    goto :goto_ae

    .line 330
    .end local v0           #currentTime:Ljava/lang/String;
    .end local v2           #newSeoulTime:Ljava/lang/CharSequence;
    .end local v3           #newTime:Ljava/lang/CharSequence;
    .end local v4           #offset:I
    .end local v5           #offset_default:I
    .end local v6           #offset_seoul:I
    .end local v7           #p:I
    .end local v8           #seoulTime:J
    .end local v10           #zone_seoul:Ljava/util/TimeZone;
    :catch_cc
    move-exception v1

    .line 331
    .local v1, e:Ljava/lang/Exception;
    const-string v11, "SkyRoamingClock"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "SkyRoamingClock"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'s updateTime()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc
.end method

.method updateTime(Ljava/util/Calendar;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/internal/widget/SkyRoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 266
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->updateTime()V

    .line 267
    return-void
.end method
