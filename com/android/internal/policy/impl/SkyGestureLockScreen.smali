.class public Lcom/android/internal/policy/impl/SkyGestureLockScreen;
.super Landroid/widget/LinearLayout;
.source "SkyGestureLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/internal/policy/impl/KeyguardStatusViewManager$CommonLockScreenCallback;
.implements Lcom/android/internal/policy/impl/KeyguardStatusViewManager$MissedCommInfo;
.implements Lcom/android/internal/policy/impl/KeyguardStatusViewManager$SkyLockScreenCallback;


# static fields
.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final MASTER_STREAM_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SkyGestureLockScreen"


# instance fields
.field final MAX_LOCK_VOLUME:F

.field final MIN_LOCK_VOLUME:F

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mEnableHandler:Landroid/os/Handler;

.field private mGestureOverlayListener:Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;

.field private mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;

.field private mHandler:Landroid/os/Handler;

.field private mHelpTextView:Landroid/widget/TextView;

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mRecognizedFailR1:Ljava/lang/Runnable;

.field private mRecognizedFailR2:Ljava/lang/Runnable;

.field private mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

.field private mSoundId_new:I

.field private mSoundId_old:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mTimeView:Lcom/android/internal/widget/SkyGestureTimeView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 14
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mHandler:Landroid/os/Handler;

    .line 73
    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->MIN_LOCK_VOLUME:F

    .line 74
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->MAX_LOCK_VOLUME:F

    .line 234
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mEnableHandler:Landroid/os/Handler;

    .line 237
    new-instance v0, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen$1;-><init>(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayListener:Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;

    .line 86
    iput-object p3, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    iput-object p4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 88
    iput-object p5, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 90
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mCreationOrientation:I

    .line 92
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mKeyboardHidden:I

    .line 100
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 101
    .local v6, inflater:Landroid/view/LayoutInflater;
    const-string v0, "SkyGestureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creation orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const v0, 0x1090066

    invoke-virtual {v6, v0, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 107
    const v0, 0x1020064

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkyGestureTimeView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mTimeView:Lcom/android/internal/widget/SkyGestureTimeView;

    .line 108
    const v0, 0x102033d

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mHelpTextView:Landroid/widget/TextView;

    .line 111
    const v0, 0x102033e

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkyGestureOverlayView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;

    .line 112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->settingGestureOverlayView()V

    .line 115
    const v0, 0x102033f

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkyGestureSlideView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/SkyGestureSlideView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    if-eqz v0, :cond_b5

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    const/16 v1, 0x6e

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMissedCallCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/SkyGestureSlideView;->setEvent(II)V

    .line 122
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    const/16 v1, 0x6f

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnreadMsgCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/SkyGestureSlideView;->setEvent(II)V

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    const/16 v1, 0x70

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnreadEmailCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/SkyGestureSlideView;->setEvent(II)V

    .line 129
    :cond_b5
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_c0

    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v7, v7, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSoundPool:Landroid/media/SoundPool;

    .line 130
    :cond_c0
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSoundPool:Landroid/media/SoundPool;

    const-string v1, "/system/media/audio/hold/hold_fail.ogg"

    invoke-virtual {v0, v1, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSoundId_new:I

    .line 133
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 136
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->setFocusable(Z)V

    .line 137
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->setFocusableInTouchMode(Z)V

    .line 138
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->setDescendantFocusability(I)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->playGestureErrorSound()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mRecognizedFailR1:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/SkyGestureLockScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mRecognizedFailR1:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mHelpTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mRecognizedFailR2:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/SkyGestureLockScreen;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mRecognizedFailR2:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Lcom/android/internal/widget/SkyGestureOverlayView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mEnableHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->goToUnlock()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/SkyGestureLockScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/SkyGestureLockScreen;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->goToUnlock(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private cleanUpCustomResources()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 395
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSoundPool:Landroid/media/SoundPool;

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SkyGestureSlideView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 399
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    .line 401
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/SkyGestureOverlayView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayListener:Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyGestureOverlayView;->removeOnGesturePerformedListener(Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;)V

    .line 403
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;

    .line 404
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayListener:Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;

    .line 406
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mTimeView:Lcom/android/internal/widget/SkyGestureTimeView;

    .line 407
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mHelpTextView:Landroid/widget/TextView;

    .line 409
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mHandler:Landroid/os/Handler;

    .line 410
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mVibrator:Landroid/os/Vibrator;

    .line 412
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mRecognizedFailR1:Ljava/lang/Runnable;

    .line 413
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mRecognizedFailR2:Ljava/lang/Runnable;

    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->cleanUp()V

    .line 418
    return-void
.end method

.method private getSoundVolume()F
    .registers 10

    .prologue
    const/4 v7, 0x2

    .line 343
    const/4 v3, 0x0

    .line 345
    .local v3, soundVolume:F
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 346
    .local v0, audioManager:Landroid/media/AudioManager;
    if-nez v0, :cond_17

    const-string v5, "SkyGestureLockScreen"

    const-string v6, "AudioManager for Gesture Error is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_17
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    .line 349
    .local v1, masterStreamMaxVolume:I
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 350
    .local v2, masterStreamVolume:I
    if-nez v2, :cond_23

    move v4, v3

    .line 356
    .end local v3           #soundVolume:F
    .local v4, soundVolume:F
    :goto_22
    return v4

    .line 353
    .end local v4           #soundVolume:F
    .restart local v3       #soundVolume:F
    :cond_23
    const v5, 0x3d4ccccd

    const v6, 0x3eb33333

    int-to-float v7, v2

    int-to-float v8, v1

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float v3, v5, v6

    move v4, v3

    .line 356
    .end local v3           #soundVolume:F
    .restart local v4       #soundVolume:F
    goto :goto_22
.end method

.method private goToUnlock()V
    .registers 3

    .prologue
    .line 219
    const-string v0, "SkyGestureLockScreen"

    const-string v1, "goToUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-wide/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->vibrate(J)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 224
    return-void
.end method

.method private goToUnlock(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "intentAction"
    .parameter "intentType"

    .prologue
    .line 227
    const-string v0, "SkyGestureLockScreen"

    const-string v1, "goToUnlock(action, type)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-wide/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->vibrate(J)V

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method private playGestureErrorSound()V
    .registers 8

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->getSoundVolume()F

    move-result v2

    .line 361
    .local v2, soundVolume:F
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSoundId_old:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSoundId_new:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSoundId_old:I

    .line 383
    return-void
.end method

.method private settingGestureOverlayView()V
    .registers 7

    .prologue
    .line 326
    const v4, 0x102033b

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 327
    .local v2, paperView:Landroid/widget/FrameLayout;
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 329
    .local v1, paperParam:Landroid/view/ViewGroup$LayoutParams;
    const v4, 0x102033e

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 330
    .local v0, gestureView:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 331
    .local v3, param:Landroid/view/ViewGroup$LayoutParams;
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 332
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 334
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SkyGestureOverlayView;->setGestureStrokeSquarenessTreshold(F)V

    .line 338
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;

    invoke-virtual {v4, p0}, Lcom/android/internal/widget/SkyGestureOverlayView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 339
    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayListener:Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SkyGestureOverlayView;->addOnGesturePerformedListener(Lcom/android/internal/widget/SkyGestureOverlayView$OnGesturePerformedListener;)V

    .line 340
    return-void
.end method

.method private declared-synchronized vibrate(J)V
    .registers 5
    .parameter "duration"

    .prologue
    .line 386
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_13

    .line 387
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mVibrator:Landroid/os/Vibrator;

    .line 389
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 390
    monitor-exit p0

    return-void

    .line 386
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 448
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 449
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 450
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 452
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->cleanUpCustomResources()V

    .line 453
    return-void
.end method

.method public disableUnlockWidget()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    .line 516
    const v1, 0x102033c

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 517
    .local v0, helpView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SkyGestureOverlayView;->setVisibility(I)V

    .line 518
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SkyGestureSlideView;->setVisibility(I)V

    .line 519
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 520
    return-void
.end method

.method public enableUnlockWidget()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 508
    const v1, 0x102033c

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 509
    .local v0, helpView:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SkyGestureOverlayView;->setVisibility(I)V

    .line 510
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SkyGestureSlideView;->setVisibility(I)V

    .line 511
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 512
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 197
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->updateConfiguration()V

    .line 204
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->updateConfiguration()V

    .line 216
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 165
    const/16 v0, 0xfc

    if-ne p1, v0, :cond_9

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 170
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 430
    const-string v0, "SkyGestureLockScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 433
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 437
    const-string v0, "SkyGestureLockScreen"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mGestureOverlayView:Lcom/android/internal/widget/SkyGestureOverlayView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyGestureOverlayView;->setEnabled(Z)V

    .line 443
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 151
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_14

    .line 159
    :goto_7
    const/4 v1, 0x0

    return v1

    .line 153
    :pswitch_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_7

    .line 156
    :catch_f
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 151
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->refreshInfo()V

    .line 147
    return-void
.end method

.method public refreshInfo()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 486
    const v2, 0x102033a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 487
    .local v1, emergencyCallView:Landroid/view/View;
    const v2, 0x10202aa

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 489
    .local v0, emergencyCallButton:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1e

    .line 490
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 491
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mTimeView:Lcom/android/internal/widget/SkyGestureTimeView;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SkyGestureTimeView;->showRightView(Z)V

    .line 496
    :goto_1d
    return-void

    .line 493
    :cond_1e
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mTimeView:Lcom/android/internal/widget/SkyGestureTimeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SkyGestureTimeView;->showRightView(Z)V

    goto :goto_1d
.end method

.method public updateBatteryInfo(ZLjava/lang/String;I)V
    .registers 6
    .parameter "showBatteryInfo"
    .parameter "batteryString"
    .parameter "batteryLevel"

    .prologue
    .line 524
    const v1, 0x10203d9

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 526
    .local v0, batteryTextView:Landroid/widget/TextView;
    if-nez v0, :cond_c

    .line 535
    :goto_b
    return-void

    .line 528
    :cond_c
    if-eqz p1, :cond_16

    .line 529
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    .line 532
    :cond_16
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b
.end method

.method updateConfiguration()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 174
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 175
    .local v2, newConfig:Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    iget v4, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mCreationOrientation:I

    if-eq v3, v4, :cond_14

    .line 176
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v3, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 181
    :cond_14
    const v3, 0x10202aa

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 183
    .local v0, emergencyCallButton:Landroid/widget/Button;
    const-string v3, "SkyGestureLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locale-language = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v3, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ko"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 186
    .local v1, isKo:Z
    if-eqz v1, :cond_4f

    .line 187
    const/high16 v3, 0x4150

    invoke-virtual {v0, v6, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 193
    :goto_4e
    return-void

    .line 190
    :cond_4f
    const/high16 v3, 0x4120

    invoke-virtual {v0, v6, v3}, Landroid/widget/Button;->setTextSize(IF)V

    goto :goto_4e
.end method

.method public updateMissedCommInfo(II)V
    .registers 6
    .parameter "whichInfo"
    .parameter "count"

    .prologue
    .line 459
    const-string v0, "SkyGestureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh missed comm info ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    if-nez v0, :cond_2d

    .line 481
    :goto_2c
    return-void

    .line 465
    :cond_2d
    packed-switch p1, :pswitch_data_a4

    goto :goto_2c

    .line 467
    :pswitch_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/SkyGestureSlideView;->setEvent(II)V

    .line 468
    const-string v0, "SkyGestureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set missed call count...("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 472
    :pswitch_57
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/SkyGestureSlideView;->setEvent(II)V

    .line 473
    const-string v0, "SkyGestureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set unread message count...("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 477
    :pswitch_7d
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mSlideView:Lcom/android/internal/widget/SkyGestureSlideView;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/widget/SkyGestureSlideView;->setEvent(II)V

    .line 478
    const-string v0, "SkyGestureLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set unread e-mail count...("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 465
    nop

    :pswitch_data_a4
    .packed-switch 0x701
        :pswitch_31
        :pswitch_57
        :pswitch_7d
    .end packed-switch
.end method

.method public updateRoamingStateChanged(ZZ)V
    .registers 4
    .parameter "roamingState"
    .parameter "showDualClock"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mTimeView:Lcom/android/internal/widget/SkyGestureTimeView;

    if-eqz v0, :cond_9

    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyGestureLockScreen;->mTimeView:Lcom/android/internal/widget/SkyGestureTimeView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/SkyGestureTimeView;->setRoaming(ZZ)V

    .line 504
    :cond_9
    return-void
.end method

.method public updateSimStateChanged(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;)V
    .registers 2
    .parameter "statusMode"

    .prologue
    .line 540
    return-void
.end method
