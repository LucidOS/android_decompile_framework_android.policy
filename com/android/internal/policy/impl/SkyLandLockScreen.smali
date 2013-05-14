.class public Lcom/android/internal/policy/impl/SkyLandLockScreen;
.super Landroid/widget/LinearLayout;
.source "SkyLandLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardStatusViewManager$CommonLockScreenCallback;


# static fields
.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final TAG:Ljava/lang/String; = "SkyLandLockScreen"


# instance fields
.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mEnableMenuKeyInLockScreen:Z

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

.field private mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

.field private mSimLockState:Z

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


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

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mSimLockState:Z

    .line 95
    iput-object p3, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 96
    iput-object p4, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 97
    iput-object p5, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 99
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->shouldEnableMenuKey()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mEnableMenuKeyInLockScreen:Z

    .line 101
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mCreationOrientation:I

    .line 103
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mKeyboardHidden:I

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 113
    .local v6, inflater:Landroid/view/LayoutInflater;
    const-string v0, "SkyLandLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creation orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mCreationOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const v0, 0x1090067

    invoke-virtual {v6, v0, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 118
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->createTimeView()V

    .line 119
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->checkRoaming()V

    .line 121
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 122
    new-instance v0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 129
    :goto_5c
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->setFocusable(Z)V

    .line 130
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->setFocusableInTouchMode(Z)V

    .line 131
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->setDescendantFocusability(I)V

    .line 132
    return-void

    .line 125
    :cond_68
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    goto :goto_5c
.end method

.method private checkRoaming()V
    .registers 4

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, roamingState:Z
    const/4 v1, 0x0

    .line 235
    .local v1, showDualClock:Z
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    .line 236
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->checkShowDualClock(Landroid/content/Context;)Z

    move-result v1

    .line 243
    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->setRoaming(ZZ)V

    .line 244
    return-void
.end method

.method private createTimeView()V
    .registers 4

    .prologue
    .line 247
    const v0, 0x1020340

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkySimpleDigitalClock;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

    .line 248
    const v0, 0x1020341

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkyRoamingDigitalClock;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400b5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkySimpleDigitalClock;->changeDateFormat(Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104059b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->changeDateFormat(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method private setRoaming(ZZ)V
    .registers 7
    .parameter "roamingState"
    .parameter "showDualClock"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    if-nez v1, :cond_b

    .line 290
    :cond_a
    :goto_a
    return-void

    .line 274
    :cond_b
    const v1, 0x10202f6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 276
    .local v0, roamingInfoPane:Landroid/widget/FrameLayout;
    if-eqz p1, :cond_28

    .line 277
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 283
    :goto_19
    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SkySimpleDigitalClock;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->setVisibility(I)V

    goto :goto_a

    .line 279
    :cond_28
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_19

    .line 287
    :cond_2e
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/SkySimpleDigitalClock;->setVisibility(I)V

    .line 288
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->setVisibility(I)V

    goto :goto_a
.end method

.method private shouldEnableMenuKey()Z
    .registers 7

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 76
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x111001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 77
    .local v0, configDisabled:Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 78
    .local v2, isTestHarness:Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 79
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


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 209
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 210
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 211
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 213
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mNormalView:Lcom/android/internal/widget/SkySimpleDigitalClock;

    .line 214
    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mRoamingView:Lcom/android/internal/widget/SkyRoamingDigitalClock;

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->cleanUp()V

    .line 219
    return-void
.end method

.method public disableUnlockWidget()V
    .registers 1

    .prologue
    .line 296
    return-void
.end method

.method public enableUnlockWidget()V
    .registers 1

    .prologue
    .line 293
    return-void
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public needsLockOrientation()I
    .registers 2

    .prologue
    .line 327
    const/4 v0, -0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->updateConfiguration()V

    .line 173
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->updateConfiguration()V

    .line 185
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 146
    const/16 v0, 0xfc

    if-ne p1, v0, :cond_d

    .line 147
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_d

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 152
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    if-eqz v0, :cond_9

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 197
    :cond_9
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    if-eqz v0, :cond_9

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 204
    :cond_9
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 4
    .parameter "hasFocus"

    .prologue
    .line 222
    if-eqz p1, :cond_a

    .line 224
    const-string v0, "SkyLandLockScreen"

    const-string v1, "onWindowFocusChanged mUnlockHindAnim is start!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_9
    return-void

    .line 227
    :cond_a
    const-string v0, "SkyLandLockScreen"

    const-string v1, "onWinodwFocusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method updateConfiguration()V
    .registers 4

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 157
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_17

    .line 158
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_17

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyLandLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 162
    :cond_17
    return-void
.end method

.method public updateRoamingStateChanged(ZZ)V
    .registers 7
    .parameter "roamingState"
    .parameter "showDualClock"

    .prologue
    .line 303
    const-string v2, "SkyLandLockScreen"

    const-string v3, "updateRoamingStateChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->setRoaming(ZZ)V

    .line 312
    if-nez p1, :cond_19

    .line 313
    const v2, 0x1020340

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SkySimpleDigitalClock;

    .line 316
    .local v1, localClock:Lcom/android/internal/widget/SkySimpleDigitalClock;
    invoke-virtual {v1}, Lcom/android/internal/widget/SkySimpleDigitalClock;->updateTime()V

    .line 324
    .end local v1           #localClock:Lcom/android/internal/widget/SkySimpleDigitalClock;
    :goto_18
    return-void

    .line 318
    :cond_19
    const v2, 0x1020341

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyLandLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkyRoamingDigitalClock;

    .line 321
    .local v0, dualClock:Lcom/android/internal/widget/SkyRoamingDigitalClock;
    invoke-virtual {v0}, Lcom/android/internal/widget/SkyRoamingDigitalClock;->updateTime()V

    goto :goto_18
.end method

.method public updateSimStateChanged(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;)V
    .registers 4
    .parameter "statusMode"

    .prologue
    .line 299
    const-string v0, "SkyLandLockScreen"

    const-string v1, "updateSimStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method
