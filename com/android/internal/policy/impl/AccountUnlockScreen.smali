.class public Lcom/android/internal/policy/impl/AccountUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "AccountUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final AWAKE_POKE_MILLIS:I = 0x7530

.field private static final LOCK_PATTERN_CLASS:Ljava/lang/String; = "com.android.settings.ChooseLockGeneric"

.field private static final LOCK_PATTERN_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x3


# instance fields
.field private mAccountInfoView:Landroid/view/View;

.field private mAccountUnlockHelpTextView:Landroid/view/View;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mFailPINCount:I

.field private mInstructions:Landroid/widget/TextView;

.field private mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mOk:Landroid/widget/Button;

.field private mPINCode:Landroid/widget/EditText;

.field private mPINOk:Landroid/widget/Button;

.field private mPINUnlockView:Landroid/view/View;

.field private mPassword:Landroid/widget/EditText;

.field private mShowProgressLoginHelpText:Landroid/widget/TextView;

.field private mShowProgressLoginOk:Landroid/widget/Button;

.field private mTopHeader:Landroid/widget/TextView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mpinUnlockHelpText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 12
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockPatternUtils"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 117
    iput-object p4, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 118
    iput-object p5, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 120
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090054

    invoke-virtual {v0, v1, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 123
    const v0, 0x10202ac

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    .line 124
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mTopHeader:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_12b

    const v0, 0x1040334

    :goto_2d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 128
    const v0, 0x10202af

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    .line 130
    const v0, 0x10202b0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/LoginFilter$UsernameFilterGeneric;

    invoke-direct {v2}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    const v0, 0x10202b1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    const v0, 0x10202b2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mOk:Landroid/widget/Button;

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iput-object p3, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 143
    const v0, 0x10202ae

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountInfoView:Landroid/view/View;

    .line 144
    const v0, 0x10202b3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINUnlockView:Landroid/view/View;

    .line 146
    const v0, 0x10202b4

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mpinUnlockHelpText:Landroid/widget/TextView;

    .line 147
    const v0, 0x10202b5

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINCode:Landroid/widget/EditText;

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINCode:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 150
    const v0, 0x10202b6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINOk:Landroid/widget/Button;

    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    const v0, 0x10202b7

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountUnlockHelpTextView:Landroid/view/View;

    .line 154
    const v0, 0x10202b8

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mShowProgressLoginHelpText:Landroid/widget/TextView;

    .line 155
    const v0, 0x10202b9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mShowProgressLoginOk:Landroid/widget/Button;

    .line 156
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mShowProgressLoginOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->doesFallbackUnlockScreenExist()Z

    move-result v0

    if-nez v0, :cond_136

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountInfoView:Landroid/view/View;

    if-eqz v0, :cond_115

    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINUnlockView:Landroid/view/View;

    if-eqz v0, :cond_115

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountInfoView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v0

    if-nez v0, :cond_130

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINUnlockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountUnlockHelpTextView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mShowProgressLoginHelpText:Landroid/widget/TextView;

    if-eqz v0, :cond_115

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mShowProgressLoginHelpText:Landroid/widget/TextView;

    const v1, 0x10405a9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    :cond_115
    :goto_115
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_190

    .line 210
    new-instance v0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 216
    :goto_12a
    return-void

    .line 124
    :cond_12b
    const v0, 0x1040333

    goto/16 :goto_2d

    .line 178
    :cond_130
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINUnlockView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_115

    .line 183
    :cond_136
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountInfoView:Landroid/view/View;

    if-eqz v0, :cond_115

    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINUnlockView:Landroid/view/View;

    if-eqz v0, :cond_115

    .line 184
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak()Z

    move-result v0

    if-eqz v0, :cond_161

    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakInstalled()Z

    move-result v0

    if-eqz v0, :cond_161

    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-nez v0, :cond_161

    .line 187
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINUnlockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_15b
    :goto_15b
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountInfoView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_115

    .line 192
    :cond_161
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists()Z

    move-result v0

    if-nez v0, :cond_18a

    .line 193
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINUnlockView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountUnlockHelpTextView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mShowProgressLoginHelpText:Landroid/widget/TextView;

    if-eqz v0, :cond_15b

    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mShowProgressLoginOk:Landroid/widget/Button;

    if-eqz v0, :cond_15b

    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mShowProgressLoginHelpText:Landroid/widget/TextView;

    const v1, 0x10405aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mShowProgressLoginOk:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_15b

    .line 200
    :cond_18a
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINUnlockView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15b

    .line 213
    :cond_190
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    goto :goto_12a
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mInstructions:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/AccountUnlockScreen;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/app/Dialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/AccountUnlockScreen;)Landroid/widget/EditText;
    .registers 2
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    return-object v0
.end method

.method private asyncCheckPassword()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    .line 441
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v4, 0x7530

    invoke-interface {v0, v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_48

    .line 447
    :goto_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 448
    .local v6, login:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 449
    .local v7, password:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v1

    .line 450
    .local v1, account:Landroid/accounts/Account;
    if-nez v1, :cond_27

    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V

    .line 484
    :goto_26
    return-void

    .line 454
    :cond_27
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 455
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 456
    .local v2, options:Landroid/os/Bundle;
    const-string v0, "password"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v4, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/AccountUnlockScreen;)V

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/accounts/AccountManager;->confirmCredentials(Landroid/accounts/Account;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_26

    .line 442
    .end local v1           #account:Landroid/accounts/Account;
    .end local v2           #options:Landroid/os/Bundle;
    .end local v6           #login:Ljava/lang/String;
    .end local v7           #password:Ljava/lang/String;
    :catch_48
    move-exception v0

    goto :goto_8
.end method

.method private findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .registers 15
    .parameter "username"

    .prologue
    const/16 v12, 0x40

    .line 402
    iget-object v10, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    const-string v11, "com.google"

    invoke-virtual {v10, v11}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 408
    .local v2, accounts:[Landroid/accounts/Account;
    const/4 v4, 0x0

    .line 409
    .local v4, bestAccount:Landroid/accounts/Account;
    const/4 v5, 0x0

    .line 410
    .local v5, bestScore:I
    move-object v3, v2

    .local v3, arr$:[Landroid/accounts/Account;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_13
    if-ge v7, v8, :cond_5b

    aget-object v0, v3, v7

    .line 411
    .local v0, a:Landroid/accounts/Account;
    const/4 v9, 0x0

    .line 412
    .local v9, score:I
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 413
    const/4 v9, 0x4

    .line 427
    :cond_21
    :goto_21
    if-le v9, v5, :cond_57

    .line 428
    move-object v4, v0

    .line 429
    move v5, v9

    .line 410
    :cond_25
    :goto_25
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 414
    :cond_28
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_32

    .line 415
    const/4 v9, 0x3

    goto :goto_21

    .line 416
    :cond_32
    invoke-virtual {p1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-gez v10, :cond_21

    .line 417
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 418
    .local v6, i:I
    if-ltz v6, :cond_21

    .line 419
    iget-object v10, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v10, v11, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, aUsername:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4f

    .line 421
    const/4 v9, 0x2

    goto :goto_21

    .line 422
    :cond_4f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 423
    const/4 v9, 0x1

    goto :goto_21

    .line 430
    .end local v1           #aUsername:Ljava/lang/String;
    .end local v6           #i:I
    :cond_57
    if-ne v9, v5, :cond_25

    .line 431
    const/4 v4, 0x0

    goto :goto_25

    .line 434
    .end local v0           #a:Landroid/accounts/Account;
    .end local v9           #score:I
    :cond_5b
    return-object v4
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_32

    .line 488
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    .line 489
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;

    const v2, 0x104033b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 496
    :cond_32
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private postOnCheckPasswordResult(Z)V
    .registers 4
    .parameter "success"

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/AccountUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/AccountUnlockScreen;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method

.method private verifyBackupPINCode()Z
    .registers 5

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 504
    .local v0, rtnVal:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINCode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, strBackupPIN:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 509
    iget-object v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 510
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 511
    const/4 v0, 0x1

    .line 519
    :cond_20
    :goto_20
    iget-object v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINCode:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mFailPINCount:I

    if-lez v2, :cond_53

    .line 524
    iget-object v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mpinUnlockHelpText:Landroid/widget/TextView;

    if-eqz v2, :cond_37

    .line 525
    iget-object v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mpinUnlockHelpText:Landroid/widget/TextView;

    const v3, 0x10405a8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 532
    :cond_37
    :goto_37
    return v0

    .line 512
    :cond_38
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_46

    .line 515
    iget v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mFailPINCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mFailPINCount:I

    goto :goto_20

    .line 516
    :cond_46
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_20

    .line 517
    iget v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mFailPINCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mFailPINCount:I

    goto :goto_20

    .line 528
    :cond_53
    iget-object v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mpinUnlockHelpText:Landroid/widget/TextView;

    if-eqz v2, :cond_37

    .line 529
    iget-object v2, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mpinUnlockHelpText:Landroid/widget/TextView;

    const v3, 0x10405a6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_37
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 219
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 222
    return-void
.end method

.method public cleanUp()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 294
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 296
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 297
    iput-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 298
    iput-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 299
    iput-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 300
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 363
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isPermanentlyLocked()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 370
    invoke-static {}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getOperatorId()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_22

    .line 371
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 380
    :cond_22
    :goto_22
    const/4 v0, 0x1

    .line 382
    :goto_23
    return v0

    .line 378
    :cond_24
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    goto :goto_22

    .line 382
    :cond_2b
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_23
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 240
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_d

    .line 306
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->asyncCheckPassword()V

    .line 325
    :cond_c
    :goto_c
    return-void

    .line 310
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_21

    .line 311
    invoke-direct {p0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->verifyBackupPINCode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->clearFailedAttempts()V

    .line 313
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/AccountUnlockScreen;->postOnCheckPasswordResult(Z)V

    goto :goto_c

    .line 316
    :cond_21
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mShowProgressLoginOk:Landroid/widget/Button;

    if-ne p1, v0, :cond_c

    .line 319
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_c

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->forgotPattern(Z)V

    goto :goto_c
.end method

.method public onPause()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 245
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    if-eqz v1, :cond_1f

    .line 249
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 250
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1f

    .line 251
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 255
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1f
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_38

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 257
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_38

    .line 258
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 263
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINCode:Landroid/widget/EditText;

    if-eqz v1, :cond_51

    .line 264
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 265
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_51

    .line 266
    iget-object v1, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 272
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_51
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mPINCode:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountInfoView:Landroid/view/View;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mAccountInfoView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_26

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 288
    :cond_26
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 289
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_b

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/AccountUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 229
    :cond_b
    return-void
.end method
