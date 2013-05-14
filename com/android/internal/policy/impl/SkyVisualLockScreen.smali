.class public Lcom/android/internal/policy/impl/SkyVisualLockScreen;
.super Landroid/widget/LinearLayout;
.source "SkyVisualLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardStatusViewManager$MissedCommInfo;
.implements Lcom/android/internal/widget/SKYVisualBarView$OnTriggerListener;
.implements Lcom/android/internal/widget/SkyVisualSlidingTab$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/KeyguardStatusViewManager$CommonLockScreenCallback;
.implements Lcom/android/internal/policy/impl/KeyguardStatusViewManager$SkyLockScreenCallback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static CHECK_MISSED_CALL:I = 0x0

.field private static CHECK_MISSED_E_MAIL:I = 0x0

.field private static CHECK_MISSED_MMS:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final KEY_URI:Ljava/lang/String; = "_uri"

.field private static final MAX_APP_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SkyVisualLockScreen"


# instance fields
.field private DEFAULT_INTENTURI_APP:[Ljava/lang/String;

.field private final DEFAULT_INTENTURI_APP_DOMESTIC:[Ljava/lang/String;

.field private final DEFAULT_INTENTURI_APP_INTERNATIONAL:[Ljava/lang/String;

.field private VISUALHOLD_SMS_PKG_NAME:Ljava/lang/String;

.field private VISUALHOLD_SMS_PKG_NAME_DOMESTIC:Ljava/lang/String;

.field private VISUALHOLD_SMS_PKG_NAME_INTERNATIONAL:Ljava/lang/String;

.field backgroundView:Lcom/android/internal/widget/SkyVisualBackgroundView;

.field mAlramLayout:Landroid/widget/LinearLayout;

.field mAlramText:Landroid/widget/TextView;

.field mApp:[Lcom/android/internal/widget/SKYVisualBarView;

.field private mAppTitle:[Ljava/lang/String;

.field private mAppURI:[Ljava/lang/String;

.field private mArrayAppPkgName:[Ljava/lang/String;

.field mAudioManager:Landroid/media/AudioManager;

.field mCahrgingText:Landroid/widget/TextView;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field mChargingLayout:Landroid/widget/LinearLayout;

.field private mCreationOrientation:I

.field mDualClock:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

.field mDualClockView:Landroid/widget/RelativeLayout;

.field private mIsMissedCallCheckApp:[I

.field private mKeyboardHidden:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mResetSelector:Z

.field private mRoamingState:Z

.field mSingleClockView:Landroid/widget/RelativeLayout;

.field mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

.field private mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private m_sArrayContactsClassName:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 106
    const-string v0, "content://com.pantech.apps.HoldSetting.VisualProvider/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CONTENT_URI:Landroid/net/Uri;

    .line 111
    const/4 v0, 0x1

    sput v0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CHECK_MISSED_CALL:I

    .line 112
    const/4 v0, 0x2

    sput v0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CHECK_MISSED_MMS:I

    .line 113
    const/4 v0, 0x4

    sput v0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CHECK_MISSED_E_MAIL:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .parameter "context"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 215
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-array v0, v2, [Lcom/android/internal/widget/SKYVisualBarView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    .line 59
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.contacts/.activities.DialtactsActivity;end"

    aput-object v1, v0, v3

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x34200000;component=com.pantech.app.mms/.ui.EntryActivity;end"

    aput-object v1, v0, v4

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.vlingo.odyssey/.gui.ConversationActivity;end"

    aput-object v1, v0, v5

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.skycamera/.Camera;end"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP_DOMESTIC:[Ljava/lang/String;

    .line 67
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.contacts/.DialtactsActivity;end"

    aput-object v1, v0, v3

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x34200000;component=com.android.mms/.ui.EntryActivity;end"

    aput-object v1, v0, v4

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.skycamera/.Camera;end"

    aput-object v1, v0, v5

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.music/.library.MusicLibraryTabHost;end"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP_INTERNATIONAL:[Ljava/lang/String;

    .line 84
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mResetSelector:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mRoamingState:Z

    .line 100
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    .line 101
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    .line 103
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mArrayAppPkgName:[Ljava/lang/String;

    .line 104
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    .line 109
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mIsMissedCallCheckApp:[I

    .line 117
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP:[Ljava/lang/String;

    .line 120
    const-string v0, "com.pantech.app.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME_DOMESTIC:Ljava/lang/String;

    .line 121
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME_INTERNATIONAL:Ljava/lang/String;

    .line 216
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->SetDefaultURI()V

    .line 217
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->init(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 13
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x4

    .line 231
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    new-array v0, v2, [Lcom/android/internal/widget/SKYVisualBarView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    .line 59
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.contacts/.activities.DialtactsActivity;end"

    aput-object v1, v0, v5

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x34200000;component=com.pantech.app.mms/.ui.EntryActivity;end"

    aput-object v1, v0, v6

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.vlingo.odyssey/.gui.ConversationActivity;end"

    aput-object v1, v0, v3

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.skycamera/.Camera;end"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP_DOMESTIC:[Ljava/lang/String;

    .line 67
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.contacts/.DialtactsActivity;end"

    aput-object v1, v0, v5

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x34200000;component=com.android.mms/.ui.EntryActivity;end"

    aput-object v1, v0, v6

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.skycamera/.Camera;end"

    aput-object v1, v0, v3

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.music/.library.MusicLibraryTabHost;end"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP_INTERNATIONAL:[Ljava/lang/String;

    .line 84
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mResetSelector:Z

    .line 88
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mRoamingState:Z

    .line 100
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    .line 101
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    .line 103
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mArrayAppPkgName:[Ljava/lang/String;

    .line 104
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    .line 109
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mIsMissedCallCheckApp:[I

    .line 117
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP:[Ljava/lang/String;

    .line 120
    const-string v0, "com.pantech.app.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME_DOMESTIC:Ljava/lang/String;

    .line 121
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME_INTERNATIONAL:Ljava/lang/String;

    .line 232
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->SetDefaultURI()V

    .line 233
    const-string v0, "SkyVisualLockScreen"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-object p3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 235
    iput-object p4, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 236
    iput-object p5, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 238
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCreationOrientation:I

    .line 239
    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mKeyboardHidden:I

    .line 241
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->init(Landroid/content/Context;)V

    .line 243
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    .line 247
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->setFocusable(Z)V

    .line 248
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->setFocusableInTouchMode(Z)V

    .line 249
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->setDescendantFocusability(I)V

    .line 251
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 222
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    new-array v0, v2, [Lcom/android/internal/widget/SKYVisualBarView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    .line 59
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.contacts/.activities.DialtactsActivity;end"

    aput-object v1, v0, v3

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x34200000;component=com.pantech.app.mms/.ui.EntryActivity;end"

    aput-object v1, v0, v4

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.vlingo.odyssey/.gui.ConversationActivity;end"

    aput-object v1, v0, v5

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.skycamera/.Camera;end"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP_DOMESTIC:[Ljava/lang/String;

    .line 67
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.android.contacts/.DialtactsActivity;end"

    aput-object v1, v0, v3

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x34200000;component=com.android.mms/.ui.EntryActivity;end"

    aput-object v1, v0, v4

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.skycamera/.Camera;end"

    aput-object v1, v0, v5

    const-string v1, "#Intent;action=android.intent.action.MAIN;category=android.intent.category.LAUNCHER;launchFlags=0x10200000;component=com.pantech.app.music/.library.MusicLibraryTabHost;end"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP_INTERNATIONAL:[Ljava/lang/String;

    .line 84
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mResetSelector:Z

    .line 88
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mRoamingState:Z

    .line 100
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    .line 101
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    .line 103
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mArrayAppPkgName:[Ljava/lang/String;

    .line 104
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    .line 109
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mIsMissedCallCheckApp:[I

    .line 117
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP:[Ljava/lang/String;

    .line 120
    const-string v0, "com.pantech.app.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME_DOMESTIC:Ljava/lang/String;

    .line 121
    const-string v0, "com.android.mms"

    iput-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME_INTERNATIONAL:Ljava/lang/String;

    .line 223
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->SetDefaultURI()V

    .line 224
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->init(Landroid/content/Context;)V

    .line 225
    return-void
.end method

.method private SetDefaultURI()V
    .registers 3

    .prologue
    .line 125
    invoke-static {}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->getOperatorId()I

    move-result v0

    .line 127
    .local v0, operatorId:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    .line 130
    :cond_d
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP_DOMESTIC:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP:[Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME_DOMESTIC:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME:Ljava/lang/String;

    .line 142
    :goto_15
    return-void

    .line 132
    :cond_16
    const/16 v1, 0x8

    if-eq v0, v1, :cond_26

    const/16 v1, 0x10

    if-eq v0, v1, :cond_26

    const/16 v1, 0x20

    if-eq v0, v1, :cond_26

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2f

    .line 136
    :cond_26
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP_INTERNATIONAL:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP:[Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME_INTERNATIONAL:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME:Ljava/lang/String;

    goto :goto_15

    .line 139
    :cond_2f
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP_DOMESTIC:[Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP:[Ljava/lang/String;

    .line 140
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME_DOMESTIC:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME:Ljava/lang/String;

    goto :goto_15
.end method

.method private cleanUpCustomResources()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 963
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 964
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 965
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 966
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v1, 0x3

    aput-object v2, v0, v1

    .line 969
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    .line 971
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    .line 973
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSingleClockView:Landroid/widget/RelativeLayout;

    .line 974
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mDualClockView:Landroid/widget/RelativeLayout;

    .line 975
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mDualClock:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    .line 977
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAlramLayout:Landroid/widget/LinearLayout;

    .line 979
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mChargingLayout:Landroid/widget/LinearLayout;

    .line 981
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAlramText:Landroid/widget/TextView;

    .line 983
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCahrgingText:Landroid/widget/TextView;

    .line 985
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mArrayAppPkgName:[Ljava/lang/String;

    .line 986
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    .line 988
    return-void
.end method

.method private getActionIndex([Ljava/lang/String;)I
    .registers 5
    .parameter "getString"

    .prologue
    .line 826
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_12

    .line 827
    aget-object v1, p1, v0

    const-string v2, "action="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 829
    .end local v0           #i:I
    :goto_e
    return v0

    .line 826
    .restart local v0       #i:I
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 829
    :cond_12
    const/4 v0, -0x1

    goto :goto_e
.end method

.method private getComponentIndex([Ljava/lang/String;)I
    .registers 5
    .parameter "getString"

    .prologue
    .line 834
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_12

    .line 835
    aget-object v1, p1, v0

    const-string v2, "component="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 837
    .end local v0           #i:I
    :goto_e
    return v0

    .line 834
    .restart local v0       #i:I
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 837
    :cond_12
    const/4 v0, -0x1

    goto :goto_e
.end method

.method private goToUnlock()V
    .registers 3

    .prologue
    .line 601
    const-string v0, "SkyVisualLockScreen"

    const-string v1, "goToUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mResetSelector:Z

    .line 605
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 606
    return-void
.end method

.method private goToUnlock(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "intentAction"
    .parameter "intentType"

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 10
    .parameter "context"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 271
    const-string v2, "SkyVisualLockScreen"

    const-string v3, "init"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 273
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090069

    invoke-virtual {v1, v2, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 275
    const v2, 0x102034b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SkyVisualBackgroundView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->backgroundView:Lcom/android/internal/widget/SkyVisualBackgroundView;

    .line 277
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getAppURINTitle()V

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findMissedCheckApp()V

    .line 280
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    const v2, 0x1020357

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SKYVisualBarView;

    aput-object v2, v3, v4

    .line 281
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v4

    if-eqz v2, :cond_52

    .line 283
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SKYVisualBarView;->setTitle(Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v4

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/SKYVisualBarView;->setOnTriggerListener(Lcom/android/internal/widget/SKYVisualBarView$OnTriggerListener;)V

    .line 285
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v4

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/SKYVisualBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    :cond_52
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    const v2, 0x1020358

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SKYVisualBarView;

    aput-object v2, v3, v5

    .line 289
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v5

    if-eqz v2, :cond_7e

    .line 291
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SKYVisualBarView;->setTitle(Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v5

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/SKYVisualBarView;->setOnTriggerListener(Lcom/android/internal/widget/SKYVisualBarView$OnTriggerListener;)V

    .line 293
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v5

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/SKYVisualBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    :cond_7e
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    const v2, 0x1020359

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SKYVisualBarView;

    aput-object v2, v3, v6

    .line 297
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v6

    if-eqz v2, :cond_aa

    .line 299
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SKYVisualBarView;->setTitle(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v6

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/SKYVisualBarView;->setOnTriggerListener(Lcom/android/internal/widget/SKYVisualBarView$OnTriggerListener;)V

    .line 301
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v6

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/SKYVisualBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    :cond_aa
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    const v2, 0x102035a

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SKYVisualBarView;

    aput-object v2, v3, v7

    .line 304
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v7

    if-eqz v2, :cond_d6

    .line 306
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SKYVisualBarView;->setTitle(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v7

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/SKYVisualBarView;->setOnTriggerListener(Lcom/android/internal/widget/SKYVisualBarView$OnTriggerListener;)V

    .line 308
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v7

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/SKYVisualBarView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    :cond_d6
    const v2, 0x102035b

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SkyVisualSlidingTab;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    .line 320
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    if-eqz v2, :cond_fc

    .line 322
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-virtual {v2, v4, v4}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 323
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SkyVisualSlidingTab$OnTriggerListener;)V

    .line 324
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-virtual {v2, p0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 325
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    const v3, 0x104033c

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setLeftHintText(I)V

    .line 328
    :cond_fc
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 329
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->updateAudio()V

    .line 331
    const v2, 0x102034d

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSingleClockView:Landroid/widget/RelativeLayout;

    .line 332
    const v2, 0x102034f

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mDualClockView:Landroid/widget/RelativeLayout;

    .line 333
    const v2, 0x1020350

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mDualClock:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    .line 334
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->setRoamingView()V

    .line 336
    const v2, 0x1020351

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAlramLayout:Landroid/widget/LinearLayout;

    .line 338
    const v2, 0x1020354

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mChargingLayout:Landroid/widget/LinearLayout;

    .line 340
    const v2, 0x1020353

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAlramText:Landroid/widget/TextView;

    .line 342
    const v2, 0x1020356

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCahrgingText:Landroid/widget/TextView;

    .line 344
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->refreshAlarmStringAndIcon()V

    .line 352
    const/4 v0, 0x0

    .local v0, i:I
    :goto_161
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1b4

    .line 354
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mIsMissedCallCheckApp:[I

    aget v2, v2, v0

    sget v3, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CHECK_MISSED_CALL:I

    if-ne v2, v3, :cond_180

    .line 355
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v2, :cond_17d

    .line 356
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMissedCallCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SKYVisualBarView;->setMissedCount(I)V

    .line 352
    :cond_17d
    :goto_17d
    add-int/lit8 v0, v0, 0x1

    goto :goto_161

    .line 359
    :cond_180
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mIsMissedCallCheckApp:[I

    aget v2, v2, v0

    sget v3, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CHECK_MISSED_MMS:I

    if-ne v2, v3, :cond_19a

    .line 360
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v2, :cond_17d

    .line 361
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnreadMsgCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SKYVisualBarView;->setMissedCount(I)V

    goto :goto_17d

    .line 364
    :cond_19a
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mIsMissedCallCheckApp:[I

    aget v2, v2, v0

    sget v3, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CHECK_MISSED_E_MAIL:I

    if-ne v2, v3, :cond_17d

    .line 365
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v2, :cond_17d

    .line 366
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnreadEmailCount()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/SKYVisualBarView;->setMissedCount(I)V

    goto :goto_17d

    .line 370
    :cond_1b4
    return-void
.end method

.method private isSilentMode()Z
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isVibMode()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 641
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-ne v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private refreshAlarmStringAndIcon()V
    .registers 4

    .prologue
    .line 1191
    const/4 v0, 0x0

    .line 1192
    .local v0, strNextAlarm:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_b

    .line 1193
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 1196
    :cond_b
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v1, :cond_28

    .line 1197
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->shouldShowBatteryInfo()Z

    move-result v1

    if-nez v1, :cond_28

    .line 1198
    if-eqz v0, :cond_21

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1199
    :cond_21
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAlramLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1207
    :cond_28
    :goto_28
    return-void

    .line 1202
    :cond_29
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAlramText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAlramLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_28
.end method

.method private setDefaultAppTitleURI(ZI)V
    .registers 12
    .parameter "AllItems"
    .parameter "Index"

    .prologue
    const v8, 0x10405c9

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 148
    if-eqz p1, :cond_58

    .line 149
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    const/4 v1, 0x4

    if-ge v0, v1, :cond_63

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 153
    packed-switch v0, :pswitch_data_a2

    .line 149
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 156
    :pswitch_1b
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_18

    .line 160
    :pswitch_28
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto :goto_18

    .line 164
    :pswitch_38
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    goto :goto_18

    .line 168
    :pswitch_48
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    goto :goto_18

    .line 182
    .end local v0           #i:I
    :cond_58
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP:[Ljava/lang/String;

    aget-object v2, v2, p2

    aput-object v2, v1, p2

    .line 184
    packed-switch p2, :pswitch_data_ae

    .line 211
    :cond_63
    :goto_63
    return-void

    .line 187
    :pswitch_64
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    goto :goto_63

    .line 191
    :pswitch_71
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    goto :goto_63

    .line 195
    :pswitch_81
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    goto :goto_63

    .line 199
    :pswitch_91
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10405cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    goto :goto_63

    .line 153
    nop

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_28
        :pswitch_38
        :pswitch_48
    .end packed-switch

    .line 184
    :pswitch_data_ae
    .packed-switch 0x0
        :pswitch_64
        :pswitch_71
        :pswitch_81
        :pswitch_91
    .end packed-switch
.end method

.method private setRoamingView()V
    .registers 4

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mRoamingState:Z

    .line 570
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mRoamingState:Z

    if-nez v0, :cond_1b

    .line 572
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSingleClockView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mDualClockView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 581
    :goto_1a
    return-void

    .line 577
    :cond_1b
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mDualClockView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSingleClockView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mDualClock:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/impl/SkyKeyguardPolicy;->checkShowDualClock(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->setDualClock(Z)V

    goto :goto_1a
.end method

.method private setRoamingView(ZZ)V
    .registers 6
    .parameter "roamingState"
    .parameter "showDualClock"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 588
    if-nez p1, :cond_f

    .line 589
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSingleClockView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mDualClockView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 597
    :goto_e
    return-void

    .line 593
    :cond_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mDualClockView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSingleClockView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 595
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mDualClock:Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->setDualClock(Z)V

    goto :goto_e
.end method

.method private setSilentMode()V
    .registers 4

    .prologue
    .line 660
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->isVibMode()Z

    move-result v0

    .line 661
    .local v0, vibe:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_d

    const/4 v1, 0x2

    :goto_9
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 664
    return-void

    .line 661
    :cond_d
    const/4 v1, 0x1

    goto :goto_9
.end method

.method private startAnimation()V
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->backgroundView:Lcom/android/internal/widget/SkyVisualBackgroundView;

    if-eqz v0, :cond_9

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->backgroundView:Lcom/android/internal/widget/SkyVisualBackgroundView;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->startAnimation()V

    .line 259
    :cond_9
    return-void
.end method

.method private stopAnimation()V
    .registers 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->backgroundView:Lcom/android/internal/widget/SkyVisualBackgroundView;

    if-eqz v0, :cond_9

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->backgroundView:Lcom/android/internal/widget/SkyVisualBackgroundView;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->stopAnimation()V

    .line 267
    :cond_9
    return-void
.end method

.method private updateAudio()V
    .registers 3

    .prologue
    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, nMode:I
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->isVibMode()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 618
    const/4 v0, 0x2

    .line 628
    :goto_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    if-eqz v1, :cond_11

    .line 630
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setRightSlideMode(I)V

    .line 632
    :cond_11
    return-void

    .line 620
    :cond_12
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->isSilentMode()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 622
    const/4 v0, 0x1

    goto :goto_8

    .line 626
    :cond_1a
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method public cleanUp()V
    .registers 8

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 934
    const-string v0, "SkyVisualLockScreen"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v0, :cond_15

    .line 936
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 938
    :cond_15
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 939
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 940
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 943
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->backgroundView:Lcom/android/internal/widget/SkyVisualBackgroundView;

    if-eqz v0, :cond_24

    .line 945
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->backgroundView:Lcom/android/internal/widget/SkyVisualBackgroundView;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualBackgroundView;->cleanView()V

    .line 947
    :cond_24
    iput-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->backgroundView:Lcom/android/internal/widget/SkyVisualBackgroundView;

    .line 949
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v3

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/SKYVisualBarView;->destroy()V

    .line 950
    :cond_33
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v4

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/android/internal/widget/SKYVisualBarView;->destroy()V

    .line 951
    :cond_40
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v5

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/android/internal/widget/SKYVisualBarView;->destroy()V

    .line 952
    :cond_4d
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v6

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/android/internal/widget/SKYVisualBarView;->destroy()V

    .line 954
    :cond_5a
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->destroy()V

    .line 956
    :cond_63
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->cleanUp()V

    .line 958
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->cleanUpCustomResources()V

    .line 959
    return-void
.end method

.method public disableUnlockWidget()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 1126
    const-string v1, "SkyVisualLockScreen"

    const-string v2, "disableUnlockWidget"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, v3, :cond_1b

    .line 1129
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SKYVisualBarView;->setVisibility(I)V

    .line 1128
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1131
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setVisibility(I)V

    .line 1132
    return-void
.end method

.method public enableUnlockWidget()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1116
    const-string v1, "SkyVisualLockScreen"

    const-string v2, "enableUnlockWidget"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1c

    .line 1119
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SKYVisualBarView;->setVisibility(I)V

    .line 1118
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1121
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setVisibility(I)V

    .line 1122
    :cond_25
    return-void
.end method

.method findMissedCheckApp()V
    .registers 7

    .prologue
    .line 374
    const/4 v0, 0x0

    .line 378
    .local v0, currentURISplitSet:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/4 v3, 0x4

    if-ge v2, v3, :cond_115

    .line 380
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mIsMissedCallCheckApp:[I

    const/4 v4, 0x0

    aput v4, v3, v2

    .line 408
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mArrayAppPkgName:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 410
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "com.android.contacts.DialtactsCallLogEntryActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "com.android.contacts.activities.PCUDialtactsActivity"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 414
    :cond_3a
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mIsMissedCallCheckApp:[I

    sget v4, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CHECK_MISSED_CALL:I

    aput v4, v3, v2

    .line 415
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v3, :cond_6c

    .line 416
    const-string v3, "SkyVisualLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missed call!! i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getMissedCallCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_6c
    :goto_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 420
    :cond_6f
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mArrayAppPkgName:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cc

    .line 422
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mIsMissedCallCheckApp:[I

    sget v4, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CHECK_MISSED_MMS:I

    aput v4, v3, v2

    .line 423
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v3, :cond_6c

    .line 424
    const-string v3, "SkyVisualLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missed sms!! i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnreadMsgCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_ad} :catch_ae

    goto :goto_6c

    .line 439
    :catch_ae
    move-exception v1

    .line 442
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SkyVisualLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findMissedCheckApp() Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 427
    .end local v1           #e:Ljava/lang/Exception;
    :cond_cc
    :try_start_cc
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mArrayAppPkgName:[Ljava/lang/String;

    aget-object v3, v3, v2

    const-string v4, "com.android.email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 429
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mIsMissedCallCheckApp:[I

    sget v4, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CHECK_MISSED_E_MAIL:I

    aput v4, v3, v2

    .line 430
    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    if-eqz v3, :cond_6c

    .line 431
    const-string v3, "SkyVisualLockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "missed email!! i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getUnreadEmailCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c

    .line 436
    :cond_10c
    const-string v3, "SkyVisualLockScreen"

    const-string v4, "findMissedCheckApp() : No missed Check App"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_113} :catch_ae

    goto/16 :goto_6c

    .line 446
    :cond_115
    return-void
.end method

.method getAppURINTitle()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 451
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 452
    .local v11, pm:Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 453
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 454
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_237

    .line 456
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    .line 458
    :cond_1d
    :goto_1d
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_233

    .line 460
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    array-length v1, v1

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_29} :catch_1f0

    move-result v2

    if-lt v1, v2, :cond_1d

    .line 464
    :try_start_2c
    const-string v1, "_uri"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 467
    .local v6, CmStr:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput-object v6, v1, v2

    .line 469
    invoke-static {v6}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 470
    .local v10, i2:Landroid/content/Intent;
    const/16 v1, 0x4000

    invoke-virtual {v11, v10, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 472
    .local v12, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mArrayAppPkgName:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 475
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput-object v12, v1, v2

    .line 478
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const-string v2, ""

    if-eq v1, v2, :cond_a2

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_a2

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const-string v2, ""

    if-ne v1, v2, :cond_f4

    .line 482
    :cond_a2
    const-string v1, "SkyVisualLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mAppURI =["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is null, replace default Package name & URI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v1, "SkyVisualLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mAppTitle =["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is null, replace default Package name & URI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v1, 0x0

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->setDefaultAppTitleURI(ZI)V

    .line 487
    :cond_f4
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mArrayAppPkgName:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const-string v2, "com.android.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 489
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 490
    const-string v1, "SkyVisualLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PKG is CONTACTS!! m_sArrayContactsClassName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->m_sArrayContactsClassName:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_13a
    const-string v1, "SkyVisualLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mArrayAppPkgName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mArrayAppPkgName:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput-object v12, v1, v2
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_166} :catch_168

    goto/16 :goto_1d

    .line 498
    .end local v6           #CmStr:Ljava/lang/String;
    .end local v10           #i2:Landroid/content/Intent;
    .end local v12           #s:Ljava/lang/String;
    :catch_168
    move-exception v9

    .line 502
    .local v9, e2:Ljava/lang/Exception;
    :try_start_169
    const-string v1, "SkyVisualLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshTitle Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 505
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->DEFAULT_INTENTURI_APP:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 506
    .restart local v10       #i2:Landroid/content/Intent;
    const/16 v1, 0x4000

    invoke-virtual {v11, v10, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v11}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 509
    .restart local v12       #s:Ljava/lang/String;
    if-nez v12, :cond_1bb

    const-string v1, ""

    if-eq v12, v1, :cond_203

    .line 510
    :cond_1bb
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppTitle:[Ljava/lang/String;

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput-object v12, v1, v2
    :try_end_1c5
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_1c5} :catch_1c7

    goto/16 :goto_1d

    .line 517
    .end local v10           #i2:Landroid/content/Intent;
    .end local v12           #s:Ljava/lang/String;
    :catch_1c7
    move-exception v8

    .line 519
    .local v8, e:Ljava/lang/Exception;
    :try_start_1c8
    const-string v1, "SkyVisualLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshTitle Exception : Default app deleted?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v1, 0x0

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->setDefaultAppTitleURI(ZI)V
    :try_end_1ee
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1ee} :catch_1f0

    goto/16 :goto_1d

    .line 559
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #e2:Ljava/lang/Exception;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    :catch_1f0
    move-exception v8

    .line 560
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v1, "SkyVisualLockScreen"

    const-string v2, "Exception : Content Resolver still not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v1, "SkyVisualLockScreen"

    const-string v2, "replace default Package name & URI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    invoke-direct {p0, v14, v13}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->setDefaultAppTitleURI(ZI)V

    .line 564
    .end local v8           #e:Ljava/lang/Exception;
    :goto_202
    return-void

    .line 513
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v9       #e2:Ljava/lang/Exception;
    .restart local v10       #i2:Landroid/content/Intent;
    .restart local v11       #pm:Landroid/content/pm/PackageManager;
    .restart local v12       #s:Ljava/lang/String;
    :cond_203
    :try_start_203
    const-string v1, "SkyVisualLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mAppTitle =["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is null, replace default Package name & URI"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    const/4 v1, 0x0

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->setDefaultAppTitleURI(ZI)V
    :try_end_231
    .catch Ljava/lang/Exception; {:try_start_203 .. :try_end_231} :catch_1c7

    goto/16 :goto_1d

    .line 526
    .end local v9           #e2:Ljava/lang/Exception;
    .end local v10           #i2:Landroid/content/Intent;
    .end local v12           #s:Ljava/lang/String;
    :cond_233
    :try_start_233
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_202

    .line 530
    :cond_237
    const-string v1, "SkyVisualLockScreen"

    const-string v2, "Visual Hold DB Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v1, "SkyVisualLockScreen"

    const-string v2, "replace default Package name & URI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->setDefaultAppTitleURI(ZI)V
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_233 .. :try_end_24a} :catch_1f0

    goto :goto_202
.end method

.method public needsInput()Z
    .registers 2

    .prologue
    .line 842
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 889
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 891
    const-string v0, "SkyVisualLockScreen"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->updateConfiguration()V

    .line 895
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->startAnimation()V

    .line 897
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter "v"

    .prologue
    .line 996
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1003
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    .line 1011
    :cond_31
    :goto_31
    return-void

    .line 1006
    :catch_32
    move-exception v0

    .line 1009
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SkyVisualLockScreen"

    const-string v2, "onClick - Some View is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 901
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 903
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->updateConfiguration()V

    .line 904
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 6
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 669
    const/4 v1, 0x2

    if-ne p2, v1, :cond_11

    .line 671
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->isVibMode()Z

    move-result v0

    .line 672
    .local v0, nVibMode:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    if-eqz v0, :cond_19

    const v1, 0x10405ce

    :goto_e
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/SkyVisualSlidingTab;->setRightHintText(I)V

    .line 678
    .end local v0           #nVibMode:Z
    :cond_11
    if-eqz p2, :cond_18

    .line 679
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 681
    :cond_18
    return-void

    .line 672
    .restart local v0       #nVibMode:Z
    :cond_19
    const v1, 0x10405cd

    goto :goto_e
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1034
    const/16 v0, 0xfc

    if-ne p1, v0, :cond_7

    .line 1035
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->goToUnlock()V

    .line 1039
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .registers 7

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 849
    const-string v0, "SkyVisualLockScreen"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    if-eqz v0, :cond_14

    .line 852
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    .line 854
    :cond_14
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->stopAnimation()V

    .line 855
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v2

    if-eqz v0, :cond_24

    .line 857
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/internal/widget/SKYVisualBarView;->onPause()V

    .line 859
    :cond_24
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v3

    if-eqz v0, :cond_31

    .line 861
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/SKYVisualBarView;->onPause()V

    .line 864
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v4

    if-eqz v0, :cond_3e

    .line 866
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/android/internal/widget/SKYVisualBarView;->onPause()V

    .line 868
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v5

    if-eqz v0, :cond_4b

    .line 870
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/android/internal/widget/SKYVisualBarView;->onPause()V

    .line 879
    :cond_4b
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mResetSelector:Z

    if-nez v0, :cond_5c

    .line 881
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5c

    .line 883
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->resetSlider()V

    .line 886
    :cond_5c
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 911
    const-string v0, "SkyVisualLockScreen"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    if-eqz v0, :cond_10

    .line 914
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    .line 916
    :cond_10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mResetSelector:Z

    .line 917
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mResetSelector:Z

    if-nez v0, :cond_20

    .line 919
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    if-eqz v0, :cond_20

    .line 921
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->resetSlider()V

    .line 925
    :cond_20
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->startAnimation()V

    .line 926
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->refreshAlarmStringAndIcon()V

    .line 927
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1015
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_20

    .line 1027
    :cond_7
    :goto_7
    const/4 v1, 0x0

    return v1

    .line 1017
    :pswitch_9
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1019
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_7

    .line 1023
    :catch_17
    move-exception v0

    .line 1025
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SkyVisualLockScreen"

    const-string v2, "onTouch - Some View is null or can\'t handling events"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1015
    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_9
    .end packed-switch
.end method

.method public onTrigger(Landroid/view/View;)V
    .registers 14
    .parameter "v"

    .prologue
    const/high16 v11, 0x1020

    const/4 v10, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 703
    const/4 v3, 0x0

    .line 704
    .local v3, intentForAppLaunch:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 706
    .local v0, currentURISplitSet:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v6, v6, v9

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 708
    const-string v6, "SkyVisualLockScreen"

    const-string v7, "mApp[0]"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :try_start_19
    iget-object v6, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 711
    iget-object v6, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_2c
    .catch Ljava/net/URISyntaxException; {:try_start_19 .. :try_end_2c} :catch_172

    move-result-object v0

    .line 775
    :goto_2d
    if-eqz v0, :cond_cb

    .line 776
    const/4 v2, 0x0

    .local v2, i:I
    :goto_30
    array-length v6, v0

    if-ge v2, v6, :cond_cb

    .line 777
    const-string v6, "SkyVisualLockScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v0, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 718
    .end local v2           #i:I
    :cond_50
    iget-object v6, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 720
    const-string v6, "SkyVisualLockScreen"

    const-string v7, "mApp[1]"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :try_start_61
    iget-object v6, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 723
    iget-object v6, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_74
    .catch Ljava/net/URISyntaxException; {:try_start_61 .. :try_end_74} :catch_16f

    move-result-object v0

    goto :goto_2d

    .line 732
    :cond_76
    iget-object v6, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v6, v6, v8

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    .line 734
    const-string v6, "SkyVisualLockScreen"

    const-string v7, "mApp[2]"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    :try_start_87
    iget-object v6, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 737
    iget-object v6, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_9a
    .catch Ljava/net/URISyntaxException; {:try_start_87 .. :try_end_9a} :catch_16c

    move-result-object v0

    goto :goto_2d

    .line 743
    :cond_9c
    iget-object v6, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v6, v6, v10

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c3

    .line 745
    const-string v6, "SkyVisualLockScreen"

    const-string v7, "mApp[3]"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :try_start_ad
    iget-object v6, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-static {v6}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 748
    iget-object v6, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAppURI:[Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_c0
    .catch Ljava/net/URISyntaxException; {:try_start_ad .. :try_end_c0} :catch_169

    move-result-object v0

    goto/16 :goto_2d

    .line 769
    :cond_c3
    const-string v6, "SkyVisualLockScreen"

    const-string v7, "Error there is no view"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_ca
    :goto_ca
    return-void

    .line 781
    :cond_cb
    const/4 v4, 0x0

    .line 782
    .local v4, nActionIndex:I
    const/4 v5, 0x0

    .line 784
    .local v5, nComponentIndex:I
    if-eqz v0, :cond_d7

    .line 785
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getActionIndex([Ljava/lang/String;)I

    move-result v4

    .line 786
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getComponentIndex([Ljava/lang/String;)I

    move-result v5

    .line 789
    :cond_d7
    if-eqz v3, :cond_ca

    .line 793
    if-eqz v0, :cond_fb

    .line 794
    :try_start_db
    aget-object v6, v0, v4

    const-string v7, "action=android.intent.action.EMAIL_FOLDER"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ef

    aget-object v6, v0, v5

    const-string v7, "component=com.android.email/.activity.Welcome"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_105

    .line 797
    :cond_ef
    const-string v6, "SkyVisualLockScreen"

    const-string v7, "trigger E-MAIL!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/high16 v6, 0x3420

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_fb} :catch_13b

    .line 820
    :cond_fb
    :goto_fb
    invoke-virtual {v3, v9}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "null"

    invoke-direct {p0, v6, v7}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->goToUnlock(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ca

    .line 800
    :cond_105
    :try_start_105
    aget-object v6, v0, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "component="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->VISUALHOLD_SMS_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/.ui.EntryActivity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15c

    .line 802
    const-string v6, "SkyVisualLockScreen"

    const-string v7, "trigger MMS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    const/high16 v6, 0x3420

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 804
    const-string v6, "hold_start"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_13a} :catch_13b

    goto :goto_fb

    .line 813
    :catch_13b
    move-exception v1

    .line 816
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "SkyVisualLockScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SetFlag Exception : make Default : ->"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_fb

    .line 808
    .end local v1           #e:Ljava/lang/Exception;
    :cond_15c
    :try_start_15c
    const-string v6, "SkyVisualLockScreen"

    const-string v7, "trigger NOT MMS or E-MAIL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/high16 v6, 0x1020

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_168} :catch_13b

    goto :goto_fb

    .line 749
    .end local v4           #nActionIndex:I
    .end local v5           #nComponentIndex:I
    :catch_169
    move-exception v6

    goto/16 :goto_2d

    .line 738
    :catch_16c
    move-exception v6

    goto/16 :goto_2d

    .line 726
    :catch_16f
    move-exception v6

    goto/16 :goto_2d

    .line 713
    :catch_172
    move-exception v6

    goto/16 :goto_2d
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 5
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 686
    const-string v0, "SkyVisualLockScreen"

    const-string v1, "Slide OnTrigger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v0, 0x1

    if-ne p2, v0, :cond_15

    .line 689
    const-string v0, "SkyVisualLockScreen"

    const-string v1, "unlockscreen"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->goToUnlock()V

    .line 698
    :goto_14
    return-void

    .line 694
    :cond_15
    const-string v0, "SkyVisualLockScreen"

    const-string v1, "Silent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->setSilentMode()V

    .line 696
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->updateAudio()V

    goto :goto_14
.end method

.method public onWindowFocusChanged(Z)V
    .registers 9
    .parameter "hasFocus"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1054
    const-string v0, "SkyVisualLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mResetSelector:Z

    .line 1058
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v3

    if-eqz v0, :cond_31

    .line 1060
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/SKYVisualBarView;->onPause()V

    .line 1062
    :cond_31
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v4

    if-eqz v0, :cond_3e

    .line 1064
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Lcom/android/internal/widget/SKYVisualBarView;->onPause()V

    .line 1066
    :cond_3e
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v5

    if-eqz v0, :cond_4b

    .line 1068
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Lcom/android/internal/widget/SKYVisualBarView;->onPause()V

    .line 1070
    :cond_4b
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v6

    if-eqz v0, :cond_58

    .line 1072
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/android/internal/widget/SKYVisualBarView;->onPause()V

    .line 1075
    :cond_58
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mResetSelector:Z

    if-nez v0, :cond_73

    .line 1076
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->getVisibility()I

    move-result v0

    if-nez v0, :cond_73

    .line 1077
    const-string v0, "SkyVisualLockScreen"

    const-string v1, "resetSlider from onWindowFocusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->updateAudio()V

    .line 1079
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mSlideTab:Lcom/android/internal/widget/SkyVisualSlidingTab;

    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualSlidingTab;->resetSlider()V

    .line 1082
    :cond_73
    return-void
.end method

.method public updateBatteryInfo(ZLjava/lang/String;I)V
    .registers 8
    .parameter "showBatteryInfo"
    .parameter "batteryString"
    .parameter "batteryLevel"

    .prologue
    const/16 v3, 0x8

    .line 1168
    const-string v0, "SkyVisualLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBatteryInfo() showBatteryInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "batteryString = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCahrgingText:Landroid/widget/TextView;

    if-nez v0, :cond_29

    .line 1186
    :goto_28
    return-void

    .line 1175
    :cond_29
    if-eqz p1, :cond_3c

    .line 1176
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mAlramLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1177
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCahrgingText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mChargingLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_28

    .line 1181
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCahrgingText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1182
    iget-object v0, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mChargingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1183
    invoke-direct {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->refreshAlarmStringAndIcon()V

    goto :goto_28
.end method

.method updateConfiguration()V
    .registers 4

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1044
    .local v0, newConfig:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_17

    .line 1045
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v1, :cond_17

    .line 1046
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1, v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    .line 1049
    :cond_17
    return-void
.end method

.method public updateMissedCommInfo(II)V
    .registers 8
    .parameter "whichInfo"
    .parameter "count"

    .prologue
    const/4 v4, 0x4

    .line 1087
    const-string v1, "SkyVisualLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh missed comm info ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    packed-switch p1, :pswitch_data_6c

    .line 1110
    :cond_2c
    return-void

    .line 1096
    :pswitch_2d
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2e
    if-ge v0, v4, :cond_2c

    .line 1097
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mIsMissedCallCheckApp:[I

    aget v1, v1, v0

    sget v2, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CHECK_MISSED_CALL:I

    if-ne v1, v2, :cond_3f

    .line 1098
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/SKYVisualBarView;->setMissedCount(I)V

    .line 1096
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1101
    .end local v0           #i:I
    :pswitch_42
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_43
    if-ge v0, v4, :cond_2c

    .line 1102
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mIsMissedCallCheckApp:[I

    aget v1, v1, v0

    sget v2, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CHECK_MISSED_MMS:I

    if-ne v1, v2, :cond_54

    .line 1103
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/SKYVisualBarView;->setMissedCount(I)V

    .line 1101
    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 1106
    .end local v0           #i:I
    :pswitch_57
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_58
    if-ge v0, v4, :cond_2c

    .line 1107
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mIsMissedCallCheckApp:[I

    aget v1, v1, v0

    sget v2, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->CHECK_MISSED_E_MAIL:I

    if-ne v1, v2, :cond_69

    .line 1108
    iget-object v1, p0, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->mApp:[Lcom/android/internal/widget/SKYVisualBarView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/SKYVisualBarView;->setMissedCount(I)V

    .line 1106
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 1093
    :pswitch_data_6c
    .packed-switch 0x701
        :pswitch_2d
        :pswitch_42
        :pswitch_57
    .end packed-switch
.end method

.method public updateRoamingStateChanged(ZZ)V
    .registers 8
    .parameter "roamingState"
    .parameter "showDualClock"

    .prologue
    .line 1142
    const-string v2, "SkyVisualLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateRoamingStateChanged({) roamingState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "showDualClock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->setRoamingView(ZZ)V

    .line 1150
    if-nez p1, :cond_34

    .line 1151
    const v2, 0x102034e

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/SkyVisualDigitalClock;

    .line 1154
    .local v1, localClock:Lcom/android/internal/widget/SkyVisualDigitalClock;
    invoke-virtual {v1}, Lcom/android/internal/widget/SkyVisualDigitalClock;->updateTime()V

    .line 1162
    .end local v1           #localClock:Lcom/android/internal/widget/SkyVisualDigitalClock;
    :goto_33
    return-void

    .line 1156
    :cond_34
    const v2, 0x1020350

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/SkyVisualLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SkyVisualDualDigitalClock;

    .line 1159
    .local v0, dualClock:Lcom/android/internal/widget/SkyVisualDualDigitalClock;
    invoke-virtual {v0}, Lcom/android/internal/widget/SkyVisualDualDigitalClock;->updateTime()V

    goto :goto_33
.end method

.method public updateSimStateChanged(Lcom/android/internal/policy/impl/KeyguardStatusViewManager$StatusMode;)V
    .registers 4
    .parameter "statusMode"

    .prologue
    .line 1136
    const-string v0, "SkyVisualLockScreen"

    const-string v1, "updateSimStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    return-void
.end method
