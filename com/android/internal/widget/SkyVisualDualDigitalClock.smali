.class public Lcom/android/internal/widget/SkyVisualDualDigitalClock;
.super Landroid/widget/LinearLayout;
.source "SkyVisualDualDigitalClock.java"


# static fields
.field private static final MSG_CLOCK_UPDATE:I = 0x2c9

.field private static final MSG_DATE_UPDATE:I = 0x38f

.field private static final TAG:Ljava/lang/String; = "SkyVisualDualDigitalClock"

.field private static mClockImgNum:[I


# instance fields
.field handler:Landroid/os/Handler;

.field private isConfigurationChanged:Z

.field mAMPMImgLocal:Landroid/view/View;

.field mAMPMImgSeoul:Landroid/view/View;

.field private mCalendarLocal:Ljava/util/Calendar;

.field private mCalendarSeoul:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field mContext:Landroid/content/Context;

.field mCurrentClockLayout:Landroid/widget/RelativeLayout;

.field protected mDateFormatString:Ljava/lang/String;

.field mDateTextViewLocal:Landroid/widget/TextView;

.field mDateTextViewSeoul:Landroid/widget/TextView;

.field mHourDigitImg1Local:Landroid/view/View;

.field mHourDigitImg1Seoul:Landroid/view/View;

.field mHourDigitImg2Local:Landroid/view/View;

.field mHourDigitImg2Seoul:Landroid/view/View;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mMinDigitImg1Local:Landroid/view/View;

.field mMinDigitImg1Seoul:Landroid/view/View;

.field mMinDigitImg2Local:Landroid/view/View;

.field mMinDigitImg2Seoul:Landroid/view/View;

.field mSeoulClockLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 75
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mClockImgNum:[I

    return-void

    :array_a
    .array-data 0x4
        0x4et 0x8t 0x8t 0x1t
        0x4ft 0x8t 0x8t 0x1t
        0x50t 0x8t 0x8t 0x1t
        0x51t 0x8t 0x8t 0x1t
        0x52t 0x8t 0x8t 0x1t
        0x53t 0x8t 0x8t 0x1t
        0x54t 0x8t 0x8t 0x1t
        0x55t 0x8t 0x8t 0x1t
        0x56t 0x8t 0x8t 0x1t
        0x57t 0x8t 0x8t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 219
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mContext:Landroid/content/Context;

    .line 220
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->init()V

    .line 221
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->isConfigurationChanged:Z

    .line 92
    new-instance v0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock$1;-><init>(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->handler:Landroid/os/Handler;

    .line 270
    new-instance v0, Lcom/android/internal/widget/SkyVisualDualDigitalClock$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock$2;-><init>(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)V

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mContext:Landroid/content/Context;

    .line 229
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->init()V

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->settingForCustomize()V

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/SkyVisualDualDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100()[I
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mClockImgNum:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->getSeoulTime()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarSeoul:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/widget/SkyVisualDualDigitalClock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarSeoul:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/widget/SkyVisualDualDigitalClock;)Ljava/text/SimpleDateFormat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/SkyVisualDualDigitalClock;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->isConfigurationChanged:Z

    return p1
.end method

.method private getSeoulTime()J
    .registers 12

    .prologue
    .line 351
    const-string v7, "Asia/Seoul"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    .line 352
    .local v6, zone_seoul:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 353
    .local v1, offset_default:I
    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 354
    .local v2, offset_seoul:I
    sub-int v0, v2, v1

    .line 360
    .local v0, offset:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 361
    .local v3, p:I
    const-wide/16 v4, 0x0

    .line 363
    .local v4, seoulTime:J
    if-gez v0, :cond_4e

    .line 364
    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    int-to-long v9, v3

    sub-long v4, v7, v9

    .line 369
    :goto_31
    invoke-virtual {v6}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v7

    if-eqz v7, :cond_4d

    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 371
    invoke-virtual {v6}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v7

    const v8, 0x36ee80

    div-int/2addr v7, v8

    int-to-long v7, v7

    add-long/2addr v4, v7

    .line 373
    :cond_4d
    return-wide v4

    .line 366
    :cond_4e
    iget-object v7, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    int-to-long v9, v3

    add-long v4, v7, v9

    goto :goto_31
.end method

.method private init()V
    .registers 7

    .prologue
    const/4 v5, -0x2

    .line 234
    iget-object v3, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 235
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x10900dd

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 236
    .local v2, v:Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 237
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->initViews()V

    .line 240
    return-void
.end method

.method private initViews()V
    .registers 2

    .prologue
    .line 244
    const v0, 0x102040e

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateTextViewSeoul:Landroid/widget/TextView;

    .line 246
    const v0, 0x1020408

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg1Seoul:Landroid/view/View;

    .line 247
    const v0, 0x1020409

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg2Seoul:Landroid/view/View;

    .line 249
    const v0, 0x102040a

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg1Seoul:Landroid/view/View;

    .line 250
    const v0, 0x102040b

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg2Seoul:Landroid/view/View;

    .line 252
    const v0, 0x102040c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgSeoul:Landroid/view/View;

    .line 255
    const v0, 0x1020416

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateTextViewLocal:Landroid/widget/TextView;

    .line 256
    const v0, 0x1020410

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg1Local:Landroid/view/View;

    .line 257
    const v0, 0x1020411

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg2Local:Landroid/view/View;

    .line 259
    const v0, 0x1020412

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg1Local:Landroid/view/View;

    .line 260
    const v0, 0x1020413

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg2Local:Landroid/view/View;

    .line 262
    const v0, 0x1020414

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgLocal:Landroid/view/View;

    .line 264
    const v0, 0x1020407

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mSeoulClockLayout:Landroid/widget/RelativeLayout;

    .line 265
    const v0, 0x102040f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCurrentClockLayout:Landroid/widget/RelativeLayout;

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->startClock()V

    .line 268
    return-void
.end method

.method private setTimeFormat()V
    .registers 1

    .prologue
    .line 506
    return-void
.end method


# virtual methods
.method public changeDateFormat(Ljava/lang/String;)V
    .registers 2
    .parameter "newFormat"

    .prologue
    .line 511
    return-void
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 515
    const-string v0, "SkyVisualDualDigitalClock"

    const-string v1, "All destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 519
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->handler:Landroid/os/Handler;

    const/16 v1, 0x2c9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->handler:Landroid/os/Handler;

    const/16 v1, 0x38f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 521
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->handler:Landroid/os/Handler;

    .line 524
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateTextViewSeoul:Landroid/widget/TextView;

    if-eqz v0, :cond_2a

    .line 525
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateTextViewSeoul:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 526
    :cond_2a
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg1Seoul:Landroid/view/View;

    if-eqz v0, :cond_33

    .line 527
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg1Seoul:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 528
    :cond_33
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg2Seoul:Landroid/view/View;

    if-eqz v0, :cond_3c

    .line 529
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg2Seoul:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 530
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg1Seoul:Landroid/view/View;

    if-eqz v0, :cond_45

    .line 531
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg1Seoul:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 532
    :cond_45
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg2Seoul:Landroid/view/View;

    if-eqz v0, :cond_4e

    .line 533
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg2Seoul:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 534
    :cond_4e
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgSeoul:Landroid/view/View;

    if-eqz v0, :cond_57

    .line 535
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgSeoul:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 537
    :cond_57
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateTextViewLocal:Landroid/widget/TextView;

    if-eqz v0, :cond_60

    .line 538
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateTextViewLocal:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    :cond_60
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg1Local:Landroid/view/View;

    if-eqz v0, :cond_69

    .line 540
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg1Local:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 541
    :cond_69
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg2Local:Landroid/view/View;

    if-eqz v0, :cond_72

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg2Local:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 543
    :cond_72
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg1Local:Landroid/view/View;

    if-eqz v0, :cond_7b

    .line 544
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg1Local:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 545
    :cond_7b
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg2Local:Landroid/view/View;

    if-eqz v0, :cond_84

    .line 546
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg2Local:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 547
    :cond_84
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgLocal:Landroid/view/View;

    if-eqz v0, :cond_8d

    .line 548
    iget-object v0, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgLocal:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 551
    :cond_8d
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateTextViewSeoul:Landroid/widget/TextView;

    .line 553
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg1Seoul:Landroid/view/View;

    .line 554
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg2Seoul:Landroid/view/View;

    .line 556
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg1Seoul:Landroid/view/View;

    .line 557
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg2Seoul:Landroid/view/View;

    .line 559
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgSeoul:Landroid/view/View;

    .line 561
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mDateTextViewLocal:Landroid/widget/TextView;

    .line 563
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg1Local:Landroid/view/View;

    .line 564
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mHourDigitImg2Local:Landroid/view/View;

    .line 566
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg1Local:Landroid/view/View;

    .line 567
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mMinDigitImg2Local:Landroid/view/View;

    .line 569
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mAMPMImgLocal:Landroid/view/View;

    .line 571
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mSeoulClockLayout:Landroid/widget/RelativeLayout;

    .line 572
    iput-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCurrentClockLayout:Landroid/widget/RelativeLayout;

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->removeAllViews()V

    .line 579
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 475
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 477
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 481
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 482
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->destroy()V

    .line 497
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 469
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 471
    return-void
.end method

.method public setDualClock(Z)V
    .registers 7
    .parameter "isDualClock"

    .prologue
    const/16 v4, 0x24

    const/4 v3, 0x0

    .line 583
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x260

    const/16 v2, 0x5e

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 585
    .local v0, tempParam:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz p1, :cond_1e

    .line 587
    const/16 v1, 0xc6

    invoke-virtual {v0, v4, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 588
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCurrentClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 589
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mSeoulClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 598
    :goto_1d
    return-void

    .line 593
    :cond_1e
    const/16 v1, 0x8c

    invoke-virtual {v0, v4, v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 594
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCurrentClockLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 595
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mSeoulClockLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1d
.end method

.method protected settingForCustomize()V
    .registers 1

    .prologue
    .line 465
    return-void
.end method

.method protected startClock()V
    .registers 6

    .prologue
    .line 304
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;

    .line 305
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarSeoul:Ljava/util/Calendar;

    .line 306
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarSeoul:Ljava/util/Calendar;

    invoke-direct {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->getSeoulTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 308
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 310
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 317
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->updateTime()V

    .line 318
    return-void
.end method

.method public updateTime()V
    .registers 5

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 339
    :try_start_9
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->handler:Landroid/os/Handler;

    const/16 v3, 0x2c9

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 340
    iget-object v1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->handler:Landroid/os/Handler;

    const/16 v3, 0x38f

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_24

    .line 347
    :goto_23
    return-void

    .line 342
    :catch_24
    move-exception v0

    .line 344
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    const-string v1, "SkyVisualDualDigitalClock"

    const-string v2, "Handler Exception - Just Clean"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method updateTime(Ljava/util/Calendar;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->mCalendarLocal:Ljava/util/Calendar;

    .line 325
    invoke-virtual {p0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->updateTime()V

    .line 326
    return-void
.end method
