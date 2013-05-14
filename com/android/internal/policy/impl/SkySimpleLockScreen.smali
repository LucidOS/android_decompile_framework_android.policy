.class public Lcom/android/internal/policy/impl/SkySimpleLockScreen;
.super Landroid/widget/LinearLayout;
.source "SkySimpleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardStatusViewManager$CommonLockScreenCallback;
.implements Lcom/android/internal/policy/impl/KeyguardStatusViewManager$SkyLockScreenCallback;


# static fields
.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final MAX_UNLOCK_SWITCH_IMAGE:I = 0xf

.field private static final TAG:Ljava/lang/String; = "SkySimpleLockScreen"


# instance fields
.field private final COUNT_DOWN_INTERVAL:I

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mCurrentIndex:I

.field private mEnableMenuKeyInLockScreen:Z

.field private mHandler:Landroid/os/Handler;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

.field private mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

.field private mSimLockState:Z

.field private mStartY:F

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mTmpTime:J

.field private mUnlockArrow:Landroid/widget/ImageView;

.field private mUnlockSwitch:Landroid/widget/ImageView;

.field private mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private mUnlockSwitchOff:Z

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVibrator:Landroid/os/Vibrator;

.field private unlockSwitchImg:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 14
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 130
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mSimLockState:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 72
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchOff:Z

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mStartY:F

    .line 74
    iput v5, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mTmpTime:J

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mHandler:Landroid/os/Handler;

    .line 83
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->COUNT_DOWN_INTERVAL:I

    .line 86
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_d0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->unlockSwitchImg:[I

    .line 132
    iput-object p3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 133
    iput-object p4, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 134
    iput-object p5, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->shouldEnableMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 138
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCreationOrientation:I

    .line 140
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mKeyboardHidden:I

    .line 148
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 150
    .local v6, inflater:Landroid/view/LayoutInflater;
    const-string v0, "SkySimpleLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creation orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const v0, 0x1090068

    invoke-virtual {v6, v0, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 155
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->createTimeView()V

    .line 156
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->checkRoaming()V

    .line 158
    const v0, 0x1020349

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockArrow:Landroid/widget/ImageView;

    .line 159
    const v0, 0x1020348

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitch:Landroid/widget/ImageView;

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_90

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10a002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 165
    :cond_90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->initSwitchImage()V

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitch:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 265
    new-instance v0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 272
    :goto_b4
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->setFocusable(Z)V

    .line 273
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->setFocusableInTouchMode(Z)V

    .line 274
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->setDescendantFocusability(I)V

    .line 275
    return-void

    .line 268
    :cond_c0
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    goto :goto_b4

    .line 86
    nop

    :array_d0
    .array-data 0x4
        0x9et 0x6t 0x8t 0x1t
        0x9ft 0x6t 0x8t 0x1t
        0xa0t 0x6t 0x8t 0x1t
        0xa1t 0x6t 0x8t 0x1t
        0xa2t 0x6t 0x8t 0x1t
        0xa3t 0x6t 0x8t 0x1t
        0xa4t 0x6t 0x8t 0x1t
        0xa5t 0x6t 0x8t 0x1t
        0xa6t 0x6t 0x8t 0x1t
        0xa7t 0x6t 0x8t 0x1t
        0xa8t 0x6t 0x8t 0x1t
        0xa9t 0x6t 0x8t 0x1t
        0xaat 0x6t 0x8t 0x1t
        0xabt 0x6t 0x8t 0x1t
        0xact 0x6t 0x8t 0x1t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mSimLockState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/SkySimpleLockScreen;F)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->isChangeSwitchImgIdx(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchOff:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->goToUnlock()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->autoCompleteUnlockSwitch()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->initSwitchImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/SkySimpleLockScreen;F)F
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mStartY:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/SkySimpleLockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$404(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->unlockSwitchImg:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitch:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mTmpTime:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/SkySimpleLockScreen;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-wide p1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mTmpTime:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SkySimpleLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/SkySimpleLockScreen;J)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->vibrate(J)V

    return-void
.end method

.method private autoCompleteUnlockSwitch()V
    .registers 8

    .prologue
    .line 423
    iget v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I

    rsub-int/lit8 v0, v0, 0xf

    add-int/lit8 v6, v0, -0x1

    .line 430
    .local v6, remainCount:I
    new-instance v0, Lcom/android/internal/policy/impl/SkySimpleLockScreen$2;

    add-int/lit8 v1, v6, 0x1

    mul-int/lit8 v1, v1, 0x32

    int-to-long v2, v1

    const-wide/16 v4, 0x32

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/SkySimpleLockScreen$2;-><init>(Lcom/android/internal/policy/impl/SkySimpleLockScreen;JJ)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen$2;->start()Landroid/os/CountDownTimer;

    .line 459
    return-void
.end method

.method private checkRoaming()V
    .registers 4

    .prologue
    .line 497
    const/4 v0, 0x0

    .line 498
    .local v0, roamingState:Z
    const/4 v1, 0x0

    .line 500
    .local v1, showDualClock:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    .line 501
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->checkShowDualClock(Landroid/content/Context;)Z

    move-result v1

    .line 508
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->setRoaming(ZZ)V

    .line 509
    return-void
.end method

.method private createTimeView()V
    .registers 4

    .prologue
    .line 512
    const v0, 0x1020340

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkySimpleDigitalClock;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

    .line 513
    const v0, 0x1020341

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkyRoamingDigitalClock;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10405d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkySimpleDigitalClock;->changeDateFormat(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10405d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->changeDateFormat(Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method private goToUnlock()V
    .registers 3

    .prologue
    .line 558
    const-string v0, "SkySimpleLockScreen"

    const-string v1, "goToUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-wide/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->vibrate(J)V

    .line 563
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_12

    .line 565
    :goto_11
    return-void

    .line 564
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method private initSwitchImage()V
    .registers 5

    .prologue
    .line 395
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 397
    .local v1, pm:Landroid/os/PowerManager;
    if-eqz v1, :cond_21

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_21

    .line 399
    const-string v2, "SkySimpleLockScreen"

    const-string v3, "screen is off, stop animation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 420
    .end local v1           #pm:Landroid/os/PowerManager;
    :goto_20
    return-void

    .line 405
    .restart local v1       #pm:Landroid/os/PowerManager;
    :cond_21
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockArrow:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitch:Landroid/widget/ImageView;

    const v3, 0x10806b8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 410
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3d

    .line 411
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 414
    :cond_3d
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchOff:Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_20

    .line 415
    .end local v1           #pm:Landroid/os/PowerManager;
    :catch_41
    move-exception v0

    .line 417
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SkySimpleLockScreen"

    const-string v3, "Exception in initSwitchImage()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method private isChangeSwitchImgIdx(F)Z
    .registers 7
    .parameter "moveY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    const/4 v1, 0x0

    .line 463
    .local v1, ret:Z
    iget v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mStartY:F

    sub-float/2addr v2, p1

    float-to-int v2, v2

    div-int/lit8 v0, v2, 0xf

    .line 465
    .local v0, curImgIdx:I
    const/16 v2, 0xf

    if-lt v0, v2, :cond_f

    .line 466
    const/16 v0, 0xe

    .line 467
    :cond_f
    if-gtz v0, :cond_12

    .line 468
    const/4 v0, 0x0

    .line 470
    :cond_12
    iget v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I

    if-eq v2, v0, :cond_17

    .line 471
    const/4 v1, 0x1

    .line 474
    :cond_17
    const/4 v2, 0x7

    if-le v0, v2, :cond_28

    .line 475
    iget v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I

    if-ge v0, v2, :cond_23

    .line 476
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchOff:Z

    .line 491
    :cond_20
    :goto_20
    iput v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCurrentIndex:I

    .line 493
    return v1

    .line 478
    :cond_23
    if-ne v1, v4, :cond_20

    .line 480
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchOff:Z

    goto :goto_20

    .line 484
    :cond_28
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchOff:Z

    goto :goto_20
.end method

.method private setRoaming(ZZ)V
    .registers 7
    .parameter "roamingState"
    .parameter "showDualClock"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 525
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    if-nez v1, :cond_b

    .line 544
    :cond_a
    :goto_a
    return-void

    .line 528
    :cond_b
    const v1, 0x10202f6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 530
    .local v0, roamingInfoPane:Landroid/widget/FrameLayout;
    if-eqz p1, :cond_28

    .line 531
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 537
    :goto_19
    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    .line 538
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SkySimpleDigitalClock;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->setVisibility(I)V

    goto :goto_a

    .line 533
    :cond_28
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_19

    .line 541
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SkySimpleDigitalClock;->setVisibility(I)V

    .line 542
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->setVisibility(I)V

    goto :goto_a
.end method

.method private shouldEnableMenuKey()Z
    .registers 7

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 113
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x111001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 114
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 115
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 116
    .local v1, fileOverride:Z
    if-eqz v0, :cond_20

    if-nez v2, :cond_20

    if-eqz v1, :cond_22

    :cond_20
    const/4 v4, 0x1

    :goto_21
    return v4

    :cond_22
    const/4 v4, 0x0

    goto :goto_21
.end method

.method private declared-synchronized vibrate(J)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 547
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_13

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mVibrator:Landroid/os/Vibrator;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1a

    .line 553
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_1d

    .line 555
    :goto_18
    monitor-exit p0

    return-void

    .line 547
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 554
    :catch_1d
    move-exception v0

    goto :goto_18
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 349
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 350
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 351
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 352
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchOff:Z

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1a

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 357
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 359
    :cond_1a
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_25

    .line 360
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 361
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockArrow:Landroid/widget/ImageView;

    .line 363
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitch:Landroid/widget/ImageView;

    if-eqz v0, :cond_30

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitch:Landroid/widget/ImageView;

    .line 368
    :cond_30
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

    .line 369
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    .line 370
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mHandler:Landroid/os/Handler;

    .line 371
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mVibrator:Landroid/os/Vibrator;

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->cleanUp()V

    .line 376
    return-void
.end method

.method public disableUnlockWidget()V
    .registers 6

    .prologue
    .line 594
    const-string v3, "SkySimpleLockScreen"

    const-string v4, "disableUnlockWidget"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mSimLockState:Z

    .line 597
    const v3, 0x1020346

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 598
    .local v1, switchOn:Landroid/widget/ImageView;
    const v3, 0x1020347

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 599
    .local v0, switchOff:Landroid/widget/ImageView;
    const v3, 0x102034a

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 602
    .local v2, unlockGuide:Landroid/widget/TextView;
    const/4 v3, 0x4

    :try_start_26
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 603
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 607
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockArrow:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitch:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_42} :catch_43

    .line 610
    :goto_42
    return-void

    .line 609
    :catch_43
    move-exception v3

    goto :goto_42
.end method

.method public enableUnlockWidget()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 572
    const-string v3, "SkySimpleLockScreen"

    const-string v4, "enableUnlockWidget"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mSimLockState:Z

    .line 575
    const v3, 0x1020346

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 576
    .local v1, switchOn:Landroid/widget/ImageView;
    const v3, 0x1020347

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 577
    .local v0, switchOff:Landroid/widget/ImageView;
    const v3, 0x102034a

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 580
    .local v2, unlockGuide:Landroid/widget/TextView;
    const/4 v3, 0x0

    :try_start_26
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 581
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 582
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 583
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockArrow:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 584
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitch:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->initSwitchImage()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_40} :catch_41

    .line 587
    :goto_40
    return-void

    .line 586
    :catch_41
    move-exception v3

    goto :goto_40
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 303
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 309
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->updateConfiguration()V

    .line 310
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 315
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->updateConfiguration()V

    .line 322
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 285
    const/16 v0, 0xfc

    if-ne p1, v0, :cond_7

    .line 286
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->goToUnlock()V

    .line 289
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    if-eqz v0, :cond_9

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 334
    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_12

    .line 335
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 337
    :cond_12
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    if-eqz v0, :cond_9

    .line 342
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 344
    :cond_9
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->initSwitchImage()V

    .line 345
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasFocus"

    .prologue
    .line 379
    if-eqz p1, :cond_d

    .line 381
    const-string v0, "SkySimpleLockScreen"

    const-string v1, "onWindowFocusChanged mUnlockHindAnim is start!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->initSwitchImage()V

    .line 390
    :cond_c
    :goto_c
    return-void

    .line 385
    :cond_d
    const-string v0, "SkySimpleLockScreen"

    const-string v1, "onWinodwFocusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_c

    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mUnlockSwitchAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_c
.end method

.method public updateBatteryInfo(ZLjava/lang/String;I)V
    .registers 4
    .parameter "showBatteryInfo"
    .parameter "batteryString"
    .parameter "batteryLevel"

    .prologue
    .line 644
    return-void
.end method

.method updateConfiguration()V
    .registers 4

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 294
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_17

    .line 295
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_17

    .line 296
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 299
    :cond_17
    return-void
.end method

.method public updateRoamingStateChanged(ZZ)V
    .registers 7
    .parameter "roamingState"
    .parameter "showDualClock"

    .prologue
    .line 617
    const-string v2, "SkySimpleLockScreen"

    const-string v3, "updateRoamingStateChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->setRoaming(ZZ)V

    .line 626
    if-nez p1, :cond_19

    .line 627
    const v2, 0x1020340

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SkySimpleDigitalClock;

    .line 630
    .local v1, localClock:Lcom/android/internal/widget/SkySimpleDigitalClock;
    invoke-virtual {v1}, Lcom/android/internal/widget/SkySimpleDigitalClock;->updateTime()V

    .line 638
    .end local v1           #localClock:Lcom/android/internal/widget/SkySimpleDigitalClock;
    :goto_18
    return-void

    .line 632
    :cond_19
    const v2, 0x1020341

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkySimpleLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkyRoamingDigitalClock;

    .line 635
    .local v0, dualClock:Lcom/android/internal/widget/SkyRoamingDigitalClock;
    invoke-virtual {v0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->updateTime()V

    goto :goto_18
.end method

.method public updateSimStateChanged(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;)V
    .registers 4
    .parameter "statusMode"

    .prologue
    .line 613
    const-string v0, "SkySimpleLockScreen"

    const-string v1, "updateSimStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void
.end method
