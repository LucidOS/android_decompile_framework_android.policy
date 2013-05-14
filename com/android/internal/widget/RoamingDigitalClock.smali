.class public Lcom/android/internal/widget/RoamingDigitalClock;
.super Landroid/widget/LinearLayout;
.source "RoamingDigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/RoamingDigitalClock$FormatChangeObserver;,
        Lcom/android/internal/widget/RoamingDigitalClock$AmPm;,
        Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final SYSTEM:Ljava/lang/String; = "/system/fonts/"

.field private static final SYSTEM_FONT_TIME_BACKGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static final SYSTEM_FONT_TIME_FOREGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock_Highlight.ttf"

.field private static final TAG:Ljava/lang/String; = "RoamingDigitalClock"

.field private static final sBackgroundFont:Landroid/graphics/Typeface;

.field private static final sForegroundFont:Landroid/graphics/Typeface;


# instance fields
.field private mAmPm:Lcom/android/internal/widget/RoamingDigitalClock$AmPm;

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeDisplayBackground:Landroid/widget/TextView;

.field private mTimeDisplayForeground:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 65
    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/RoamingDigitalClock;->sBackgroundFont:Landroid/graphics/Typeface;

    .line 66
    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/RoamingDigitalClock;->sForegroundFont:Landroid/graphics/Typeface;

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/RoamingDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mAttached:I

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mHandler:Landroid/os/Handler;

    .line 184
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/widget/RoamingDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/RoamingDigitalClock;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/RoamingDigitalClock;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/internal/widget/RoamingDigitalClock;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .registers 4

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/android/internal/widget/RoamingDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "kk:mm"

    :goto_c
    iput-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mFormat:Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mAmPm:Lcom/android/internal/widget/RoamingDigitalClock$AmPm;

    iget-object v1, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;->setShowAmPm(Z)V

    .line 327
    return-void

    .line 324
    :cond_1c
    const-string v0, "h:mm"

    goto :goto_c
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 6

    .prologue
    .line 217
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 219
    iget v2, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mAttached:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mAttached:I

    .line 222
    iget-object v2, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_2f

    .line 223
    new-instance v2, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/RoamingDigitalClock$TimeChangedReceiver;-><init>(Lcom/android/internal/widget/RoamingDigitalClock;)V

    iput-object v2, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 224
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v2, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_2f
    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "time_12_24"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 237
    .local v0, HOURFORMAT_URI:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_4e

    .line 238
    new-instance v2, Lcom/android/internal/widget/RoamingDigitalClock$FormatChangeObserver;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/RoamingDigitalClock$FormatChangeObserver;-><init>(Lcom/android/internal/widget/RoamingDigitalClock;)V

    iput-object v2, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 247
    iget-object v2, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 252
    :cond_4e
    invoke-virtual {p0}, Lcom/android/internal/widget/RoamingDigitalClock;->updateTime()V

    .line 253
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 259
    iget v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mAttached:I

    .line 261
    iget-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_15

    .line 262
    iget-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_24

    .line 265
    iget-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 269
    :cond_24
    iput-object v2, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 270
    iput-object v2, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 271
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 188
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 191
    const v0, 0x10202dd

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RoamingDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mTimeDisplayBackground:Landroid/widget/TextView;

    .line 192
    iget-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mTimeDisplayBackground:Landroid/widget/TextView;

    sget-object v1, Lcom/android/internal/widget/RoamingDigitalClock;->sBackgroundFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 193
    iget-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mTimeDisplayBackground:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    const v0, 0x10202de

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RoamingDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mTimeDisplayForeground:Landroid/widget/TextView;

    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mTimeDisplayForeground:Landroid/widget/TextView;

    sget-object v1, Lcom/android/internal/widget/RoamingDigitalClock;->sForegroundFont:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 197
    new-instance v0, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mAmPm:Lcom/android/internal/widget/RoamingDigitalClock$AmPm;

    .line 199
    const v0, 0x10202e0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/RoamingDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mDate:Landroid/widget/TextView;

    .line 204
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 207
    invoke-direct {p0}, Lcom/android/internal/widget/RoamingDigitalClock;->setDateFormat()V

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/widget/RoamingDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104059b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mDateFormatString:Ljava/lang/String;

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/widget/RoamingDigitalClock;->updateTime()V

    .line 213
    return-void
.end method

.method public updateTime()V
    .registers 14

    .prologue
    .line 280
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 282
    const-string v9, "Asia/Seoul"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 283
    .local v8, zone_seoul:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 284
    .local v3, offset_default:I
    iget-object v9, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 285
    .local v4, offset_seoul:I
    sub-int v2, v4, v3

    .line 290
    .local v2, offset:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 291
    .local v5, p:I
    const-wide/16 v6, 0x0

    .line 293
    .local v6, seoulTime:J
    if-gez v2, :cond_82

    .line 294
    iget-object v9, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    int-to-long v11, v5

    sub-long v6, v9, v11

    .line 299
    :goto_3a
    invoke-virtual {v8}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v9

    if-eqz v9, :cond_56

    iget-object v9, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 301
    invoke-virtual {v8}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v9

    const v10, 0x36ee80

    div-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v6, v9

    .line 304
    :cond_56
    iget-object v9, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mFormat:Ljava/lang/String;

    invoke-static {v9, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 306
    .local v1, newSeoulTime:Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mTimeDisplayBackground:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v9, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mTimeDisplayForeground:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v10, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mAmPm:Lcom/android/internal/widget/RoamingDigitalClock$AmPm;

    iget-object v9, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v11, 0x9

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-nez v9, :cond_8c

    const/4 v9, 0x1

    :goto_73
    invoke-virtual {v10, v9}, Lcom/android/internal/widget/RoamingDigitalClock$AmPm;->setIsMorning(Z)V

    .line 311
    iget-object v9, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mDate:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mDateFormatString:Ljava/lang/String;

    invoke-static {v10, v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    .end local v1           #newSeoulTime:Ljava/lang/CharSequence;
    .end local v2           #offset:I
    .end local v3           #offset_default:I
    .end local v4           #offset_seoul:I
    .end local v5           #p:I
    .end local v6           #seoulTime:J
    .end local v8           #zone_seoul:Ljava/util/TimeZone;
    :goto_81
    return-void

    .line 296
    .restart local v2       #offset:I
    .restart local v3       #offset_default:I
    .restart local v4       #offset_seoul:I
    .restart local v5       #p:I
    .restart local v6       #seoulTime:J
    .restart local v8       #zone_seoul:Ljava/util/TimeZone;
    :cond_82
    iget-object v9, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_87} :catch_8e

    move-result-wide v9

    int-to-long v11, v5

    add-long v6, v9, v11

    goto :goto_3a

    .line 309
    .restart local v1       #newSeoulTime:Ljava/lang/CharSequence;
    :cond_8c
    const/4 v9, 0x0

    goto :goto_73

    .line 318
    .end local v1           #newSeoulTime:Ljava/lang/CharSequence;
    .end local v2           #offset:I
    .end local v3           #offset_default:I
    .end local v4           #offset_seoul:I
    .end local v5           #p:I
    .end local v6           #seoulTime:J
    .end local v8           #zone_seoul:Ljava/util/TimeZone;
    :catch_8e
    move-exception v0

    .line 319
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "RoamingDigitalClock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "RoamingDigitalClock"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'s updateTime()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81
.end method

.method updateTime(Ljava/util/Calendar;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/internal/widget/RoamingDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/widget/RoamingDigitalClock;->updateTime()V

    .line 276
    return-void
.end method
