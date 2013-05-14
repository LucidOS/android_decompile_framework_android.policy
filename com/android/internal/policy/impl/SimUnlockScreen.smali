.class public Lcom/android/internal/policy/impl/SimUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "SimUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPck;,
        Lcom/android/internal/policy/impl/SimUnlockScreen$CheckSimPin;
    }
.end annotation


# static fields
.field protected static final DIGITS:[C = null

.field protected static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field private static final MAX_PIN_RETRY_COUNT:I = 0x3

.field private static final SIM_POKEWAKELOCK:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "SimUnlockScreen"


# instance fields
.field private final MAX_PCK_COUNT:I

.field private final SIM_PERSO_CP:I

.field private final SIM_PERSO_NS:I

.field private final SIM_PERSO_NW:I

.field private final SIM_PERSO_SIM:I

.field private final SIM_PERSO_SP:I

.field private mBackGroundGroup:Landroid/view/View;

.field protected mBackSpaceButton:Landroid/view/View;

.field protected final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field protected mContext:Landroid/content/Context;

.field protected mCreationOrientation:I

.field protected mEnteredDigits:I

.field protected final mEnteredPin:[I

.field private mHandler:Landroid/os/Handler;

.field protected mHeaderText:Landroid/widget/TextView;

.field protected mKeyboardConnect:I

.field protected mKeyboardHidden:I

.field protected mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mOkButton:Landroid/widget/TextView;

.field private mPanHandler:Landroid/os/Handler;

.field private mPckRetryCount:I

.field protected mPinText:Landroid/widget/TextView;

.field private mRemainPinCount:I

.field protected mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSimRemoveReceiver:Landroid/content/BroadcastReceiver;

.field private mSimState:Lcom/android/internal/telephony/IccCard$State;

.field protected mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field protected final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 115
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/os/Looper;)V
    .registers 15
    .parameter "context"
    .parameter "configuration"
    .parameter "updateMonitor"
    .parameter "callback"
    .parameter "lockpatternutils"
    .parameter "looper"

    .prologue
    const/4 v7, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 149
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 102
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_124

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    .line 103
    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 105
    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mRemainPinCount:I

    .line 128
    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->SIM_PERSO_NW:I

    .line 129
    iput v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->SIM_PERSO_NS:I

    .line 130
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->SIM_PERSO_SP:I

    .line 131
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->SIM_PERSO_CP:I

    .line 132
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->SIM_PERSO_SIM:I

    .line 134
    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 138
    iput v7, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->MAX_PCK_COUNT:I

    .line 143
    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimRemoveReceiver:Landroid/content/BroadcastReceiver;

    .line 144
    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPanHandler:Landroid/os/Handler;

    .line 230
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 150
    iput-object p3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 151
    iput-object p4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 152
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    .line 154
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    .line 155
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    .line 156
    iget v0, p2, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardConnect:I

    .line 157
    iput-object p5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen;->layoutType(Landroid/content/Context;)V

    .line 160
    const-string v0, "SimUnlockScreen"

    const-string v1, "Create SimUnlockScreen()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 165
    const v0, 0x10202e3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    .line 166
    const v0, 0x10202e5

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    .line 167
    const v0, 0x10202e6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackGroundGroup:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 174
    const v0, 0x10202b2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 180
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 181
    new-instance v0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 188
    :goto_af
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/SimUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 190
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getRemainCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mRemainPinCount:I

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateHeaderTitle()V

    .line 193
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pck_retry_count"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPckRetryCount:I

    .line 196
    const-string v0, "SimUnlockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPckRetryCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPckRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_ed
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimRemoveReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_109

    .line 202
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimRemoveReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimRemoveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 223
    .end local v6           #filter:Landroid/content/IntentFilter;
    :cond_109
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPanHandler:Landroid/os/Handler;

    if-nez v0, :cond_116

    if-eqz p6, :cond_116

    .line 224
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPanHandler:Landroid/os/Handler;

    .line 227
    :cond_116
    return-void

    .line 184
    :cond_117
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    goto :goto_af

    .line 102
    nop

    :array_124
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPckRetryCount:I

    return v0
.end method

.method static synthetic access$110(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPckRetryCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPckRetryCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/SimUnlockScreen;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mRemainPinCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/SimUnlockScreen;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mRemainPinCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/SimUnlockScreen;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getRemainCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/SimUnlockScreen;)Lcom/android/internal/telephony/IccCard$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/SimUnlockScreen;Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/telephony/IccCard$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    return-object p1
.end method

.method private checkPck()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 664
    const-string v0, "SimUnlockScreen"

    const-string v1, "checkPck"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3b

    .line 668
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_2e

    .line 669
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v1, 0x104053c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->showPopup(ILjava/lang/String;I)V

    .line 672
    :goto_1d
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 674
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x4e20

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 741
    :goto_2d
    return-void

    .line 671
    :cond_2e
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v1, 0x104053d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->showPopup(ILjava/lang/String;I)V

    goto :goto_1d

    .line 678
    :cond_3b
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimPCKUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 680
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$5;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$5;->start()V

    goto :goto_2d
.end method

.method private getRemainCount()I
    .registers 5

    .prologue
    .line 1002
    const/4 v1, -0x1

    .line 1004
    .local v1, retValue:I
    :try_start_1
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_10

    move-result v1

    .line 1009
    :goto_f
    return v1

    .line 1005
    :catch_10
    move-exception v0

    .line 1007
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimUnlockScreen"

    const-string v3, "Error! Can not get mRemainCounts"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method


# virtual methods
.method protected checkPin()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 533
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_34

    .line 537
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_27

    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v1, 0x1040520

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->showPopup(ILjava/lang/String;I)V

    .line 542
    :goto_16
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x4e20

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 639
    :goto_26
    return-void

    .line 540
    :cond_27
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v1, 0x1040526

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0, v2}, Lcom/android/internal/policy/impl/SimUnlockScreen;->showPopup(ILjava/lang/String;I)V

    goto :goto_16

    .line 550
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 552
    new-instance v0, Lcom/android/internal/policy/impl/SimUnlockScreen$4;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/SimUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/SimUnlockScreen$4;->start()V

    goto :goto_26
.end method

.method public cleanUp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 337
    const-string v0, "SimUnlockScreen"

    const-string v1, "<cleanUp>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_13

    .line 341
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 342
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 345
    :cond_13
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1e

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 347
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 350
    :cond_1e
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method protected getSimPCKUnlockProgressDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 643
    const-string v1, "SimUnlockScreen"

    const-string v2, "<getSimPCKUnlockProgressDialog>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_52

    .line 645
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 646
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v3, 0x104053e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 648
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 649
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 650
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 653
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 654
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->oemFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->oemFlags:I

    .line 655
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 658
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_52
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method

.method protected getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 5

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_4b

    .line 514
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 515
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v3, 0x1040328

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 518
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 519
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 522
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 523
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->oemFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->oemFlags:I

    .line 524
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 527
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_4b
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method

.method public isSimLimitedStatus()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 1016
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1027
    :cond_b
    :goto_b
    return v0

    .line 1019
    :cond_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 1021
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isPersoPPKBlocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1024
    const/4 v0, 0x1

    goto :goto_b
.end method

.method protected layoutType(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 240
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 241
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-ne v1, v3, :cond_27

    .line 243
    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardConnect:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardConnect:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    .line 244
    :cond_13
    const v1, 0x1090059

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackGroundGroup:Landroid/view/View;

    .line 254
    :goto_1c
    return-void

    .line 248
    :cond_1d
    const v1, 0x1090058

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackGroundGroup:Landroid/view/View;

    goto :goto_1c

    .line 251
    :cond_27
    const v1, 0x109005a

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackGroundGroup:Landroid/view/View;

    .line 252
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    goto :goto_1c
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 823
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 824
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 825
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 6
    .parameter "v"

    .prologue
    .line 458
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v2, :cond_23

    .line 459
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 460
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 461
    .local v1, len:I
    if-lez v1, :cond_1b

    .line 462
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 463
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 467
    :cond_1b
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v3, 0x4e20

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 486
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_22
    :goto_22
    return-void

    .line 469
    :cond_23
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    if-ne p1, v2, :cond_22

    .line 470
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 474
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_37

    .line 476
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    goto :goto_22

    .line 480
    :cond_37
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_22

    .line 482
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPck()V

    goto :goto_22
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 830
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 831
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateConfiguration()V

    .line 832
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 745
    const/4 v4, 0x4

    if-ne p1, v4, :cond_a

    .line 746
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 789
    :cond_9
    :goto_9
    return v3

    .line 750
    :cond_a
    sget-object v4, Lcom/android/internal/policy/impl/SimUnlockScreen;->DIGITS:[C

    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v2

    .line 751
    .local v2, match:C
    if-eqz v2, :cond_18

    .line 752
    add-int/lit8 v4, v2, -0x30

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/SimUnlockScreen;->reportDigit(I)V

    goto :goto_9

    .line 755
    :cond_18
    const/16 v4, 0x43

    if-ne p1, v4, :cond_47

    .line 756
    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-lez v4, :cond_9

    .line 757
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v4, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 759
    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardConnect:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2f

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardConnect:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_40

    .line 760
    :cond_2f
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 761
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 762
    .local v1, len:I
    if-lez v1, :cond_40

    .line 763
    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 767
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_40
    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    goto :goto_9

    .line 772
    :cond_47
    const/16 v4, 0x42

    if-ne p1, v4, :cond_5f

    .line 775
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_55

    .line 777
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPin()V

    goto :goto_9

    .line 781
    :cond_55
    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v4, v5, :cond_9

    .line 783
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->checkPck()V

    goto :goto_9

    .line 789
    :cond_5f
    const/4 v3, 0x0

    goto :goto_9
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 7
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 490
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mBackSpaceButton:Landroid/view/View;

    if-ne p1, v3, :cond_22

    .line 491
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 492
    .local v0, digits:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 494
    .local v1, len:I
    if-lez v1, :cond_1a

    .line 495
    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 499
    :cond_1a
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v3, 0x4e20

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 500
    const/4 v2, 0x1

    .line 503
    .end local v0           #digits:Landroid/text/Editable;
    .end local v1           #len:I
    :cond_22
    return v2
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 263
    const-string v0, "SimUnlockScreen"

    const-string v1, "<onPause>"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_18

    .line 268
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 269
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 272
    :cond_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_23

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 274
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimPCKUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 277
    :cond_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimRemoveReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_30

    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimRemoveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    iput-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimRemoveReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    :cond_30
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 283
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    .line 287
    const-string v1, "SimUnlockScreen"

    const-string v2, "<onResume>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getRemainCount()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mRemainPinCount:I

    .line 292
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->updateHeaderTitle()V

    .line 293
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    .line 298
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    .line 301
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 303
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pck_retry_count"

    const/4 v3, 0x5

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPckRetryCount:I

    .line 304
    const-string v1, "SimUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPckRetryCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPckRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_55
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 311
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimRemoveReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_76

    .line 312
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 313
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    new-instance v1, Lcom/android/internal/policy/impl/SimUnlockScreen$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimRemoveReceiver:Landroid/content/BroadcastReceiver;

    .line 329
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimRemoveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 332
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_76
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mOkButton:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 333
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v1, 0x4e20

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 508
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 6
    .parameter "hasWindowFocus"

    .prologue
    .line 1034
    const-string v1, "SimUnlockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onWindowFocusChanged(). hasWindowFocus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1036
    if-eqz p1, :cond_3d

    .line 1037
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1040
    .local v0, powerManager:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1041
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v2, 0x4e20

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 1050
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :goto_34
    return-void

    .line 1043
    .restart local v0       #powerManager:Landroid/os/PowerManager;
    :cond_35
    const-string v1, "SimUnlockScreen"

    const-string v2, "onWindowFocusChanged(). Screen is off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 1047
    .end local v0           #powerManager:Landroid/os/PowerManager;
    :cond_3d
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    goto :goto_34
.end method

.method protected reportDigit(I)V
    .registers 5
    .parameter "digit"

    .prologue
    .line 793
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    if-nez v0, :cond_b

    .line 794
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    :cond_b
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 810
    :cond_11
    :goto_11
    return-void

    .line 800
    :cond_12
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "S"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 803
    iget v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-eq v0, v1, :cond_11

    .line 808
    :cond_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mPinText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredPin:[I

    iget v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mEnteredDigits:I

    aput p1, v0, v1

    goto :goto_11
.end method

.method showPopup(ILjava/lang/String;I)V
    .registers 11
    .parameter "titleResId"
    .parameter "bodyString"
    .parameter "displayTime"

    .prologue
    const/4 v6, 0x4

    .line 964
    const/4 v2, 0x0

    .line 966
    .local v2, title:Ljava/lang/String;
    if-eqz p1, :cond_a

    iget-object v3, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 968
    :cond_a
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/internal/policy/impl/SimUnlockScreen$6;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 986
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/internal/policy/impl/SimUnlockScreen$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/SimUnlockScreen$7;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 993
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 994
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/Window;->setFlags(II)V

    .line 995
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 996
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->oemFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->oemFlags:I

    .line 997
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 998
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 999
    return-void
.end method

.method updateConfiguration()V
    .registers 4

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SimUnlockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 814
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_14

    .line 815
    iget-object v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 819
    :cond_13
    :goto_13
    return-void

    .line 816
    :cond_14
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    if-eq v1, v2, :cond_13

    .line 817
    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mKeyboardHidden:I

    goto :goto_13
.end method

.method updateHeaderTitle()V
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 932
    const-string v2, "SimUnlockScreen"

    const-string v3, "<updateHeaderTitle> "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const-string v1, ""

    .line 934
    .local v1, displayMessage:Ljava/lang/String;
    const/4 v0, 0x0

    .line 936
    .local v0, displayCount:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_5b

    .line 938
    iget v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mRemainPinCount:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_52

    .line 940
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 942
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v3, 0x1040543

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mRemainPinCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 949
    :goto_38
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    :cond_3d
    :goto_3d
    return-void

    .line 946
    :cond_3e
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v3, 0x1040522

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mRemainPinCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_38

    .line 953
    :cond_52
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x10402f6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3d

    .line 956
    :cond_5b
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mSimState:Lcom/android/internal/telephony/IccCard$State;

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->SIM_SIM_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v2, v3, :cond_3d

    .line 958
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mContext:Landroid/content/Context;

    const v3, 0x1040539

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 959
    iget-object v2, p0, Lcom/android/internal/policy/impl/SimUnlockScreen;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3d
.end method
