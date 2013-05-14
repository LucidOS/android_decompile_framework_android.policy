.class Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;
.super Ljava/lang/Object;
.source "MSimLockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->keyguardScreenCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)V
    .registers 2
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doesFallbackUnlockScreenExist()Z
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return v0
.end method

.method public forgotPattern(Z)V
    .registers 5
    .parameter "isForgotten"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    if-eqz v0, :cond_12

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iput-boolean p1, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 195
    :cond_12
    return-void
.end method

.method public goToLockScreen()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    if-eqz v0, :cond_19

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 106
    :goto_18
    return-void

    .line 104
    :cond_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_18
.end method

.method public goToReleaseScreen()V
    .registers 1

    .prologue
    .line 113
    return-void
.end method

.method public goToUnlockScreen()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 120
    const/4 v1, 0x1

    .line 121
    .local v1, isPukRequired:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_1b

    .line 122
    if-eqz v1, :cond_30

    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z
    invoke-static {v4, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Z

    move-result v4

    if-eqz v4, :cond_30

    move v1, v2

    .line 123
    :goto_19
    if-nez v1, :cond_32

    .line 126
    :cond_1b
    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v4

    if-nez v4, :cond_2f

    if-eqz v1, :cond_35

    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v4

    if-nez v4, :cond_35

    .line 138
    :cond_2f
    :goto_2f
    return-void

    :cond_30
    move v1, v3

    .line 122
    goto :goto_19

    .line 121
    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 133
    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->isSecure()Z

    move-result v4

    if-nez v4, :cond_45

    .line 134
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_2f

    .line 136
    :cond_45
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_2f
.end method

.method public goToUnlockScreen(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "intentAction"
    .parameter "intentType"

    .prologue
    .line 110
    return-void
.end method

.method public isSecure()Z
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method public keyguardDone(Z)V
    .registers 4
    .parameter "authenticated"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    .line 246
    return-void
.end method

.method public keyguardDoneDrawing()V
    .registers 1

    .prologue
    .line 250
    return-void
.end method

.method public pokeWakelock()V
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 237
    return-void
.end method

.method public pokeWakelock(I)V
    .registers 3
    .parameter "millis"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock(I)V

    .line 241
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "config"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 253
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedAttempt()V

    .line 254
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 258
    .local v1, failedAttempts:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v8

    const/high16 v9, 0x1

    if-ne v8, v9, :cond_43

    move v5, v6

    .line 261
    .local v5, usingPattern:Z
    :goto_1e
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    .line 264
    .local v2, failedAttemptsBeforeWipe:I
    const/16 v0, 0xf

    .line 267
    .local v0, failedAttemptWarning:I
    if-lez v2, :cond_45

    sub-int v3, v2, v1

    .line 271
    .local v3, remainingBeforeWipe:I
    :goto_31
    const/4 v8, 0x5

    if-ge v3, v8, :cond_56

    .line 276
    if-lez v3, :cond_49

    .line 277
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6, v1, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showAlmostAtWipeDialog(II)V

    .line 302
    :cond_3b
    :goto_3b
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 303
    return-void

    .end local v0           #failedAttemptWarning:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v3           #remainingBeforeWipe:I
    .end local v5           #usingPattern:Z
    :cond_43
    move v5, v7

    .line 258
    goto :goto_1e

    .line 267
    .restart local v0       #failedAttemptWarning:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    .restart local v5       #usingPattern:Z
    :cond_45
    const v3, 0x7fffffff

    goto :goto_31

    .line 280
    .restart local v3       #remainingBeforeWipe:I
    :cond_49
    const-string v6, "MSimLockPatternKeyguardView"

    const-string v7, "Too many unlock attempts; device will be wiped!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showWipeDialog(I)V

    goto :goto_3b

    .line 284
    :cond_56
    rem-int/lit8 v8, v1, 0x5

    if-nez v8, :cond_75

    move v4, v6

    .line 286
    .local v4, showTimeout:Z
    :goto_5b
    if-eqz v5, :cond_6d

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    if-eqz v8, :cond_6d

    .line 287
    const/16 v8, 0xf

    if-ne v1, v8, :cond_77

    .line 288
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V

    .line 289
    const/4 v4, 0x0

    .line 298
    :cond_6d
    :goto_6d
    if-eqz v4, :cond_3b

    .line 299
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showTimeoutDialog()V

    goto :goto_3b

    .end local v4           #showTimeout:Z
    :cond_75
    move v4, v7

    .line 284
    goto :goto_5b

    .line 290
    .restart local v4       #showTimeout:Z
    :cond_77
    const/16 v8, 0x14

    if-lt v1, v8, :cond_6d

    .line 292
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 293
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 295
    const/4 v4, 0x0

    goto :goto_6d
.end method

.method public reportSuccessfulUnlockAttempt()V
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 311
    return-void
.end method

.method public takeEmergencyCallAction()V
    .registers 5

    .prologue
    .line 211
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    if-eqz v1, :cond_25

    .line 214
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 216
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    const-wide/16 v2, 0x3e8

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->show(J)V

    .line 220
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    .line 223
    :cond_25
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->pokeWakelock(I)V

    .line 224
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3d

    .line 226
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 233
    :goto_3c
    return-void

    .line 228
    :cond_3d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3c
.end method

.method public takeRoamingHelpAction()V
    .registers 1

    .prologue
    .line 116
    return-void
.end method

.method public updatePinUnlockCancel(I)V
    .registers 8
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    const-string v3, "MSimLockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePinUnlockCancel sub :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-nez p1, :cond_49

    move v0, v1

    .line 152
    .local v0, otherSub:I
    :goto_1d
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-nez v3, :cond_39

    :cond_2f
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_4b

    .line 154
    :cond_39
    const-string v1, "MSimLockPatternKeyguardView"

    const-string v3, "Cannot cancel PIN dialog"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, p1

    .line 164
    :goto_48
    return-void

    .end local v0           #otherSub:I
    :cond_49
    move v0, v2

    .line 150
    goto :goto_1d

    .line 157
    .restart local v0       #otherSub:I
    :cond_4b
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v3

    aput-boolean v1, v3, p1

    .line 162
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    goto :goto_48
.end method

.method public updatePukUnlockCancel(I)V
    .registers 8
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    const-string v3, "MSimLockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePukUnlockCancel sub :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    if-nez p1, :cond_37

    move v0, v1

    .line 177
    .local v0, otherSub:I
    :goto_1d
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_39

    .line 178
    const-string v1, "MSimLockPatternKeyguardView"

    const-string v3, "Cannot cancel PUK dialog"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, p1

    .line 188
    :goto_36
    return-void

    .end local v0           #otherSub:I
    :cond_37
    move v0, v2

    .line 175
    goto :goto_1d

    .line 181
    .restart local v0       #otherSub:I
    :cond_39
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v3

    aput-boolean v1, v3, p1

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    goto :goto_36
.end method
