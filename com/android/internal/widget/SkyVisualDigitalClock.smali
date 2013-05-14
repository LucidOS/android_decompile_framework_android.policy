.class public Lcom/android/internal/widget/SkyVisualDigitalClock;
.super Landroid/widget/LinearLayout;
.source "SkyVisualDigitalClock.java"


# static fields
.field private static final MSG_CLOCK_UPDATE:I = 0x2c9

.field private static final MSG_DATE_UPDATE:I = 0x38f

.field private static final TAG:Ljava/lang/String; = "SkyVisualDigitalClock"

.field private static mClockImgNum:[I


# instance fields
.field handler:Landroid/os/Handler;

.field mAMPMImg:Landroid/view/View;

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field mContext:Landroid/content/Context;

.field protected mDateFormatString:Ljava/lang/String;

.field mDateTextView:Landroid/widget/TextView;

.field mHourDigitImg1:Landroid/view/View;

.field mHourDigitImg2:Landroid/view/View;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mMinDigitImg1:Landroid/view/View;

.field mMinDigitImg2:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mClockImgNum:[I

    return-void

    :array_a
    .array-data 0x4
        0x5bt 0x8t 0x8t 0x1t
        0x5ct 0x8t 0x8t 0x1t
        0x5dt 0x8t 0x8t 0x1t
        0x5et 0x8t 0x8t 0x1t
        0x5ft 0x8t 0x8t 0x1t
        0x60t 0x8t 0x8t 0x1t
        0x61t 0x8t 0x8t 0x1t
        0x62t 0x8t 0x8t 0x1t
        0x63t 0x8t 0x8t 0x1t
        0x64t 0x8t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SkyVisualDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 149
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mContext:Landroid/content/Context;

    .line 150
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->init()V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 154
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    new-instance v0, Lcom/android/internal/widget/SkyVisualDigitalClock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyVisualDigitalClock$1;-><init>(Lcom/android/internal/widget/SkyVisualDigitalClock;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->handler:Landroid/os/Handler;

    .line 186
    new-instance v0, Lcom/android/internal/widget/SkyVisualDigitalClock$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyVisualDigitalClock$2;-><init>(Lcom/android/internal/widget/SkyVisualDigitalClock;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mContext:Landroid/content/Context;

    .line 159
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->init()V

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->settingForCustomize()V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SkyVisualDigitalClock;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/SkyVisualDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100()[I
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mClockImgNum:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SkyVisualDigitalClock;)Ljava/text/SimpleDateFormat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method private init()V
    .registers 7

    .prologue
    const/4 v5, -0x2

    .line 164
    iget-object v3, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 165
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x10900dc

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 166
    .local v2, v:Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 167
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/SkyVisualDigitalClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->initViews()V

    .line 170
    return-void
.end method

.method private initViews()V
    .registers 2

    .prologue
    .line 174
    const v0, 0x1020401

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mDateTextView:Landroid/widget/TextView;

    .line 176
    const v0, 0x1020402

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mHourDigitImg1:Landroid/view/View;

    .line 177
    const v0, 0x1020403

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mHourDigitImg2:Landroid/view/View;

    .line 179
    const v0, 0x1020404

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mMinDigitImg1:Landroid/view/View;

    .line 180
    const v0, 0x1020405

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mMinDigitImg2:Landroid/view/View;

    .line 182
    const v0, 0x1020406

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mAMPMImg:Landroid/view/View;

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->startClock()V

    .line 184
    return-void
.end method

.method private setTimeFormat()V
    .registers 1

    .prologue
    .line 348
    return-void
.end method


# virtual methods
.method public changeDateFormat(Ljava/lang/String;)V
    .registers 2
    .parameter "newFormat"

    .prologue
    .line 353
    return-void
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 357
    const-string v0, "SkyVisualDigitalClock"

    const-string v1, "All destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 360
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->handler:Landroid/os/Handler;

    const/16 v1, 0x2c9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->handler:Landroid/os/Handler;

    const/16 v1, 0x38f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->handler:Landroid/os/Handler;

    .line 365
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mDateTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    .line 366
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mDateTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 367
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mHourDigitImg1:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 368
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mHourDigitImg1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    :cond_33
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mHourDigitImg2:Landroid/view/View;

    if-eqz v0, :cond_3c

    .line 370
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mHourDigitImg2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 371
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mMinDigitImg1:Landroid/view/View;

    if-eqz v0, :cond_45

    .line 372
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mMinDigitImg1:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    :cond_45
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mMinDigitImg2:Landroid/view/View;

    if-eqz v0, :cond_4e

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mMinDigitImg2:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mAMPMImg:Landroid/view/View;

    if-eqz v0, :cond_57

    .line 376
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mAMPMImg:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 379
    :cond_57
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mDateTextView:Landroid/widget/TextView;

    .line 381
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mHourDigitImg1:Landroid/view/View;

    .line 382
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mHourDigitImg2:Landroid/view/View;

    .line 384
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mMinDigitImg1:Landroid/view/View;

    .line 385
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mMinDigitImg2:Landroid/view/View;

    .line 387
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mAMPMImg:Landroid/view/View;

    .line 390
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->removeAllViews()V

    .line 395
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 316
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 318
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 322
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 323
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->destroy()V

    .line 339
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 310
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 312
    return-void
.end method

.method protected settingForCustomize()V
    .registers 1

    .prologue
    .line 306
    return-void
.end method

.method protected startClock()V
    .registers 6

    .prologue
    .line 222
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 225
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->updateTime()V

    .line 233
    return-void
.end method

.method public updateTime()V
    .registers 5

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 251
    :try_start_9
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->handler:Landroid/os/Handler;

    const/16 v3, 0x2c9

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->handler:Landroid/os/Handler;

    const/16 v3, 0x38f

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_24

    .line 259
    :goto_23
    return-void

    .line 254
    :catch_24
    move-exception v0

    .line 257
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SkyVisualDigitalClock"

    const-string v2, "Handler Exception - Just Clean"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method updateTime(Ljava/util/Calendar;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDigitalClock;->updateTime()V

    .line 241
    return-void
.end method
