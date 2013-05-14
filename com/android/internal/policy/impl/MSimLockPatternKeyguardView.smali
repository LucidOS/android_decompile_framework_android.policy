.class public Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;
.super Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.source "MSimLockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MSimLockPatternKeyguardView"


# instance fields
.field private mIsPinUnlockCancelled:[Z

.field private mIsPukUnlockCancelled:[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
    .registers 8
    .parameter "context"
    .parameter "callback"
    .parameter "updateMonitor"
    .parameter "lockPatternUtils"
    .parameter "controller"

    .prologue
    const/4 v1, 0x2

    .line 88
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V

    .line 55
    new-array v0, v1, [Z

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z

    .line 56
    new-array v0, v1, [Z

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z

    .line 90
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 91
    return-void

    .line 55
    nop

    :array_1c
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 56
    nop

    :array_22
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Lcom/android/internal/telephony/IccCard$State;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z

    return-object v0
.end method

.method private getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    .registers 4

    .prologue
    .line 505
    const/4 v1, 0x0

    .line 506
    .local v1, isPukRequired:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 507
    if-nez v1, :cond_14

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_14
    const/4 v1, 0x1

    .line 508
    :goto_15
    if-eqz v1, :cond_2c

    .line 510
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v2

    if-nez v2, :cond_27

    if-nez v1, :cond_27

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 512
    :cond_27
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 517
    :goto_29
    return-object v2

    .line 507
    :cond_2a
    const/4 v1, 0x0

    goto :goto_15

    .line 506
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 514
    :cond_2f
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_39

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mShowLockBeforeUnlock:Z

    if-eqz v2, :cond_3c

    .line 515
    :cond_39
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_29

    .line 517
    :cond_3c
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    goto :goto_29
.end method

.method private getPinLockedSubscription()I
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 323
    const/4 v1, 0x1

    .line 325
    .local v1, subscription:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_1b

    .line 326
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPinLocked(I)Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_29

    .line 327
    move v1, v0

    .line 333
    :cond_1b
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPinLocked(I)Z

    move-result v4

    if-eqz v4, :cond_2c

    move v1, v2

    .line 338
    .end local v1           #subscription:I
    :cond_28
    :goto_28
    return v1

    .line 325
    .restart local v1       #subscription:I
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 335
    :cond_2c
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPinLocked(I)Z

    move-result v2

    if-eqz v2, :cond_28

    move v1, v3

    .line 336
    goto :goto_28
.end method

.method private getPukLockedSubscription()I
    .registers 4

    .prologue
    .line 350
    const/4 v1, 0x0

    .line 352
    .local v1, subscription:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_19

    .line 353
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_1a

    .line 354
    move v1, v0

    .line 358
    :cond_19
    return v1

    .line 352
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    .registers 3
    .parameter "subscription"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    return-object v0
.end method

.method private isSimPinLocked(I)Z
    .registers 4
    .parameter "subscription"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isSimPukLocked(I)Z
    .registers 4
    .parameter "subscription"

    .prologue
    .line 370
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;
    .registers 19
    .parameter "unlockMode"

    .prologue
    .line 427
    const/4 v3, 0x0

    .line 429
    .local v3, unlockView:Landroid/view/View;
    const-string v4, "MSimLockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createUnlockScreenFor("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "): mEnableFallback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_6a

    .line 433
    new-instance v2, Lcom/android/internal/policy/impl/PatternUnlockScreen;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    .end local v3           #unlockView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v8

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/policy/impl/PatternUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;I)V

    .line 440
    .local v2, view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->setEnableFallback(Z)V

    .line 441
    move-object v3, v2

    .line 493
    .end local v2           #view:Lcom/android/internal/policy/impl/PatternUnlockScreen;
    .restart local v3       #unlockView:Landroid/view/View;
    :goto_58
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->initializeTransportControlView(Landroid/view/View;)V

    .line 494
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->initializeBiometricUnlockView(Landroid/view/View;)V

    .line 496
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUnlockScreenMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object v4, v3

    .line 497
    :goto_69
    return-object v4

    .line 442
    :cond_6a
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_a6

    .line 443
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getPukLockedSubscription()I

    move-result v9

    .line 444
    .local v9, subscription:I
    const-string v4, "MSimLockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display SimPukUnlockScreen for sub :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v3, Lcom/android/internal/policy/impl/SimPukUnlockScreen;

    .end local v3           #unlockView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/SimPukUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 451
    .restart local v3       #unlockView:Landroid/view/View;
    goto :goto_58

    .end local v9           #subscription:I
    :cond_a6
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_e3

    .line 452
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getPinLockedSubscription()I

    move-result v9

    .line 453
    .restart local v9       #subscription:I
    const-string v4, "MSimLockPatternKeyguardView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display SimUnlockScreen for sub :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    new-instance v3, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    .end local v3           #unlockView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 460
    .restart local v3       #unlockView:Landroid/view/View;
    goto/16 :goto_58

    .end local v9           #subscription:I
    :cond_e3
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_117

    .line 462
    :try_start_e9
    new-instance v10, Lcom/android/internal/policy/impl/AccountUnlockScreen;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/policy/impl/AccountUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    :try_end_102
    .catch Ljava/lang/IllegalStateException; {:try_start_e9 .. :try_end_102} :catch_105

    .end local v3           #unlockView:Landroid/view/View;
    .local v10, unlockView:Landroid/view/View;
    move-object v3, v10

    .line 482
    .end local v10           #unlockView:Landroid/view/View;
    .restart local v3       #unlockView:Landroid/view/View;
    goto/16 :goto_58

    .line 468
    :catch_105
    move-exception v16

    .line 469
    .local v16, e:Ljava/lang/IllegalStateException;
    const-string v4, "MSimLockPatternKeyguardView"

    const-string v5, "Couldn\'t instantiate AccountUnlockScreen (IAccountsService isn\'t available)"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->createUnlockScreenFor(Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_69

    .line 483
    .end local v16           #e:Ljava/lang/IllegalStateException;
    :cond_117
    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_138

    .line 484
    new-instance v3, Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    .end local v3           #unlockView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    .restart local v3       #unlockView:Landroid/view/View;
    goto/16 :goto_58

    .line 491
    :cond_138
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown unlock mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    .registers 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 527
    const/4 v2, 0x0

    .local v2, isPinLocked:Z
    const/4 v4, 0x0

    .line 528
    .local v4, isPukLocked:Z
    const/4 v3, 0x0

    .local v3, isPinRequired:Z
    const/4 v5, 0x0

    .line 532
    .local v5, isPukRequired:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v9

    if-ge v1, v9, :cond_4c

    .line 533
    if-nez v2, :cond_1f

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPinLocked(I)Z

    move-result v9

    if-eqz v9, :cond_44

    iget-object v9, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z

    aget-boolean v9, v9, v1

    if-nez v9, :cond_44

    :cond_1f
    move v2, v8

    .line 534
    :goto_20
    if-nez v4, :cond_2e

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v9

    if-eqz v9, :cond_46

    iget-object v9, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z

    aget-boolean v9, v9, v1

    if-nez v9, :cond_46

    :cond_2e
    move v4, v8

    .line 535
    :goto_2f
    if-nez v3, :cond_37

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPinLocked(I)Z

    move-result v9

    if-eqz v9, :cond_48

    :cond_37
    move v3, v8

    .line 536
    :goto_38
    if-nez v5, :cond_40

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v9

    if-eqz v9, :cond_4a

    :cond_40
    move v5, v8

    .line 532
    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_44
    move v2, v7

    .line 533
    goto :goto_20

    :cond_46
    move v4, v7

    .line 534
    goto :goto_2f

    :cond_48
    move v3, v7

    .line 535
    goto :goto_38

    :cond_4a
    move v5, v7

    .line 536
    goto :goto_41

    .line 539
    :cond_4c
    if-eqz v2, :cond_51

    .line 540
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 571
    .local v0, currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :goto_50
    return-object v0

    .line 541
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_51
    if-eqz v4, :cond_56

    .line 542
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPuk:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_50

    .line 543
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_56
    if-eqz v3, :cond_5d

    if-eqz v5, :cond_5d

    .line 544
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->SimPin:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_50

    .line 546
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_5d
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v6

    .line 547
    .local v6, mode:I
    sparse-switch v6, :sswitch_data_a0

    .line 568
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown unlock mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 552
    :sswitch_7f
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Password:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 553
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_50

    .line 556
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :sswitch_82
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 558
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    if-nez v7, :cond_96

    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v7

    if-eqz v7, :cond_99

    .line 559
    :cond_96
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Account:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_50

    .line 561
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_99
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Pattern:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_50

    .line 564
    .end local v0           #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    :cond_9c
    sget-object v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    .line 566
    .restart local v0       #currentMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    goto :goto_50

    .line 547
    nop

    :sswitch_data_a0
    .sparse-switch
        0x0 -> :sswitch_82
        0x10000 -> :sswitch_82
        0x20000 -> :sswitch_7f
        0x40000 -> :sswitch_7f
        0x50000 -> :sswitch_7f
        0x60000 -> :sswitch_7f
    .end sparse-switch
.end method

.method protected isSecure()Z
    .registers 7

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v2

    .line 396
    .local v2, unlockMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    const/4 v1, 0x0

    .line 397
    .local v1, secure:Z
    sget-object v3, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$2;->$SwitchMap$com$android$internal$policy$impl$LockPatternKeyguardView$UnlockMode:[I

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_58

    .line 420
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown unlock mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 399
    :pswitch_29
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    .line 422
    :cond_2f
    :goto_2f
    :pswitch_2f
    return v1

    .line 403
    :pswitch_30
    const/4 v0, 0x0

    .local v0, i:I
    :goto_31
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_2f

    .line 406
    if-nez v1, :cond_47

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v3

    if-eqz v3, :cond_4d

    :cond_47
    const/4 v1, 0x1

    .line 407
    :goto_48
    if-nez v1, :cond_2f

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 406
    :cond_4d
    const/4 v1, 0x0

    goto :goto_48

    .line 411
    .end local v0           #i:I
    :pswitch_4f
    const/4 v1, 0x1

    .line 412
    goto :goto_2f

    .line 414
    :pswitch_51
    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    .line 415
    goto :goto_2f

    .line 397
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_29
        :pswitch_30
        :pswitch_30
        :pswitch_4f
        :pswitch_51
        :pswitch_2f
    .end packed-switch
.end method

.method protected keyguardScreenCallback()V
    .registers 2

    .prologue
    .line 95
    new-instance v0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;-><init>(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 313
    return-void
.end method

.method protected stuckOnLockScreenBecauseSimMissing()Z
    .registers 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 64
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRequiresSim:Z

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v4

    if-nez v4, :cond_30

    move v1, v2

    .line 65
    .local v1, result:Z
    :goto_f
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_2f

    .line 68
    if-eqz v1, :cond_32

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_2c

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_32

    :cond_2c
    move v1, v2

    .line 70
    :goto_2d
    if-nez v1, :cond_34

    .line 72
    :cond_2f
    return v1

    .end local v0           #i:I
    .end local v1           #result:Z
    :cond_30
    move v1, v3

    .line 64
    goto :goto_f

    .restart local v0       #i:I
    .restart local v1       #result:Z
    :cond_32
    move v1, v3

    .line 68
    goto :goto_2d

    .line 65
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public wakeWhenReadyTq(I)V
    .registers 7
    .parameter "keyCode"

    .prologue
    const/4 v2, 0x0

    .line 376
    const/4 v1, 0x1

    .line 377
    .local v1, isPukRequired:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_18

    .line 378
    if-eqz v1, :cond_37

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z

    move-result v3

    if-eqz v3, :cond_37

    const/4 v1, 0x1

    .line 379
    :goto_16
    if-nez v1, :cond_39

    .line 382
    :cond_18
    const/16 v3, 0x52

    if-ne p1, v3, :cond_3c

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_3c

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v3, v4, :cond_3c

    if-nez v1, :cond_3c

    .line 385
    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 386
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 391
    :goto_36
    return-void

    :cond_37
    move v1, v2

    .line 378
    goto :goto_16

    .line 377
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 389
    :cond_3c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    goto :goto_36
.end method
